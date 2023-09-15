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
            
            if (Session["user"] != null)
            {
                user = (UserAuth)Session["user"];

                if (user.role == 2)//customer
                {
                    if (Session["TotalDays"] != null)
                    {
                        lblCityName.Text= Session["CityName"].ToString();
                        lblHangarName.Text=  Session["HangarName"].ToString();
                        lblStartDate.Text =  Session["DateStart"].ToString();
                        lblEndDate.Text =  Session["DateEnd"].ToString();
                        lblDays.Text =  Session["TotalDays"].ToString();
                    }
                    else
                    {
                        Response.Redirect("dashboard3.aspx");
                    }
                }
                else if (user.role == 1)
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("dashboard3.aspx");
        }
    }
}