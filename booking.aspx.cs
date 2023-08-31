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
        protected void Page_Load(object sender, EventArgs e)
        {
            SQL sql = new SQL();

            string sqlStatement = "SELECT name FROM Hangar";

            ds = sql.display(sqlStatement, "Hangar");
            ddl.DataSource = ds.Tables["Hangar"];
            ddl.DataTextField = "name";
           // ddl.DataValueField = "hangar_id";
            ddl.DataBind();

        }
    }
}