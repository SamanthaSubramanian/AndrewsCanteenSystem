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
    public partial class orders : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
            Session["addproduct"] = "false";


            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];

            if (Request.QueryString["cat"] != null)

            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource2;
                DataList1.DataBind();
            }

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "addtocart")
            {

                DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("addtocart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());

            }

            Session["addproduct"] = "true";


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataList1.DataSourceID = null;
            if (DropDownList3.SelectedItem.Text == "Low to High Price")
            {

                DataList1.DataSource = SqlDataSource1;
                DataList1.DataBind();

            }
            else if (DropDownList3.SelectedItem.Text == "High to Low Price")
            {

                DataList1.DataSource = SqlDataSource3;
                DataList1.DataBind();

            }
            else 
            {

                DataList1.DataSource = SqlDataSource2;
                DataList1.DataBind();

            }

           




        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource5;
                DataList1.DataBind();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource2;
            DataList1.DataBind();

        }

    }
}