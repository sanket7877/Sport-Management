using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS
{
    public partial class Select_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
         
        }

        protected void Select_onclick(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "student")
            {
                Response.Redirect("slogin.aspx");
            }
            if (DropDownList1.Text == "Faculty")
            {
                Response.Redirect("flogin.aspx");
            }
            if (DropDownList1.Text == "Admin")
            {

                Response.Redirect("alogin.aspx");
            }
        }
    }
}