using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppEcommerce
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            lblinsert.Visible = true;
            string sel = "select max(Reg_id) from Login_Tab";
            string maxregid = clsobj.fn_Scalar(sel);
            int reg_id;
            if (maxregid == "")
            {
                reg_id = 1;
            }
            else
            {
                reg_id = Convert.ToInt32(maxregid) + 1;
            }
            string ins = "insert into Admin_Tab values("+reg_id+",'"+txtname.Text+"','"+txtemail.Text+"','"+txtph.Text+"')";
            int i = clsobj.fn_NonQuery(ins);
            string inslog = "insert into Login_Tab values(" + reg_id + ",'" + txtuserna.Text + "','" + txtpass.Text + "','admin')";
            if (i == 1)
            {
                int j = clsobj.fn_NonQuery(inslog);
                if (j == 1)
                {
                    lblinsert.Text = "Successfully Registered";
                }
                else
                {
                    lblinsert.Text = "Registration failed";
                }

            }
            
        }
    }
}