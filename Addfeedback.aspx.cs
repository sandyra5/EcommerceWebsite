using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppEcommerce
{
    public partial class Addfeedback : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            int pdtid = Convert.ToInt32(Session["feedpid"]);
            string pna = "select Product_name from Product_Tab where Product_id=" + pdtid + "";
            string proname = clsobj.fn_Scalar(pna);
            lblpdtname.Text = proname;
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32(Session["userid"]);
            int pdtid = Convert.ToInt32(Session["feedpid"]);
           
            string ins = "insert into Feedback_Tab values("+uid+","+pdtid+",'"+txtfeed.Text+"','','send')";

            clsobj.fn_NonQuery(ins);

            Response.Redirect("Feedback.aspx");
        }
    }
}