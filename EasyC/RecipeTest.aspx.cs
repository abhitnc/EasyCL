using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class RecipeTest : System.Web.UI.Page
{
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "addtocart")
        {
            Response.Redirect("s2nCart.aspx?id=" + e.CommandArgument.ToString());

        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.BindGrid();
            this.SearchCustomers();
        }
    }
    private void BindGrid()
    {
        string country = rblCountries.SelectedItem.Value;
        string sql = "SELECT * FROM stock WHERE Category=@Category OR @Category = ''";
        string constr = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand(sql))
            {
                cmd.Parameters.AddWithValue("@Category", country);
                cmd.Connection = con;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        DataList1.DataSource = dt;
                        DataList1.DataBind();
                    }
                }
            }
        }
    }

    protected void Country_Selected(object sender, EventArgs e)
    {
        this.BindGrid();
    }

    private void SearchCustomers()
    {
        string constr = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                string sql = "SELECT * FROM [stock]";
                if (!string.IsNullOrEmpty(txtSearch.Text.Trim()))
                {
                    sql += " WHERE Name LIKE @Name + '%'";
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