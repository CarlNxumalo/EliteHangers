using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EliteHangers
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["name"]!=null)
            {
                int role = int.Parse(Session["role"].ToString());
                if(role!=3)//NOT CUSTIMER
                {
                    Response.Redirect("login.aspx");
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
    }
}