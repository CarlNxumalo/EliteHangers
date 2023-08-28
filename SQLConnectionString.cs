using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace EliteHangers
{
    public class SQLConnectionString
    {
        //holds the connection string
        public string connection_string = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

    }
}