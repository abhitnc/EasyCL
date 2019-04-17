using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdatePass : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(constr);
        //String Name = Convert.ToString(Session["id"]);
        String Name1 = "abc@xyz.com";
        con.Open();
        string sql = "select * from SignUp where User_Email='" + Name1 + "'";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader rdr = cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
        rdr.Read();
        name.Text = rdr[1].ToString();
        phone.Text = rdr[2].ToString();
        email.Text = rdr[3].ToString();
        rdr.Close();
        con.Close();
    }

    protected void update_Click(object sender, EventArgs e)
    {
        name.Enabled = true;
        phone.Enabled = true;
        email.Enabled = true;
        Textbox1.Enabled = true;
        TextBox2.Enabled = true;
        TextBox3.Enabled = true;
        done.Visible = true;
        update.Visible = false;
    }

    protected void done_Click(object sender, EventArgs e)
    {
        string names = name.Text.Trim();
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd1 = new SqlCommand("update SignUp set User_Name='" + name.Text.Trim() + "',User_Email='" + email.Text.Trim() + "',User_Num='" + phone.Text.Trim() + "' where User_Name='" + names + "'", con);
        cmd1.ExecuteNonQuery();
        con.Close();
        name.Enabled = false;
        phone.Enabled = false;
        email.Enabled = false;

        Textbox1.Enabled = false;
        TextBox2.Enabled = false;
        TextBox3.Enabled = false;
        done.Visible = false;
        update.Visible = true;
        Response.Redirect("index.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        name.Visible = false;
        Textbox1.Visible = true;
        Button1.Visible = false;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        email.Visible = false;
        TextBox2.Visible = true;
        Button2.Visible = false;
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        phone.Visible = false;
        TextBox3.Visible = true;
        Button3.Visible = false;
    }
}