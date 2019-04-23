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

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

    protected void reg_Click1(object sender, EventArgs e)
    {
        string strpassword = Encryptdata(pass.Text);
        string abc = "0";
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into SignUp(User_Name,User_Num,User_Email,User_Pass) values ('" + name.Text + "','" + number.Text + "','" + email.Text + "','" + pass.Text + "')", con);
        SqlCommand cmd1 = new SqlCommand("insert into logintable(email,password,password_change_status) values('" + email.Text + "','" + pass.Text + "','" + abc + "')", con);
        cmd.ExecuteNonQuery();
        cmd1.ExecuteNonQuery();
        con.Close();
        Response.Redirect("SignIn.aspx");

    }
}