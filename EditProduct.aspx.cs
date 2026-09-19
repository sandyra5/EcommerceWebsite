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
    public partial class EditProduct : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                gridbind();
        }
        public void gridbind()
        {
            string s = "select * from Product_Tab";
            DataSet ds = clsobj.fn_Adapter_Dataset(s);
            ProductGrid.DataSource = ds;
            ProductGrid.DataBind();
        }
        protected void ProductGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {

            ProductGrid.EditIndex = e.NewEditIndex;
            gridbind();
        }
        protected void ProductGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            ProductGrid.EditIndex = -1;
            gridbind();
        }

        protected void ProductGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(ProductGrid.DataKeys[i].Value);
            TextBox txtdesc = (TextBox)ProductGrid.Rows[i].Cells[2].Controls[0];
            TextBox txtprice = (TextBox)ProductGrid.Rows[i].Cells[3].Controls[0];
            TextBox txtstock = (TextBox)ProductGrid.Rows[i].Cells[4].Controls[0];
            FileUpload fu = (FileUpload)ProductGrid.Rows[i].FindControl("FuImg");
            string path = "";
            if (fu.HasFile)
            {
                path = "~/Product_images/" + fu.FileName;
                fu.SaveAs(Server.MapPath(path));
            }
            DropDownList ddlstatus = (DropDownList)ProductGrid.Rows[i].FindControl("ddlstatus");
            string status = ddlstatus.SelectedValue;
            string q = "update Product_Tab set Product_description='" + txtdesc.Text + "',Product_price='"+txtprice.Text+"',Product_stock='"+txtstock.Text+"',Product_image='" + path + "',Product_status='" + status + "' where Product_id=" + id + "";
            clsobj.fn_NonQuery(q);
            ProductGrid.EditIndex = -1;
            gridbind();
        }

        
    }
}