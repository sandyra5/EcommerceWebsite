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
    public partial class SingleProduct : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from Product_Tab where Product_id=" + Session["pid"] + "";
                SqlDataReader dr = clsobj.fn_Reader(s);
                while (dr.Read())
                {
                    ImgProduct.ImageUrl = dr["Product_image"].ToString();
                    lblname.Text = dr["Product_name"].ToString();
                    lbldes.Text = dr["Product_description"].ToString();
                    lblprice.Text = dr["Product_price"].ToString();
                    int stock = Convert.ToInt32(dr["Product_stock"]);  
                    ddlQuantity.Items.Clear();
                    for (int i = 1; i <= stock; i++)
                    {
                        ddlQuantity.Items.Add(i.ToString());
                    }
                    Session["price"] = dr["Product_price"];
                }
            }

            
        }

        protected void btnviewcart_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCart.aspx");
        }

        protected void btnaddtocart_Click(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32(Session["userid"]);
            int pid = Convert.ToInt32(Session["pid"]);
            int qty = Convert.ToInt32(ddlQuantity.SelectedItem.Text);
            decimal price = Convert.ToDecimal(Session["price"]);
            decimal subtotal = qty * price;
            string ins="insert into Cart_Tab values("+uid+","+pid+","+qty+","+subtotal+",GETDATE(),1)";
            clsobj.fn_NonQuery(ins);
            
        }
    }
}