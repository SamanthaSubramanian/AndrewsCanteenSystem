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
    public partial class changepass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);

            String myquery = "select * from Studentlogin";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            String pass;
            pass = ds.Tables[0].Rows[0]["Stpassword"].ToString();
            con.Close();
            if (pass == TextBox1.Text)
            {
                if (TextBox2.Text == TextBox3.Text && TextBox2.Text != "")
                {
                    String updatepass = "update Studentlogin set Stpassword='" + TextBox2.Text + "' where Id='" + TextBox4.Text + "'";
                    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);

                    con1.Open();
                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.CommandText = updatepass;
                    cmd1.Connection = con1;
                    cmd1.ExecuteNonQuery();
                    con1.Close();
                }
                else
                {
                    Label2.Text = "New Password and Re-enter Password Not Matched / Blank Password Not Accepted";
                }
            }
            else
            {
                Label2.Text = "Invalid Username or Password - Cannot Change Password with User Authentication";
            }
        }
    }
}