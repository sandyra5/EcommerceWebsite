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
    public partial class UserHome : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from Category_Tab where Category_status='available'";
                DataSet ds = clsobj.fn_Adapter_Dataset(s);
                dlCategoryDisp.DataSource = ds;
                dlCategoryDisp.DataBind();
            }
           
        }

        protected void ImgBtnCategory_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Session["catid"] = id;
            Response.Redirect("ViewAllProducts.aspx");
        }
    }
}