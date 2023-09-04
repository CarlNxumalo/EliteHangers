using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EliteHangers
{
    public partial class Report : System.Web.UI.Page
    {
        SQL sql = new SQL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTotal_Click(object sender, EventArgs e)
        {
            sql.Sum("Transaction", GridView1, "amount");
            sql.display("Transaction", GridView1);
        }

        protected void btnGroup_Click(object sender, EventArgs e)
        {

        }
    }
}