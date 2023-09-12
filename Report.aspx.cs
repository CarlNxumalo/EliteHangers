using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EliteHangers
{
    public partial class Report : System.Web.UI.Page
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
                        Response.Redirect("dashboard3.aspx");
                    }
                    if (user.role == 0) // Employee
                    {
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

        protected void btnTotal_Click(object sender, EventArgs e)
        {
            try
            {
             sql.Sum("Transaction", GridView1, "amount");
             sql.display("Transaction", GridView1);
            }
            catch (Exception)
            {
                //insert error message here.
            }
          
        }

        protected void btnGroup_Click(object sender, EventArgs e)
        {
            try
            {
             sql.GroupBy("Hangar", GridView1, "city_id", "name");
             sql.display("Hangar", GridView1);
            }
            catch (Exception)
            {
                //insert error message here.
            }
            
        }
    }
}