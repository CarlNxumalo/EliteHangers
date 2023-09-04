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

        protected void Page_Load(object sender, EventArgs e)
        {
            sql.display("City", GridView1);
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            sql.insertCity(txtName.Text);
            sql.display("City", GridView1);
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            sql.deleteCity(int.Parse(txtCity.Text));
            sql.display("City", GridView1);

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnDelete0_Click(object sender, EventArgs e)
        {
            sql.updateCity(int.Parse(txtCityUp.Text), txtNameUp.Text);
            sql.display("City", GridView1);
        }
    }
}