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
        string queryTable = @"SELECT
                        H.hangar_id,
                        H.name AS HangarName,
                        H.price AS HangarPrice,
                        C.name AS CityName
                    FROM
                        Hangar H
                    INNER JOIN
                        City C ON H.city_id = C.city_id;";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["user"] != null)
                {
                    user = (UserAuth)Session["user"];

                    if (user.role == 2)//customer
                    {
                        Response.Redirect("dashboard3.aspx");
                    }
                    if (user.role == 0)//employee
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
                    resetDDL();
                }


                sql.displayDGV(queryTable, GridView1, "Hangar");
            }
            catch (Exception)
            {

                Console.WriteLine("Error things");
            }

        }
        public void resetDDL()
        {
            try
            {
                query = "SELECT name, city_id FROM City;";
                sql.comboBox(query, "City", "name", ddlCityName, "city_id");

                query = "SELECT name, city_id FROM City;";
                sql.comboBox(query, "City", "name", ddlUpdateCityName, "city_id");

                query = "SELECT name, hangar_id FROM Hangar;";
                sql.comboBox(query, "Hangar", "name", ddlUpdateHangername, "hangar_id");
            }
            catch (Exception)
            {

                Console.WriteLine("ddl error");
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
                    sql.displayDGV(queryTable, GridView1, "Hangar");
                    lblErrorInsert.Text = "Entered new Hangar"+txtHanger.Text;
                    resetDDL();
                }
                //select city
                else
                {
                    lblErrorcity.Text = "Select a city name";
                }
            }
            catch (Exception)
            {

                lblErrorInsert.Text = "Enter all details please";
                Console.WriteLine("insert error");
            }
                
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                lblErrorDel.Text = "";
                int del = 0;
                if (int.TryParse(txtHanger.Text, out del))
                {
                    sql.deleteHanger(int.Parse(txtHanger.Text));
                    sql.displayDGV(queryTable, GridView1, "Hangar");
                }
                else
                {
                    lblErrorDel.Text = "Please enter an integer";
                }
            }
            catch (Exception)
            {

                lblErrorDel.Text = "Cannot delete hangar because it has been booked";
            }
            
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                lblErrorUpdate.Text = "Updated Hangar";
                sql.updateHanger(int.Parse(ddlUpdateHangername.SelectedValue), int.Parse(ddlUpdateCityName.SelectedValue), txtNameUp.Text, decimal.Parse(txtPriceUp.Text));
                sql.displayDGV(queryTable, GridView1, "Hangar");
                resetDDL();
            }
            catch (Exception)
            {

                lblErrorUpdate.Text = "Please fill in required details";
            }
            
        }

        protected void ddlCityName_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}