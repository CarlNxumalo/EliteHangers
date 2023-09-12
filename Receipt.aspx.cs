using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EliteHangers
{
    public partial class Receipt : System.Web.UI.Page
    {
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
                        if (Session["TotalDays"] != null)
                        {
                            lblCityName.Text = Session["CityName"].ToString();
                            lblHangarName.Text = Session["HangarName"].ToString();
                            lblAmount.Text = Session["Amount"].ToString();
                            lblStartDate.Text = Session["DateStart"].ToString();
                            lblEndDate.Text = Session["DateEnd"].ToString();
                            lblDays.Text = Session["TotalDays"].ToString();
                        }
                        else
                        {
                            Response.Redirect("dashboard.aspx");
                        }
                    }
                    else if (user.role == 1)
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
                // Handle exceptions and insert an error message here if needed.
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("dashboard3.aspx");
            }
            catch (Exception)
            {
                //insert error message here.
            }
        }
    }
}