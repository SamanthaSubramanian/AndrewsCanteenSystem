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
    public partial class WebForm2 : System.Web.UI.Page
    {
        static String decryptedpwd;

        protected void Page_Load(object sender, EventArgs e)
        {
            


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentlogConnectionString"].ConnectionString);

            String myquery = "select * from Studentlogin where Id='" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
                                    cmd.Connection = con;

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            String uname;
            String pass;

            if (ds.Tables[0].Rows.Count > 0)
            {
                uname = ds.Tables[0].Rows[0]["Id"].ToString();
                pass = ds.Tables[0].Rows[0]["Stpassword"].ToString();

                con.Close();
                decryptpwd(pass);
                if (uname == TextBox1.Text && decryptedpwd == TextBox2.Text)
                {
                    Response.Redirect("main.aspx");
                }
                else
                {
                    Label1.Text = "Invalid Login Details. Try to enter Username/password Carefully";
                }

            }
            else
            {
                Label1.Text = "Invalid Login Details. Try to enter Username/password Carefully";
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