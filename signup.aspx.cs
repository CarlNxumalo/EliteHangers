using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EliteHangers
{
    public partial class signup : System.Web.UI.Page
    {
        Customer customer = new Customer();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnAddCustomer_Click(object sender, EventArgs e)
        {
            
            customer.addCustomer(txtName1.Text, txtSurname.Text, txtEmail.Text, txtPassword.Text, txtPlaneNumber.Text);

            //Clear the textboxs 

            txtName1.Text = "";
            txtSurname.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtPlaneNumber.Text = "";

            //take them to the login

            
            Response.Redirect("login.aspx");





        }
    }
}