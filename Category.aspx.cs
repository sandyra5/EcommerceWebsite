using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace WebAppEcommerce
{
    public partial class Category : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
    
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            lblAdd.Visible = true;
            string path = "~/Category_images/" + fuImg.FileName;
            fuImg.SaveAs(Server.MapPath(path));
            string ins = "insert into Category_Tab values('"+txtname.Text+ "','" + txtdesc.Text + "','" + path + "','available')";
            int i = clsobj.fn_NonQuery(ins);
            if (i == 1)
            {
                lblAdd.Text = "Category added sussessfully";
            }
            else
            {
                lblAdd.Text = "Failed to add category";
            }

        }

    }
}