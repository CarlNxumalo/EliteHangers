using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace EliteHangers
{
    public partial class dashboard : System.Web.UI.Page
    {

        
        SQL sql = new SQL();
        string query;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                query = "SELECT DISTINCT name FROM City";
                sql.comboBox(query, "City", "name", DropDownList1);
                query = $"SELECT * FROM Hangar ";
                sql.comboBox(query, "Hangar", "name", drpLstBoxHnger);
            }


            query = $" SELECT  Hangar.name FROM Hangar JOIN City ON Hangar.city_id = City.city_id WHERE City.name = {DropDownList1.SelectedValue}";
            sql.comboBox(query, "Hangar", "name", drpLstBoxHnger);

        }
    }
}