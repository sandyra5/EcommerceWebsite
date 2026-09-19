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
    public partial class ViewCart : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {
                gridbind();
            }
        }
        public void gridbind()
        {
            string s = "SELECT c.Cart_id, p.Product_Image, p.Product_name, p.Product_price, c.Quantity, c.Subtotal FROM Product_Tab p " +
                "INNER JOIN Cart_Tab c ON p.Product_id = c.Product_id where c.User_id=" + Session["userid"] + " and c.Cart_status=1";
            DataSet ds = clsobj.fn_Adapter_Dataset(s);
            GridViewCart.DataSource = ds;
            GridViewCart.DataBind();
        }

        protected void GridViewCart_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewCart.EditIndex = e.NewEditIndex;
            gridbind();
        }

        protected void GridViewCart_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridViewCart.EditIndex = -1;
            gridbind();
        }

        protected void GridViewCart_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridViewCart.DataKeys[i].Value);
            TextBox txtqty= (TextBox)GridViewCart.Rows[i].Cells[3].Controls[0];
            string s = "select P.Product_price from Product_Tab P inner join Cart_Tab C on P.Product_id = C.Product_id where C.Cart_id="+id+"";
            string p = clsobj.fn_Scalar(s).ToString();
            decimal price = Convert.ToDecimal(p);
            int qty = Convert.ToInt32(txtqty.Text);
            decimal subtot = price*qty;
            string upd = "update Cart_Tab set Quantity=" + qty + ",Subtotal=" + subtot + " where Cart_id="+id+" ";
            clsobj.fn_NonQuery(upd);
            GridViewCart.EditIndex = -1;
            gridbind();
        }

        protected void GridViewCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridViewCart.DataKeys[i].Value);
            string del = "delete from Cart_Tab where Cart_id="+id+"";
            clsobj.fn_NonQuery(del);
            GridViewCart.EditIndex = -1;
            gridbind();

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            string s = "select Product_id from Cart_Tab where User_id=" + Session["userid"] + " and Cart_status=1";
            SqlDataReader dr = clsobj.fn_Reader(s);
            List<int> pidlst = new List<int>();
            while (dr.Read())
            {
                pidlst.Add((int)dr["Product_id"]);
            }
            foreach(int p in pidlst)
            {
                string sel = "select Quantity,Subtotal from Cart_Tab where User_id=" + Session["userid"] + " and Product_id=" + p + " and Cart_status=1";
                SqlDataReader dr1 = clsobj.fn_Reader(sel);
                int qty=0;
                decimal subtot=0;
                while (dr1.Read())
                {
                    qty = Convert.ToInt32(dr1["Quantity"]);
                    subtot = Convert.ToDecimal(dr1["Subtotal"]);
                }
                string ins = "insert into Order_Tab values(" + Session["userid"] + "," + p + "," + qty + "," + subtot + ",'order',GETDATE())";
                clsobj.fn_NonQuery(ins);
             
                string upd = "update Cart_Tab set Cart_status=0 where User_id=" + Session["userid"] + " and Product_id=" + p + " and Cart_status=1 ";
                clsobj.fn_NonQuery(upd);

            }
            string gt = "select sum(Subtotal_amt) from Order_Tab where User_id=" + Session["userid"] + " and Order_status='order'";
            decimal grandtot = Convert.ToDecimal(clsobj.fn_Scalar(gt));
            string payins = "insert into Payment_Tab values(" + Session["userid"] + "," + grandtot + ",GETDATE())";
            clsobj.fn_NonQuery(payins);
            Response.Redirect("ViewBill.aspx");
        }
    }
}