using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;


using System.Text;
using System.Security.Cryptography;
using System.Data.SqlClient;
using ARM;


namespace ARM.Customer
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
                


            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            string userName = Session["userName"].ToString();
            String password = ((TextBox)DetailsView1.Rows[0].Cells[1].FindControl("TextBox1")).Text;

            

            MD5 md5Hash = MD5.Create();

            string hash = GetMd5Hash(md5Hash, password);


            hash = hash.Substring(3, 12);

            ARMEntities dbContext = new ARMEntities();
            dbContext.spUpdatePassword(userName, hash);

            Response.Redirect("~/Customer/Home.aspx");

        }
        static string GetMd5Hash(MD5 md5Hash, string input)
        {

            // Convert the input string to a byte array and compute the hash. 
            byte[] data = md5Hash.ComputeHash(Encoding.UTF8.GetBytes(input));

            // Create a new Stringbuilder to collect the bytes 
            // and create a string.
            StringBuilder sBuilder = new StringBuilder();

            // Loop through each byte of the hashed data  
            // and format each one as a hexadecimal string. 
            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }

            // Return the hexadecimal string. 
            return sBuilder.ToString();
        }
        protected void LinkButton5_Click(object sender, EventArgs e)
        {

        }
    }
}