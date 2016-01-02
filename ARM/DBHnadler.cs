

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Security.Cryptography;
using System.Data.SqlClient;
using System.Data.Entity;
using ARM;

namespace ARM
{
    public class DBHnadler
    {

        public static int validateUser(string userName, string password)
        {

            ARMEntities dbContext = new ARMEntities();
            int result = dbContext.validateCustomer(userName, password).FirstOrDefault()??-1;
            return result;

        }
    }
}