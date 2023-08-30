using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;

namespace EliteHangers
{
    public partial class login : System.Web.UI.Page
    {
        SQL sql = new SQL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //create a session after authentication
            //check both tables 

            try
            {
                UserAuth user = sql.authenticate(txtEmail.Text, txtPassword.Text);
                if (user != null)
                {
                    Session["name"] = user.name;
                    Session["surname"] = user.surname;
                    Session["id"] = user.id;
                    Session["role"] = user.role;
                    Session.Timeout = 1;
                    Response.Redirect("dashboard.aspx");
                }
                else//null means not a user
                {
                    //error message lbl 
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}