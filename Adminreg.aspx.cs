using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

namespace andrewscanteensystem
{
    public partial class Adminreg : System.Web.UI.Page
    {
        String encrypwd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            captcha1.ValidateCaptcha(TextBox8.Text.Trim());
            if (captcha1.UserValidated)
            {
                encryption1();
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);
                con.Open();
                string ins = "insert into Adminlogin (fullname,Phone,email,Password) values(@fname,@phone,@email,@pass)";
                SqlCommand cmd = new SqlCommand(ins, con);
                cmd.Parameters.AddWithValue("@fname", TextBox1.Text);
                cmd.Parameters.AddWithValue("@phone", TextBox6.Text);
                cmd.Parameters.AddWithValue("@email", TextBox7.Text);
                cmd.Parameters.AddWithValue("@pass", encrypwd);



                cmd.ExecuteNonQuery();


                Response.Redirect("regsuccadmin.aspx");
                con.Close();
            }
            else
            {

                Label1.Text = "Enter Correct Captcha Text";
            }
        }
        public void encryption1()
        {
            string strmsg = string.Empty;
            byte[] encode = new byte[TextBox2.Text.ToString().Length];
            encode = Encoding.UTF8.GetBytes(TextBox2.Text);
            strmsg = Convert.ToBase64String(encode);
            encrypwd = strmsg;
        }


    }
}