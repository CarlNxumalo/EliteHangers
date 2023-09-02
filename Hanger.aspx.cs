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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtCity0_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            sql.insertHanger(int.Parse(txtCity.Text), txtName.Text, decimal.Parse(txtPrice.Text));
            sql.display("Hangar",GridView1);
            
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            sql.deleteHanger(int.Parse(txtHanger.Text));
            sql.display("Hangar", GridView1);
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            sql.updateHanger(int.Parse(txtHangerUp.Text),int.Parse(txtCityUp.Text), txtNameUp.Text, decimal.Parse(txtPriceUp.Text));
            sql.display("Hangar", GridView1);
        }
    }
}