using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Configuration;
public partial class SignUp : System.Web.UI.Page
{
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


    protected void reg_Click1(object sender, EventArgs e)
    {
        string strpassword = Encryptdata(pass.Text);
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection2"].ConnectionString);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "insert into SignUp(User_Name,User_Num,User_Email,User_Pass) values ('" + name.Text + "','" + number.Text + "','" + email.Text + "','" + strpassword + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("SignIn.aspx");
    }
}