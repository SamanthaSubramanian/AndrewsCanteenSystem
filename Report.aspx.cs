using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


namespace andrewscanteensystem
{
    public partial class checktransaction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);
            String myquery = "select orderid, convert(varchar, cast(convert(varchar(10), dateoforder, 110) as datetime), 106) as dateoforder, " +
                "productname, totprice from orderdetails where month(dateoforder)=" + DropDownList1.SelectedItem.Value + " " +
                "and year(dateoforder)=" + TextBox1.Text;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();

            con.Close();
            GridView1.FooterRow.Cells[2].Text = "Total Amount";
            GridView1.FooterRow.Cells[3].Text = dt.Compute("Sum(totprice)", "").ToString();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", string.Format("attachment; filename={0}", "TransactionDetail.xls"));
            Response.ContentType = "application/ms-excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            GridView1.AllowPaging = false;
            GridView1.HeaderRow.Style.Add("background-color", "#FFFFFF");
            for (int i = 0; i < GridView1.HeaderRow.Cells.Count; i++)
            {
                GridView1.HeaderRow.Cells[i].Style.Add("background-color", "#507CD1");
            }
            int j = 1;
            foreach (GridViewRow gvrow in GridView1.Rows)
            {
                gvrow.BackColor = System.Drawing.Color.White;
                if (j <= GridView1.Rows.Count)
                {
                    if (j % 2 != 0)
                    {
                        for (int k = 0; k < gvrow.Cells.Count; k++)
                        {
                            gvrow.Cells[k].Style.Add("background-color", "#EFF3FB");
                        }
                    }
                }
                j++;
            }
            GridView1.RenderControl(htw);
            Response.Write(sw.ToString());
            Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);
            String myquery = "select Id, Firstname,Lastname,Course,Phone,Email,Stpassword from Studentlogin";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(dt);

            GridView3.DataSource = dt;
            GridView3.DataBind();

            con.Close();
           
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", string.Format("attachment; filename={0}", "StudentDetail.xls"));
            Response.ContentType = "application/ms-excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            GridView3.AllowPaging = false;
            GridView3.HeaderRow.Style.Add("background-color", "#FFFFFF");
            for (int i = 0; i < GridView3.HeaderRow.Cells.Count; i++)
            {
                GridView3.HeaderRow.Cells[i].Style.Add("background-color", "#507CD1");
            }
            int j = 1;
            foreach (GridViewRow gvrow in GridView3.Rows)
            {
                gvrow.BackColor = System.Drawing.Color.White;
                if (j <= GridView3.Rows.Count)
                {
                    if (j % 2 != 0)
                    {
                        for (int k = 0; k < gvrow.Cells.Count; k++)
                        {
                            gvrow.Cells[k].Style.Add("background-color", "#EFF3FB");
                        }
                    }
                }
                j++;
            }
            GridView3.RenderControl(htw);
            Response.Write(sw.ToString());
            Response.End();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);
            String myquery = "select fullname,password,phone,email from Stafflog";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(dt);

            GridView2.DataSource = dt;
            GridView2.DataBind();

            con.Close();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);
            String myquery = "select orderid, sno,productname,price,quantity,dateoforder,totprice,disprice from orderdetails";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(dt);

            GridView4.DataSource = dt;
            GridView4.DataBind();

            con.Close();
            GridView4.FooterRow.Cells[5].Text = "  Total Amount: ";
            GridView4.FooterRow.Cells[6].Text = dt.Compute("   Sum(totprice)", "").ToString();

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", string.Format("attachment; filename={0}", "StaffDetails.xls"));
            Response.ContentType = "application/ms-excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            GridView2.AllowPaging = false;
            GridView2.HeaderRow.Style.Add("background-color", "#FFFFFF");
            for (int i = 0; i < GridView2.HeaderRow.Cells.Count; i++)
            {
                GridView2.HeaderRow.Cells[i].Style.Add("background-color", "#507CD1");
            }
            int j = 1;
            foreach (GridViewRow gvrow in GridView2.Rows)
            {
                gvrow.BackColor = System.Drawing.Color.White;
                if (j <= GridView2.Rows.Count)
                {
                    if (j % 2 != 0)
                    {
                        for (int k = 0; k < gvrow.Cells.Count; k++)
                        {
                            gvrow.Cells[k].Style.Add("background-color", "#EFF3FB");
                        }
                    }
                }
                j++;
            }
            GridView2.RenderControl(htw);
            Response.Write(sw.ToString());
            Response.End();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", string.Format("attachment; filename={0}", "OrderDetails.xls"));
            Response.ContentType = "application/ms-excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            GridView4.AllowPaging = false;
            GridView4.HeaderRow.Style.Add("background-color", "#FFFFFF");
            for (int i = 0; i < GridView4.HeaderRow.Cells.Count; i++)
            {
                GridView4.HeaderRow.Cells[i].Style.Add("background-color", "#507CD1");
            }
            int j = 1;
            foreach (GridViewRow gvrow in GridView4.Rows)
            {
                gvrow.BackColor = System.Drawing.Color.White;
                if (j <= GridView4.Rows.Count)
                {
                    if (j % 2 != 0)
                    {
                        for (int k = 0; k < gvrow.Cells.Count; k++)
                        {
                            gvrow.Cells[k].Style.Add("background-color", "#EFF3FB");
                        }
                    }
                }
                j++;
            }
            GridView4.RenderControl(htw);
            Response.Write(sw.ToString());
            Response.End();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            GridView3.Visible = false;
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            GridView2.Visible = false;
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            GridView4.Visible = false;
        }
    }
}
