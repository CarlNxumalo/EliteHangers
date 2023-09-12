using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EliteHangers
{
    public partial class City : System.Web.UI.Page
    {
        SQL sql = new SQL();
        UserAuth user;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // Make sure this code only runs when the page is first loaded, not on postbacks
            {
                try
                {
                    if (Session["user"] != null)
                    {
                        UserAuth user = (UserAuth)Session["user"];

                        if (user.role == 2) // customer
                        {
                            Response.Redirect("dashboard3.aspx");
                        }
                        else if (user.role == 0) // employee
                        {
                            Response.Redirect("Clerk.aspx");
                        }
                    }
                    else
                    {
                        Response.Redirect("Login.aspx");
                    }
                }
                catch (Exception ex)
                {
                    // Handle the exception appropriately, log it, or display an error message
                    // You can access the exception details through the 'ex' variable
                    // For example, you could log the error like this:
                    // Logger.Log("An error occurred: " + ex.Message);
                }

                // Assuming sql.display is a valid method, call it here
                sql.display("City", GridView1);
            }
        }


        protected void btnInsert_Click(object sender, EventArgs e)
        {
            try
            {
             sql.insertCity(txtName.Text);
             sql.display("City", GridView1);
            }
            catch (Exception)
            {
                //Inser error message here.
            }
            
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
             sql.deleteCity(int.Parse(txtCity.Text));
             sql.display("City", GridView1);
            }
            catch(Exeption)
            {
                //Insert errror message here.
            }
            

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnDelete0_Click(object sender, EventArgs e)
        {
            try
            {
             sql.updateCity(int.Parse(txtCityUp.Text), txtNameUp.Text);
             sql.display("City", GridView1);
            }
            catch (Exception)
            {
                //Insert error nmessage here.
            }
            
        }
    }
}