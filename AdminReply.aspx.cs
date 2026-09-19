using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace WebAppEcommerce
{
    public partial class AdminReply : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int fid = Convert.ToInt32(Session["feedid"]);
                string s = "select u.Name,u.Email from User_Tab u join Feedback_Tab f on u.User_id=f.User_id where f.Feed_id=" + fid + "";
                SqlDataReader dr = clsobj.fn_Reader(s);
                while (dr.Read())
                {
                    txtname.Text = dr["Name"].ToString();
                    txtemail.Text = dr["Email"].ToString();
                }
            }
        }
        public static void SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)

        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void btnReply_Click(object sender, EventArgs e)
        {
            string name = txtname.Text;
            string email = txtemail.Text;
            string subject = txtsub.Text;
            string body = txtreply.Text;

            SendEmail2(
                "Admin",
                "sandraprojects00@gmail.com",
                "bdxe lrcb wzoz gbgy",
                name,
                email,
                subject,
                body);
            int fid = Convert.ToInt32(Session["feedid"]);
            string upd = "update Feedback_Tab set Reply_msg='" + body + "',Feed_status='replied' where Feed_id=" + fid + "";
            clsobj.fn_NonQuery(upd);
            lblmsg.Text = "Mail sent successfully!";

        }
    }
}