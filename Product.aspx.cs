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
    public partial class Product : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sel = "select Category_id,CategoryName from Category_Tab where Category_status='available'";
                DataSet ds = clsobj.fn_Adapter_Dataset(sel);
                DropDownListCategory.DataSource = ds;
                DropDownListCategory.DataTextField = "CategoryName";
                DropDownListCategory.DataValueField = "Category_id";
                DropDownListCategory.DataBind();
            }
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            lblAdd.Visible = true;
            string path = "~/Product_images/" + fuimg.FileName;
            fuimg.SaveAs(Server.MapPath(path));
            string ins = "insert into Product_Tab values('"+DropDownListCategory.SelectedItem.Value+"','"+txtprona.Text+ "','" + txtdesc.Text + "','" + path + "','" + txtprice.Text + "','" + txtstock.Text + "','available')";
            int i = clsobj.fn_NonQuery(ins);
            if (i == 1)
            {
                lblAdd.Text = "Product added successfully";
            }
            else
            {
                lblAdd.Text = "Failed to add product";
            }
        }
    }
}