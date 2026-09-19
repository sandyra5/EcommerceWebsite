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
    public partial class ViewAllProducts : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from Product_Tab where Category_id=" + Session["catid"] + " and Product_status='available'";
                DataSet ds = clsobj.fn_Adapter_Dataset(s);
                dlProduct.DataSource = ds;
                dlProduct.DataBind();
            }
            
        }

        protected void ImgbtnProd_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Session["pid"] = id;
            Response.Redirect("SingleProduct.aspx");
        }
    }
}