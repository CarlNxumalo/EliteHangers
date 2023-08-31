using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EliteHangers
{
    public partial class booking : System.Web.UI.Page
    {
        SQL sql = new SQL();

        protected void Page_Load(object sender, EventArgs e)
        {
            sql.comboBox("City", "name", DropDownList1);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


        }
    }
}