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
        UserAuth user;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //create a session after authentication
            //check both tables 
            user = AuthenticateUser(txtEmail.Text, txtPassword.Text);
            if (user != null)
            {
                Session["user"] = user;
                Console.WriteLine("Yay!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1");

                if(user.role == 2)//customer
                {
                    Response.Redirect("dashboard3.aspx");
                }
                if (user.role == 1)//manager
                {
                    Response.Redirect("Report.aspx");
                }
                else//employee 0
                {
                    
                }
            }
            else
            {
                //error message lbl 
                lblerror.Text = "User email or password is incorrect";
                Response.Redirect("signup.aspx");

            }
        }

        private UserAuth AuthenticateUser(string email, string password)
        {
            // Call your authenticate method here or modify it to return UserAuth directly
            return sql.authenticate(email, password);
        }
    }
}

