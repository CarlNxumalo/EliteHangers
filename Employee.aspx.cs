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
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                sql.display("Employee", GridView1);
            }
            catch (Exception)
            {
                //Insert error message here
            }
            
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
             sql.deleteEmployee(int.Parse(txtEmployee.Text));
             sql.display("Employee", GridView1);
            }
            catch (Exception)
            {
                //Insert error message here
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
             sql.updateEmployee(int.Parse(txtEmployeeUp.Text), txtNameUp.Text, txtSurnameUp.Text, txtEmailUp.Text, txtPasswordUp.Text, int.Parse(txtRoleUp.Text));
             sql.display("Employee", GridView1);
            }
            catch (Exception)
            {
                //insert error message here.
            }
            
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            try
            {
             sql.insertEmployee(txtName.Text, txtSurname.Text, txtEmail.Text, txtPassword.Text, int.Parse(txtRole.Text));
             sql.display("Employee", GridView1);
            }
            catch (Exception)
            {
                //insert error message here
            }
         
        }
    }
}