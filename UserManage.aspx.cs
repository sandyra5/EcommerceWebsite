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
    public partial class UserManage : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gridbind();
            }
        }
        public void gridbind()
        {
            string s = "select * from User_Tab";
            DataSet ds = clsobj.fn_Adapter_Dataset(s);
            GridViewUsers.DataSource = ds;
            GridViewUsers.DataBind();
        }

        protected void GridViewUsers_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewUsers.EditIndex = e.NewEditIndex;

            gridbind();
        }

        protected void GridViewUsers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridViewUsers.EditIndex = -1;

            gridbind();
        }

        protected void GridViewUsers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridViewUsers.DataKeys[i].Value);
            DropDownList ddlstatus = (DropDownList)GridViewUsers.Rows[i].FindControl("ddlstatus");
            string status = ddlstatus.SelectedValue;
            string q = "update User_Tab set User_status='" + status +"' where User_id=" + id + "";
            clsobj.fn_NonQuery(q);
            GridViewUsers.EditIndex = -1;
            gridbind();
        }
    }
}