using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EliteHangers
{
    public partial class Clerk : System.Web.UI.Page
    {
        string query = "";
        SQL sql = new SQL();
        UserAuth user = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            /* if(ddlBookingID.SelectedIndex != -1)
             {
                 btnCheckIn.Enabled = true;
             }*/
            if (Session["user"] != null)
            {
                user = (UserAuth)Session["user"];

                if (user.role == 2)//customer
                {
                    Response.Redirect("dashboard3.aspx");
                }
                else if (user.role == 1)
                {
                    //manager
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    //employee clerk
                    
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnCheckIn_Click(object sender, EventArgs e)
        {
            try
            {
                //bookingid zero 
                int booking = 0;
                if (int.TryParse(ddlBookingID.SelectedValue, out booking))
                {
                    if (booking > 0)//selected something
                    {
                        //add it to the check in table
                        lblError.Text = "succefully checked in booking ID: " + booking;
                        query = $"INSERT INTO Checkin(booking_id, employee_id, date) VALUES({booking}, {user.id}, GETDATE());";
                        sql.nonQuery(query);
                        query = Session["query"].ToString();
                        sql.displayDGV(query, dgvBookings, "Booking");
                        sql.comboBox(query, "Booking", "booking_id", ddlBookingID, "booking_id");


                    }

                    else if (booking == 0)
                    {
                        lblError.Text = "Select a booking(not zero)";
                    }
                    else
                    {
                        lblError.Text = "No bookings avalible to check in";
                    }
                }
                else
                {
                    lblError.Text = "Select Booking ID";
                }
            }
            catch (Exception ex)
            {

                lblError.Text = "Service currently under maintanence";
                Console.WriteLine(ex);
            }

        }

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {

        }

        protected void txtCustomer_TextChanged(object sender, EventArgs e)
        {
            try
            {
                //search for inner join booking with customer 
                //showing bookings 
                query = "Select Booking.booking_id, Customer.name, Customer.surname, Hangar.name AS Hangar, Booking.date_start, Booking.date_end " +
                    "from Booking " +
                    "INNER JOIN Customer ON Booking.customer_id = Customer.customer_id " +
                    "INNER JOIN Hangar ON Booking.hangar_id = Hangar.hangar_id " +
                    "left join Checkin on Booking.booking_id = Checkin.booking_id " +
                    $"where(Customer.name like '%{txtCustomer.Text}%' OR Customer.surname like '%{txtCustomer.Text}%' OR Customer.email like '%{txtCustomer.Text}%') AND Checkin.booking_id IS NULL AND Booking.status = 1 " +
                    $"order by Booking.date_start;";
                Session["query"] = query;

                sql.displayDGV(query, dgvBookings, "Booking");
                sql.comboBox(query, "Booking", "booking_id", ddlBookingID, "booking_id");
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }
        protected void search()
        {

        }

        protected void ddlBookingID_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void txtCustomerOut_TextChanged(object sender, EventArgs e)
        {
            try
            {
                //search for inner join booking with customer 
                //showing bookings 
                query = "Select Booking.booking_id, Customer.name, Customer.surname, Hangar.name AS Hangar, Booking.date_start, Booking.date_end " +
                    "from Booking " +
                    "INNER JOIN Customer ON Booking.customer_id = Customer.customer_id " +
                    "INNER JOIN Hangar ON Booking.hangar_id = Hangar.hangar_id " +
                    "left join Checkout on Booking.booking_id = Checkout.booking_id " +
                    $"where(Customer.name like '%{txtCustomerOut.Text}%' OR Customer.surname like '%{txtCustomerOut.Text}%' OR Customer.email like '%{txtCustomerOut.Text}%') AND Checkout.booking_id IS NULL AND Booking.status = 1 " +
                    $"order by Booking.date_end;";
                Session["query2"] = query;

                sql.displayDGV(query, dgvOut, "Booking");
                sql.comboBox(query, "Booking", "booking_id", ddlCheckout, "booking_id");
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }

        protected void btnCHeckOut_Click1(object sender, EventArgs e)
        {
            try
            {
                //bookingid zero 
                int booking = 0;
                if (int.TryParse(ddlCheckout.SelectedValue, out booking))
                {
                    if (booking > 0)//selected something
                    {
                        //add it to the check in table
                        lblErrorOut.Text = "succefully checked in booking ID: " + booking;
                        query = $"INSERT INTO Checkout(booking_id, employee_id, date) VALUES({booking}, {user.id}, GETDATE());";
                        sql.nonQuery(query);
                        query = Session["query2"].ToString();
                        sql.displayDGV(query, dgvOut, "Booking");
                        sql.comboBox(query, "Booking", "booking_id", ddlCheckout, "booking_id");


                    }

                    else if (booking == 0)
                    {
                        lblErrorOut.Text = "Select a booking(not zero)";
                    }
                    else
                    {
                        lblErrorOut.Text = "No bookings avalible to check in";
                    }
                }
                else
                {
                    lblErrorOut.Text = "Select Booking ID";
                }
            }
            catch (Exception ex)
            {

                lblErrorOut.Text = "Service currently under maintanence";
                Console.WriteLine(ex);
            }
        }

        protected void ddlCheckout_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}