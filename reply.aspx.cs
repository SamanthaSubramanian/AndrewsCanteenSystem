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
    public partial class reply : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                int complaintid = Convert.ToInt32(Request.QueryString["id"].ToString());
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);
                String myquery = "Select * from feedback where id=" + complaintid;
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Label1.Text = "Data Found";
                    Label1.Text = ds.Tables[0].Rows[0]["id"].ToString();
                    Label2.Text = ds.Tables[0].Rows[0]["date"].ToString();
                    Label3.Text = ds.Tables[0].Rows[0]["name"].ToString();
                    Label4.Text = ds.Tables[0].Rows[0]["feedcomp"].ToString();
                    Label5.Text = ds.Tables[0].Rows[0]["status"].ToString();
                }
                else
                {
                    Response.Redirect("feedbackadmin.aspx");

                }
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);
            String updatedata = "Update feedback set status='Processed'" + ", reply='" + TextBox1.Text + "' where id=" + Label1.Text;
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label6.Text = "Reply Has Been Processed Properly";
        }
    }
}