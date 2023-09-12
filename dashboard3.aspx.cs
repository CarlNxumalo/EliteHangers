using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EliteHangers
{
    public partial class dashboard3 : System.Web.UI.Page
    {
        string query;
        SQL sql = new SQL();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                try
                {
                    query = "SELECT DISTINCT name FROM City";
                    sql.comboBox(query, "City", "name", DropDownList1);
                    query = $"SELECT * FROM Hangar ";
                    sql.comboBox(query, "Hangar", "name", DropDownList2);
                }
               catch(Exception)
                {
                    //Insert error message.
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                query = $" SELECT  Hangar.name FROM Hangar INNER JOIN City ON Hangar.city_id = City.city_id WHERE City.name = '{DropDownList1.SelectedValue}'";
                sql.comboBox(query, "Hangar", "name", DropDownList2);
            }
            catch(Exception)
            {
                //insert erroe message.
            }
            
        }
    }
}