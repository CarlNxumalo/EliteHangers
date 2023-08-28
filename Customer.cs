using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EliteHangers
{
    public class Customer
    {

        private string name { get; set; }
        private string surname { get; set; }
        private string email { get; set; }
        private string password { get; set; }
        private string plane_number { get; set; }

        //add customer needs details
        public void addCustomer(string name, string surname, string email, string password, string plane_number)
        {
            SQL sql = new SQL();
            sql.addCustomer(name, surname, email, password, plane_number);
        }

        //delete user needs and ID 
        public void deleteCustomer(int id)
        {

        }

        //update needs new user details
        public void updateCustomer(string name, string surname, string email, string password, string plane_number)
        {

        }
    }
}