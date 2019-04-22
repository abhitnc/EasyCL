using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class testShow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.SearchCustomers();
        }


    }

    private void SearchCustomers()
    {
        string constr = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                string sql = "SELECT * FROM [Recipe]";
                if (!string.IsNullOrEmpty(txtSearch.Text.Trim()))
                {
                    sql += " WHERE RName LIKE @Name + '%'";
                    cmd.Parameters.AddWithValue("@Name", txtSearch.Text.Trim());
                }
                cmd.CommandText = sql;
                cmd.Connection = con;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    DataList1.DataSource = dt;
                    DataList1.DataBind();
                }
            }
        }
    }
    protected void Search(object sender, EventArgs e)
    {
        this.SearchCustomers();
    }
    protected void OnPaging(object sender, GridViewPageEventArgs e)
    {

        this.SearchCustomers();
    }
}