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
    public partial class Coupon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getcomplaintid();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);
            con.Open();
            string ins = "insert into coupondetails (couponid,couponcode,discount,maxdiscount,tilldate) values(@id,@code,@disc,@maxdisc,@tilldate)";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.Parameters.AddWithValue("@id", Label1.Text);
            cmd.Parameters.AddWithValue("@code", TextBox1.Text);
            cmd.Parameters.AddWithValue("@disc", TextBox2.Text);
            cmd.Parameters.AddWithValue("@maxdisc", TextBox3.Text);
            cmd.Parameters.AddWithValue("@tilldate",Convert.ToDateTime(TextBox4.Text));
            getcomplaintid();
           

            cmd.ExecuteNonQuery();


            con.Close();
            Label2.Text = "Coupon has been entered successfully.";
        }
        public void getcomplaintid()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);

            String myquery = "select couponid from coupondetails";
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
                Label1.Text = "1001";

            }
            else
            {



                SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);

                String myquery1 = "select max(couponid) from coupondetails";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = con1;
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                Label1.Text = ds1.Tables[0].Rows[0][0].ToString();
                int a;
                a = Convert.ToInt16(Label1.Text);
                a = a + 1;
                Label1.Text = a.ToString();
                con1.Close();
            }

        }
    }
}