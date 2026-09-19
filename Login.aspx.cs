using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppEcommerce
{
    public partial class Login : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            lblLogin.Visible = true;
            string l = "select count(Reg_id) from Login_Tab where Username='" + txtuna.Text + "' and Password='" + txtpwd.Text + "'";
            string cid = clsobj.fn_Scalar(l);
            int cid1 = Convert.ToInt32(cid);
            if (cid1 == 1)
            {
                string sel = "select Reg_id from Login_Tab where Username='" + txtuna.Text + "' and Password='" + txtpwd.Text + "'";
                string regid = clsobj.fn_Scalar(sel);
                Session["userid"] = Convert.ToInt32(regid);
                string sellog = "select Log_type from Login_Tab where Username='" + txtuna.Text + "' and Password='" + txtpwd.Text + "'";
                string logtype = clsobj.fn_Scalar(sellog);
                if (logtype == "admin")
                {
                    Response.Redirect("AdminHome.aspx");
                }
                else if (logtype == "user")
                {
                    string stat = "select User_status from User_Tab where User_id=" + Convert.ToInt32(regid) + "";
                    string status = clsobj.fn_Scalar(stat);
                    if (status == "inactive")
                    {
                        lblLogin.Text = "Your account has been blocked by the Admin";
                    }
                    else
                    {
                        Response.Redirect("UserHome.aspx");
                    }
                    
                }

            }
            else
            {
                lblLogin.Text = "Login Failed";
            }
        }
    }
}