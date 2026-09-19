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
    public partial class Payment : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void rdoYes_CheckedChanged(object sender, EventArgs e)
        {
            pnlExisting.Visible = true;
            pnlNew.Visible = false;
        }
        protected void rdoNo_CheckedChanged(object sender, EventArgs e)
        {
            pnlExisting.Visible = false;
            pnlNew.Visible = true;
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            string check = "select count(*) from Account_Tab where Acc_No='" + txtaccno.Text + "'";

            int count = Convert.ToInt32(obj.fn_Scalar(check));

            if (count > 0)
            {
                lblcheck.Text = "Account number already exists!";
            }
            else
            {
                int uid = Convert.ToInt32(Session["userid"]);
                string ins = "insert into Account_Tab values(" +uid + ",'" + txtname.Text + "','" + txtaccno.Text + "'," + txtbalance.Text + ")";
                obj.fn_NonQuery(ins);
                lblcheck.Text = "Account addedd successfully!";

                txtExistingAccNo.Text = txtaccno.Text;
                pnlNew.Visible = false;
                pnlExisting.Visible = true;
            }
           
        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            ServiceAccount.ServiceClient ob = new ServiceAccount.ServiceClient();
            decimal bal = ob.checkbal(txtExistingAccNo.Text);
            decimal grandtotal = Convert.ToDecimal(Session["grandtot"]);
            int uid = Convert.ToInt32(Session["userid"]);
            if (bal >= grandtotal)
            {
                int i = ob.updatebal(uid,txtExistingAccNo.Text, grandtotal);

                if (i > 0)
                {
                    lblPayment.Text = "Payment Successful!";
                    btnFeedback.Visible = true;
                    string sel = "select Product_id from Order_Tab where User_id=" + uid + " and Order_status='order'";
                    SqlDataReader dr = obj.fn_Reader(sel);
                    List<int> pdtlist = new List<int>();
                    while (dr.Read())
                    {
                        pdtlist.Add(Convert.ToInt32(dr["Product_id"]));
                    }
                    foreach(int pid in pdtlist)
                    {
                        string u = "update Order_Tab set Order_status='paid' where Product_id="+pid+" and User_id=" + uid + "";
                        obj.fn_NonQuery(u);
                        string q = "select Quantity from Order_Tab where Product_id=" + pid + " and User_id=" + uid + " and Order_status='paid'";
                        int qty = Convert.ToInt32(obj.fn_Scalar(q));
                        string st = "select product_stock from Product_Tab where Product_id=" + pid + "";
                        int stock= Convert.ToInt32(obj.fn_Scalar(st));
                        int new_stock = stock - qty;
                        string upsto = "update Product_Tab set product_stock=" + new_stock + " where Product_id=" + pid + "";
                        obj.fn_NonQuery(upsto);
                    }
                    
                }
            }
            else
            {
                lblPayment.Text = "Insufficient Balance!";
            }
        }

        protected void LinkButtonHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserHome.aspx");
        }

        protected void btnFeedback_Click(object sender, EventArgs e)
        {
            Response.Redirect("Feedback.aspx");
        }
    }
}