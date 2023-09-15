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

                if(!IsPostBack)
                {
                    ddl();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
            sql.display("City", GridView1);
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            sql.insertCity(txtName.Text);
            sql.display("City", GridView1);
            ddl();
        }

        public void ddl()
        {
            string query = "SELECT name, city_id FROM City;";
            sql.comboBox(query, "City", "name", ddlDel, "city_id");
            sql.comboBox(query, "City", "name", ddlUp, "city_id");
        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                int id = 0;
                if(int.TryParse(ddlDel.SelectedValue.ToString(), out id))
                {
                    if (id !=0)
                    {
                        lblDelete.Text = "Deleted succesfully";
                        sql.deleteCity(id);
                        sql.display("City", GridView1);
                        ddl();
                    }
                    else
                    {
                        lblDelete.Text = "PLease select a city id";
                    }
                }
                else
                {
                    lblDelete.Text = "Please, select a city id";
                }

            }
            catch(Exception)
            {
                lblDelete.Text = "Failed to delete city";
            }
           

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnDelete0_Click(object sender, EventArgs e)//this is update
        {
            try
            {
                int id = 0;
                if(int.TryParse(ddlUp.SelectedValue.ToString(), out id))
                {
                    if (id !=0)
                    {
                        sql.updateCity(int.Parse(ddlUp.SelectedValue), txtNameUp.Text);
                        sql.display("City", GridView1);
                        ddl();
                        lblUpdate.Text = "Succefull";
                    }
                    else
                    {
                        lblUpdate.Text = "Select city id";
                    }
                }
                else
                {
                    lblUpdate.Text = "Select city id, Please";
                }

            }
            catch (Exception)
            {
                lblUpdate.Text = "Failed to update city";
            }
        }
    }
}