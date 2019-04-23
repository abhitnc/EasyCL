using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

public partial class ChangePass : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private string Encryptdata(string password)
    {
        string strmsg = string.Empty;
        byte[] encode = new byte[password.Length];
        encode = Encoding.UTF8.GetBytes(password);
        strmsg = Convert.ToBase64String(encode);
        return strmsg;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strpassword = Encryptdata(ppass.Text);
        string strpassword1 = Encryptdata(npass.Text);
        string id = Convert.ToString(Session["id"]);
        Label1.Text = id;
        SqlConnection con = new SqlConnection(constr);
        con.Open();

        SqlCommand cmd = new SqlCommand("select * from logintable where email=@ID and password=@Password", con);
        cmd.Parameters.AddWithValue("@Id", id);
        cmd.Parameters.AddWithValue("@Password", ppass.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            string sql1 = "Update logintable set password='" + npass.Text.Trim() + "' where email='" + id + "'";
            SqlCommand cmd1 = new SqlCommand(sql1, con);
            cmd1.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('password updated')</script>");

        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('old password doesnot match')</script>");

        }
    }

}