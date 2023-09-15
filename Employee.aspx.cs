using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EliteHangers
{
    public partial class Employee : System.Web.UI.Page
    {
        SQL sql = new SQL();
        UserAuth user;
        protected void Page_Load(object sender, EventArgs e)
        {
            sql.display("Employee", GridView1);
           
            if (Session["user"] != null)
            {
                user = (UserAuth)Session["user"];

                if (user.role == 2)//customer
                {
                    
                    Response.Redirect("dashboard3.aspx");
                }
                else if (user.role == 1)
                {
                    //sharp
                    if (!IsPostBack)
                    {
                        ddl();
                    }
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

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                sql.deleteEmployee(int.Parse(ddlDelete.SelectedValue));
                sql.display("Employee", GridView1);
                ddl();
                lblDeleteError.Text = "Deleted employee "+ddlDelete.Text;
            }
            catch (Exception)
            {
                lblDeleteError.Text = "Select employee to delete";
            }
        }
        protected void ddl()
        {
            try
            {
                string query = "SELECT name, employee_id FROM Employee;";
                sql.comboBox(query, "Employee", "name", ddlUpdate, "employee_id");
                sql.comboBox(query, "Employee", "name", ddlDelete, "employee_id");
            }
            catch (Exception)
            {

            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                int id = 0;
                if (Session["up_id"] != null)
                {
                    id = int.Parse(Session["up_id"].ToString());
                }
                if (id != 0)
                {
                    lblUdateError.Text = "";
                    sql.updateEmployee(id, txtNameUp.Text, txtSurnameUp.Text, txtEmailUp.Text, txtPasswordUp.Text, int.Parse(ddlRoleUpdate.SelectedValue));
                    sql.display("Employee", GridView1);
                    lblUdateError.Text = "Succefully update employee";
                    Session["up_id"] = null;
                }
                else
                {
                    lblUdateError.Text = "Select employee ID(Not zero)";
                }
            }
            catch (Exception)
            {

                lblUdateError.Text = "Enter all details please";
            }
                
            
            
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            try
            {
                sql.insertEmployee(txtName.Text, txtSurname.Text, txtEmail.Text, txtPassword.Text, int.Parse(ddlInsert.SelectedValue));
                sql.display("Employee", GridView1);
                ddl();
                lblErrorInsert.Text = "";
            }
            catch (Exception)
            {
                lblErrorInsert.Text = "Please enter all feilds";
            }
        }

        protected void txtRoleUp_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ddlUpdate_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["up_id"] = ddlUpdate.SelectedValue.ToString();
        }
    }
}