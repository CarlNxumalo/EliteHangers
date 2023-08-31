using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EliteHangers
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //redirecting the admin to the hanger management form
            Response.Redirect("frmHangerman.aspx");
        }

        protected void btnUserMan_Click(object sender, EventArgs e)
        {
            //Redirecting the admin to the user management form
            Response.Redirect("frmUserMan.aspx");
        }
    }
}