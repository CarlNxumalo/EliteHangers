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
            try
            {
                if (Session["user"] != null)
                {
                    user = (UserAuth)Session["user"];

                    if (user.role == 2) // Customer
                    {
                        // Customer-specific code here if needed
                    }
                    else if (user.role == 0)
                    {
                        // Manager
                        Response.Redirect("Admin.aspx");
                    }
                    else
                    {
                        // Employee Clerk
                        Response.Redirect("Clerk.aspx");
                    }
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
            catch (Exception)
            {
                // Insert error message here if needed.
            }
        }

        protected void btnAddCustomer_Click(object sender, EventArgs e)
        {
            try
            {
                  if (txtEmail.Text != null)
                  {
                     sql.updateCustomer(user.id, txtName.Text, txtSurname.Text, txtEmail.Text, txtPassword.Text, txtPlaneNumber.Text);
                  }
            }
            catch
            {
                //insert error message here.
            }
          
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            try
            {
             txtName.Text = "";
             txtSurname.Text = "";
             txtEmail.Text = "";
             txtPassword.Text = "";
             txtPlaneNumber.Text = "";
            }
            catch (Exception)
            {
                //isnert error message here.
            }
        }
    }
}