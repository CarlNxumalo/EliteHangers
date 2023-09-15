using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EliteHangers
{
    public partial class CancelBooking : System.Web.UI.Page
    {
        private string query;
        private SQL sql = new SQL();
        UserAuth user = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                UserAuth user = (UserAuth)Session["user"];
                if (user.role == 2)//customer
                {
                    if (!IsPostBack)
                    {
                        query = "SELECT booking_id FROM Booking where customer_id = "+user.id + " AND status = 1 ";
                        sql.comboBox(query, "Booking", "booking_id", ddlBookingID, "booking_id");

                        //populat table
                       
                    }
                    query = $"SELECT booking_id, Hangar.name, date_start, date_end FROM Booking INNER JOIN Hangar ON Booking.hangar_id = Hangar.hangar_id WHERE Booking.customer_id = {user.id} AND Booking.status = 1 ";
                    sql.displayDGV(query, dgvBookings, "Booking");
                }
                else if(user.role == 1)
                {
                    //manager

                }
                else
                {
                    //0
                    //employee clerk
                }
                
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }


        protected void ddlBookingID_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            try
            {
                //get the booking id
                //set booking to status to 2
                if (int.Parse(ddlBookingID.SelectedValue) == 0)
                {
                    lblError.Text = "Select booking id greater than zero\n Or create a booking";
                }
                else
                {
                    //cancel booking
                    sql.cancel(int.Parse(ddlBookingID.SelectedValue));
                    lblError.Text = "Canceled booking " + ddlBookingID.SelectedValue;

                    user = (UserAuth)Session["user"];

                    query = $"SELECT booking_id, Hangar.name, date_start, date_end FROM Booking INNER JOIN Hangar ON Booking.hangar_id = Hangar.hangar_id WHERE Booking.customer_id = {user.id} AND Booking.status = 1 ";
                    sql.displayDGV(query, dgvBookings, "Booking");

                    query = "SELECT booking_id FROM Booking where customer_id = " + user.id + " AND status = 1 ";
                    sql.comboBox(query, "Booking", "booking_id", ddlBookingID, "booking_id");

                }

            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }
    }
}