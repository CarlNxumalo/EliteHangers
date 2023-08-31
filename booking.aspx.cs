using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace EliteHangers
{
    public partial class booking : System.Web.UI.Page
    {
        DataSet ds;
        SQL sql = new SQL();
        string query;
        protected void Page_Load(object sender, EventArgs e)
        {
            query = "SELECT DISTINCT name FROM City";
            sql.comboBox(query,"City", "name", DropDownList1);
            query = $"SELECT * FROM Hangar ";
            sql.comboBox(query, "Hangar", "name", drpLstBoxHnger);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            query = $"SELECT * FROM Hangar WHERE name = '{DropDownList1.SelectedValue}'";
            sql.comboBox(query, "Hangar", "name", drpLstBoxHnger);
        }
    }
}