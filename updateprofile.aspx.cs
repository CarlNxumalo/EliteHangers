using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EliteHangers
{
    public partial class updateprofile : System.Web.UI.Page
    {
        SQL sql = new SQL();
        UserAuth user;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                user = (UserAuth)Session["user"];

                if (user.role == 2)//customer
                {
                    
                }
                else if (user.role == 0)
                {
                    //manager
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    //employee clerk
                    Response.Redirect("Clerk.aspx");
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnAddCustomer_Click(object sender, EventArgs e)
        {
            if (txtEmail.Text != null)
            {

                sql.updateCustomer(user.id, txtName.Text, txtSurname.Text, txtEmail.Text, txtPassword.Text, txtPlaneNumber.Text);
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtSurname.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtPlaneNumber.Text = "";
        }
    }
}