using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Text;
using System.Web.Services;
using System.Net;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string message = "";
        foreach (ListItem item in checkboxlist1.Items)
        {
            if (item.Selected)
            {
                message += item.Text + " ";
            }
        }
        string[] mes = message.Split(' ');
        
        foreach (var i in mes)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select RName,Ingre1 from Recipe", con);      
            
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}