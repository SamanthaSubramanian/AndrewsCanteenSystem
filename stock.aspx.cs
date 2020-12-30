using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace andrewscanteensystem
{
    public partial class stock : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            Label10.Text = "";
            GridView1.EditRowStyle.BackColor = System.Drawing.Color.IndianRed;

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            Label10.Text = "";
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label productid = GridView1.Rows[e.RowIndex].FindControl("Label9") as Label;
            TextBox name = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            TextBox price = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
            TextBox category = GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
            TextBox keyword = GridView1.Rows[e.RowIndex].FindControl("TextBox18") as TextBox; 
            TextBox image = GridView1.Rows[e.RowIndex].FindControl("TextBox20") as TextBox;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);
            String updatedata = "Update product set productname='" + name.Text + "', price='" + price.Text + "', Category='" + category.Text + "', " +
                "KeywordSearch='" + keyword.Text + "',  image='" + image.Text + "' where productid=" + productid.Text;
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label10.Text = "Row Data Has Been Updated Successfully";
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            TextBox productid = GridView1.FooterRow.FindControl("TextBox8") as TextBox;
            TextBox name = GridView1.FooterRow.FindControl("TextBox9") as TextBox;
            TextBox price= GridView1.FooterRow.FindControl("TextBox10") as TextBox;
            TextBox category = GridView1.FooterRow.FindControl("TextBox11") as TextBox;
            TextBox keyword = GridView1.FooterRow.FindControl("TextBox19") as TextBox;
            
            TextBox image = GridView1.FooterRow.FindControl("TextBox21") as TextBox;




            String query = "insert into product(productid,productname,price,Category,KeywordSearch,image)" +
                " values(" + productid.Text + ",'" + name.Text + "','" + price.Text + "','" + category.Text + "','" + keyword.Text + "'" +
                ",'" + image.Text + "')";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);

            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label10.Text = "New Row Inserted Successfully";
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label productid = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);
            String updatedata = "delete from product where productid=" + productid.Text;
            
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label10.Text = "Row Data Has Been Deleted Successfully";
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
    }
}