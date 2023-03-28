using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace work_01_Authentication
{
    public class Connection
    {
        public static string GetConnectionString()
        {
            string con = "Data Source =.; Initial Catalog = MadDB; Integrated Security = True";
            return con;
        }
    }
}