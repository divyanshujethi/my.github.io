using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DivyanshuJethi.Forms
{
    public partial class forgetotp : System.Web.UI.Page
    {
        public string X { get; set; }
        public string z { get; set; }
        public string Y { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["emailid"] = emailadress.Value    ;
            
            Random r = new Random();
            string otp = r.Next(10001, 99999).ToString();
            Session["otp"] = otp;
            
            try
            {
                using (MailMessage mm = new MailMessage("luzdivinanube@gmail.com", Session["emailid"].ToString()))
                {

                    mm.Subject = "One Time Password";
                    string msg = "Your One Time Password is : " + otp;
                    mm.Body = msg.ToString();
                    mm.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp-relay.sendinblue.com";
                    smtp.EnableSsl = true;
                    NetworkCredential netCred = new NetworkCredential("luzdivinanube@gmail.com", "aXCn5tNRIxHEf9pG");
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = netCred;
                    smtp.Port = 587;
                    smtp.Send(mm);
                    X = "Otp Sucessfully Send";
                }
            }
            catch (Exception ex)
            {
                z = Session["emailid"].ToString();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (otpnow.Text == Session["otp"].ToString())
            {
                Response.Redirect("forget.aspx");
            }
            else
            {
                Y = "Otp Invalid!";
            }

        }
    }
}