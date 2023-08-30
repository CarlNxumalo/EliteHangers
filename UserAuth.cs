using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EliteHangers
{
    public class UserAuth
    {
        //variables
        public int role;
        public string name;
        public string surname;
        public int id;
        public UserAuth(int role, string name, string surname, int id)
        {
            this.role = role; // 3 customer, 0 employee, 1 manager
            this.name = name;
            this.surname = surname;
            this.id = id;
        }

    }
}