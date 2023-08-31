using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EliteHangers
{
    public partial class dashboard2 : System.Web.UI.Page
    {
        SQL sql = new SQL();
        string query;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)//first time the user visits the dashboard page
            {//if fills both comoboxes with all the data 
                query = "SELECT DISTINCT name FROM City";
                sql.comboBox(query, "City", "name", ddlCity);
                query = $"SELECT * FROM Hangar ";
                sql.comboBox(query, "Hangar", "name", ddlHangar);
                
            }
            
        }

        protected void ddlCity_SelectedIndexChanged(object sender, EventArgs e)
        {//when a person selects a city it will filter hangers according to the city 
            query = $" SELECT  Hangar.name FROM Hangar INNER JOIN City ON Hangar.city_id = City.city_id WHERE City.name = '{ddlCity.SelectedValue}'";
            sql.comboBox(query, "Hangar", "name", ddlHangar);
            lblError.Text = ddlCity.SelectedValue;
        }

        
    }
}