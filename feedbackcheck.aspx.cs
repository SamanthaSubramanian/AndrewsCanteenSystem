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
    public partial class feedbackcheck : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);
                String myquery = "Select * from feedback where id=" + TextBox1.Text;
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Label1.Text = "Particular Feedback ID Found";
                    Label2.Text = "Your Registered Feedback ID is " + ds.Tables[0].Rows[0]["id"].ToString();
                    Label3.Text = "Status of Your Registered Feedback: " + ds.Tables[0].Rows[0]["status"].ToString();
                    if (ds.Tables[0].Rows[0]["status"].ToString() == "Under Processing")
                    {
                        Panel1.Visible = false;
                    }
                    else
                    {
                        Panel1.Visible = true;
                        Label4.Text = "Admin Reply : " + ds.Tables[0].Rows[0]["reply"].ToString();
                    }
                }
                else
                {
                    Label1.Text = "Particular Complaint ID Not Found";
                    Label2.Text = "";
                    Label3.Text = "";
                    Panel1.Visible = false;
                }
                con.Close();
            }
        }
    }
}