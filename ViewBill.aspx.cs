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
    public partial class ViewBill : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select P.Product_name,P.Product_price,O.Quantity,O.Subtotal_amt from Order_Tab O " +
                    "inner join Product_Tab P on O.Product_id=P.Product_id where O.User_id=" + Session["userid"] + " and O.Order_status='order'";
                DataSet ds = clsobj.fn_Adapter_Dataset(s);
                GridViewBill.DataSource = ds;
                GridViewBill.DataBind();
                string u = "select Name,Phone,Address from User_Tab where User_id=" + Session["userid"] + "";
                SqlDataReader dr = clsobj.fn_Reader(u);
                while (dr.Read())
                {
                    lblName.Text = dr["Name"].ToString();
                    lblPhone.Text = dr["Phone"].ToString();
                    lblAddress.Text = dr["Address"].ToString();
                }
                string p = "select * from Payment_Tab where User_id=" + Session["userid"] + "";
                SqlDataReader dr1 = clsobj.fn_Reader(p);
                while (dr1.Read())
                {
                    lblBillNo.Text = dr1["Pay_id"].ToString();
                    lblDate.Text = dr1["Date"].ToString();
                    lblGrandTotal.Text = dr1["GrandTotal"].ToString();
                }
                Session["grandtot"] = lblGrandTotal.Text;
            }
        }

        protected void btnPayment_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }
    }
}