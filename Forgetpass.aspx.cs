using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Collections.Specialized;
using System.Net.Mail;
using System.Text;



namespace andrewscanteensystem
{
    public partial class Forgetpass : System.Web.UI.Page
    {
        static String decryptedpwd;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String mobile;

            String password;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);
            String myquery = "Select * from StudentLogin where Id='" + TextBox1.Text + "'";
           
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //Label3.Text = "Data Found";
                mobile = ds.Tables[0].Rows[0]["Phone"].ToString();
                password = ds.Tables[0].Rows[0]["Stpassword"].ToString();
                decryptpwd(password);

                sendpassword(mobile, decryptedpwd, TextBox1.Text);

            }
            else
            {
                Label1.Text = "Your Username is Not Valid";

            }
            con.Close();
        }

        private void sendpassword(String mobileno, String password1, String username)
        {

            string message = "Hi " + username + " , Your Password is " + password1 + " .(St Andrew's Canteen)";

            String message1 = HttpUtility.UrlEncode(message);
            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "WtFSqffEaF8-ORXJumfQmQad4b3t27MQOlyvR2PjAn"},
                {"numbers" , mobileno},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
                string result = System.Text.Encoding.UTF8.GetString(response);
                string mobilelast = "*******" + mobileno.Substring(8);
                Label1.Text = "Your Password Has Been Sent to Registered Mobile Number " + mobilelast;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String passwor;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);
            String myquery = "Select * from StudentLogin where Id='" + TextBox1.Text + "' and Email='" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //Label3.Text = "Data Found";

                passwor = ds.Tables[0].Rows[0]["Stpassword"].ToString();
                decryptpwd(passwor);

                sendpassworde(decryptedpwd, TextBox2.Text);
                Label2.Text = "Your Password Has Been Sent to Registered Email Address. Check Your Mail Inbox";

            }
            else
            {
                Label2.Text = "Your Username is Not Valid or Email Not Registered";

            }
            con.Close();
        }
        private void sendpassworde(String password, String email)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("andrewscanteen@gmail.com", "andrewscanteen37");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Forgot Password ( St. Andrews Canteen)";
            msg.Body = "Dear " + TextBox1.Text + ", Your Password is  " + password + "\n\n\nThanks & Regards\nSt. Andrew's Canteen";
            string toaddress = TextBox2.Text;
            msg.To.Add(toaddress);
            string fromaddress = "andrewscanteen@gmail.com";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);


            }
            catch
            {
                throw;
            }
        }
        private void decryptpwd(String encrytpwd)
        {
            string decryptpwd = string.Empty;
            UTF8Encoding encodepwd = new UTF8Encoding();
            Decoder Decode = encodepwd.GetDecoder();
            byte[] todecode_byte = Convert.FromBase64String(encrytpwd);
            int charCount = Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
            char[] decoded_char = new char[charCount];
            Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
            decryptpwd = new String(decoded_char);
            decryptedpwd = decryptpwd;

        }
    }
}