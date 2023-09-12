using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EliteHangers
{
    public partial class Hanger : System.Web.UI.Page
    {
        SQL sql = new SQL();
        UserAuth user;
        string query;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["user"] != null)
                {
                    user = (UserAuth)Session["user"];

                    if (user.role == 2) // customer
                    {
                        Response.Redirect("dashboard3.aspx");
                    }
                    if (user.role == 0) // employee
                    {
                        Response.Redirect("Clerk.aspx");
                    }
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }

                if (!IsPostBack)
                {
                    query = "SELECT name, city_id FROM City;";
                    sql.comboBox(query, "City", "name", ddlCityName, "city_id");

                    query = "SELECT name, city_id FROM City;";
                    sql.comboBox(query, "City", "name", ddlUpdateCityName, "city_id");

                    query = "SELECT name, hangar_id FROM Hangar;";
                    sql.comboBox(query, "Hangar", "name", ddlUpdateHangername, "hangar_id");
                }

                sql.display("Hangar", GridView1);
            }
            catch (Exception)
            {
                // Insert error message here
            }
        }

        protected void txtCity0_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            try
            {
                if (ddlCityName.Text != "")
                {
                    sql.insertHanger(int.Parse(ddlCityName.SelectedValue), txtName.Text, decimal.Parse(txtPrice.Text));
                    sql.display("Hangar", GridView1);
                }
                else
                {
                    lblErrorcity.Text = "Select a city name";
                }
            }
            catch (Exception)
            {
                // Insert error message here.
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
             sql.deleteHanger(int.Parse(txtHanger.Text));
             sql.display("Hangar", GridView1);
            }
            catch(Exception)
            {
                //Insert error message here.
            }
           
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
             sql.updateHanger(int.Parse(ddlUpdateHangername.SelectedValue),int.Parse(ddlUpdateCityName.SelectedValue), txtNameUp.Text, decimal.Parse(txtPriceUp.Text));
             sql.display("Hangar", GridView1);
            }
           catch(Exception)
           {
            //insert error message here.
           }
        }

        protected void ddlCityName_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}