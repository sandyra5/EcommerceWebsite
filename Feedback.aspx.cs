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
    public partial class Feedback : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int uid = Convert.ToInt32(Session["userid"]);

                string s = "select P.Product_id, P.Product_name, P.Product_description, P.Product_Image from Product_Tab P inner join Order_Tab O " +
                    "on P.Product_id = O.Product_id where O.User_id=" + uid + " and O.Order_status='paid'";

                DataSet ds = clsobj.fn_Adapter_Dataset(s);

                GridViewFeedbck.DataSource = ds;
                GridViewFeedbck.DataBind();
            }
        }

        protected void btnfeedbck_Command(object sender, CommandEventArgs e)
        {
            int pdtid = Convert.ToInt32(e.CommandArgument);
            Session["feedpid"] = pdtid;
            Response.Redirect("Addfeedback.aspx");
        }
    }
}