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
        UserAuth user;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["user"] != null)
            {
                user = (UserAuth) Session["user"];

                if (user.role == 2)//customer
                {
                    Response.Redirect("dashboard3.aspx");
                }
                if (user.role == 0)//employee
                {
                    Response.Redirect("Clerk.aspx");
                }

                Label1.Text = "Elite Reports " + DateTime.Now.ToString("U");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
            
        }

        protected void btnTotal_Click(object sender, EventArgs e)
        {
            string query = "SELECT DATEPART(MONTH, date_start) AS MonthNumber ,DATENAME(MONTH, date_start) AS Month, COUNT(*) AS Number_of_Bookings " +
               "FROM Booking " +
               "GROUP BY DATEPART(MONTH, date_start), DATENAME(MONTH, date_start) " +
               "ORDER BY MonthNumber;";

            sql.displayDGV(query, GridView1, "Booking");
        }

        protected void btnGroup_Click(object sender, EventArgs e)
        {
            string query = @"SELECT TOP 5
                                c.[customer_id],
                                c.[name],
                                c.[surname],
                                c.[email],
                                SUM(t.[amount]) AS TotalAmountSpent
                            FROM
                                [dbo].[Customer] c
                            INNER JOIN
                                [dbo].[Booking] b ON c.[customer_id] = b.[customer_id]
                            INNER JOIN
                                [dbo].[Transaction] t ON b.[booking_id] = t.[booking_id]
                            GROUP BY
                                c.[customer_id], c.[name], c.[surname], c.[email]
                            ORDER BY
                                TotalAmountSpent DESC;
                            ";
            sql.displayDGV(query, GridView1, "Customer");
        }

        protected void btnAverage_Click(object sender, EventArgs e)
        {
            //Revenue per time period
            string query = @"
                        SELECT
                            DATEPART(MONTH, date) AS MonthNumber,
                            DATENAME(MONTH, date) AS MonthName,
                            FORMAT(SUM(amount), 'C', 'en-ZA') AS Total_Revenue
                        FROM
                            [dbo].[Transaction]
                        GROUP BY
                            DATEPART(MONTH, date), DATENAME(MONTH, date)
                        ORDER BY
                            MonthNumber;
                    ";

            sql.displayDGV(query, GridView1, "Booking");
        }
    }
}