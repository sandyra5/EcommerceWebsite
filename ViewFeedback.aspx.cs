using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace WebAppEcommerce
{
    public partial class ViewFeedback : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from Feedback_Tab where Feed_status='send'";
                DataSet ds = clsobj.fn_Adapter_Dataset(s);
                GridViewFeedback.DataSource = ds;
                GridViewFeedback.DataBind();
            }
        }

        protected void LinkButtonReply_Command(object sender, CommandEventArgs e)
        {
            int fid = Convert.ToInt32(e.CommandArgument);
            Session["feedid"] = fid;
            Response.Redirect("AdminReply.aspx");
        }
    }
}