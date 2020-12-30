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
    public partial class feedback : System.Web.UI.Page
    {
        static int complaintid;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcomplaintid();
            Label1.Text = DateTime.Now.ToLongDateString().ToString() + " " + DateTime.Now.ToLongTimeString().ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String query = "insert into feedback(id,date,name,email,feedcomp,status) values(" + complaintid + ",'" + Label1.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','Under Processing')";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);
            
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            TextBox1.Text = "";
            TextBox2.Text = "";
            Label2.Text = "Your Feedback/Complaint ID is " + complaintid + " . You can Check the Status of Feedback/Complaint Using this ID.";
        }

        public void getcomplaintid()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);

            String myquery = "select id from feedback";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            if (ds.Tables[0].Rows.Count < 1)
            {
                complaintid = 10001;

            }
            else
            {



                SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);

                String myquery1 = "select max(id) from feedback";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = con1;
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                int a;
                a = Convert.ToInt16(ds1.Tables[0].Rows[0][0].ToString());
                a = a + 1;
                complaintid = a;
                con1.Close();
            }

        }


    }

}