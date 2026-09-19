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
    public partial class EditCategory : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                gridbind();
        }
        public void gridbind()
        {
            string s = "select * from Category_Tab";
            DataSet ds = clsobj.fn_Adapter_Dataset(s);
            CategoryGrid.DataSource = ds;
            CategoryGrid.DataBind();
        }
        protected void CategoryGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            CategoryGrid.EditIndex = e.NewEditIndex;
            gridbind();
        }

        protected void CategoryGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            CategoryGrid.EditIndex = -1;
            gridbind();
        }

        protected void CategoryGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(CategoryGrid.DataKeys[i].Value);
            TextBox txtdesc = (TextBox)CategoryGrid.Rows[i].Cells[2].Controls[0];
            FileUpload fu = (FileUpload)CategoryGrid.Rows[i].FindControl("FuEdit");
            string path = "";
            if (fu.HasFile)
            {
                path = "~/Category_images/" + fu.FileName;
                fu.SaveAs(Server.MapPath(path));
            }
            DropDownList ddlstatus = (DropDownList)CategoryGrid.Rows[i].FindControl("ddlstatus");
            string status = ddlstatus.SelectedValue;
            string q = "update Category_Tab set CategoryDescription='" + txtdesc.Text + "',CategoryImage='" + path + "',Category_status='" + status + "' where Category_id=" + id + "";
            clsobj.fn_NonQuery(q);
            CategoryGrid.EditIndex = -1;
            gridbind();
        }

    }
}