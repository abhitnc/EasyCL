using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpPostedFile postedFile = FileUpload1.PostedFile;
        string filename = Path.GetFileName(postedFile.FileName);
        postedFile.SaveAs(Server.MapPath("~/stockimg/") + filename);

        string fileExtension = Path.GetExtension(filename);
        int fileSize = postedFile.ContentLength;

        if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
            || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp")
        {
            Stream stream = postedFile.InputStream;
            BinaryReader binaryReader = new BinaryReader(stream);
            Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);


            string cs = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spUploadImage", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter paramName = new SqlParameter()
                {
                    ParameterName = @"Name",
                    Value = TextBox1.Text
                };
                cmd.Parameters.Add(paramName);
                SqlParameter paramimgName = new SqlParameter()
                {
                    ParameterName = @"fname",
                    Value = "stockimg/" + filename
                };
                cmd.Parameters.Add(paramimgName);
                SqlParameter paramSize = new SqlParameter()
                {
                    ParameterName = "@Price",
                    Value = TextBox3.Text
                };
                cmd.Parameters.Add(paramSize);

                SqlParameter paramImageData = new SqlParameter()
                {
                    ParameterName = "@Images",
                    Value = FileUpload1.HasFile
                };
                cmd.Parameters.Add(paramImageData);
                SqlParameter paramDetails = new SqlParameter()
                {
                    ParameterName = "@Details",
                    Value = TextBox2.Text
                };
                cmd.Parameters.Add(paramDetails);
                SqlParameter paramCategory = new SqlParameter()
                {
                    ParameterName = "@Category",
                    Value = DropDownList1.Text
                };
                cmd.Parameters.Add(paramCategory);

                SqlParameter paramNewId = new SqlParameter()
                {
                    ParameterName = "@NewId",
                    Value = -1,
                    Direction = ParameterDirection.Output
                };
                cmd.Parameters.Add(paramNewId);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();


                HyperLink1.Visible = true;
                HyperLink1.Text = "Add another recipe";
                HyperLink1.NavigateUrl = "~/test.aspx";
            }
        }
        else
        {
            Label1.Visible = true;
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Only images (.jpg, .png, .gif and .bmp) can be uploaded";
            HyperLink1.Visible = false;
        }
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Image uploaded successfully')</script>");
    }
}