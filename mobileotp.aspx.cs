using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Collections.Specialized;

namespace andrewscanteensystem
{
    public partial class mobileotp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Request.QueryString["mobile"];
            Random random = new Random();
            int value = random.Next(1001, 9999);
            string des = Label1.Text;
            string message = "Your OTP Number is " + value;
            String message1 = HttpUtility.UrlEncode(message);
            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "07BwCUeeA0s-dHkltsDiMxFzpF254j8IYgBcJj4kSo"},
                {"numbers" , des},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
                string result = System.Text.Encoding.UTF8.GetString(response);
                Session["otp"] = value;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if(TextBox2.Text == Session["otp"].ToString())
            {
                Response.Redirect("Regsucc.aspx");
            }
            else
            { Label2.Text = "Otp not correct"; }
        }
    }
}