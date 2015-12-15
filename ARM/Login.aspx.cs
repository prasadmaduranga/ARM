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
using ARM;


namespace ARM
{
    public partial class Login : System.Web.UI.Page
    {

        //Load the Login interface 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;




            }
        }

        //Ecncrypt the pass word and send to database
        // <summary>
        // Redirecting to the relevent page depending on the user
        // </summary>
        // <param name="sender"></param>
        // <param name="e"></param>
        protected void Button2_Click(object sender, EventArgs e)
        {
            string password = TextBox2.Text;

            MD5 md5Hash = MD5.Create();

            string hash = GetMd5Hash(md5Hash, password);


            hash = hash.Substring(3, 12);
            


            int result = DBHnadler.validateUser(TextBox1.Text,hash);

            if (result == 1)
            {
                ARMEntities dbContext = new ARMEntities();
                getCustomerInfo_Result obj = dbContext.getCustomerInfo(TextBox1.Text).FirstOrDefault();


                Session["userName"] = obj.userName;
                Session["name"] = obj.userName;

                Session["imageURL"] = obj.imageURL;


                Response.Redirect("~/Customer/Home.aspx");
            }
            else {
                ClientScript.RegisterStartupScript(GetType(), "hwaa", "alert('Either username or password incorrect');", true);

                TextBox1.Text = "";
                TextBox2.Text = "";
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)   //Redirect to sign in
        {
            MultiView1.ActiveViewIndex = 1;
        }



        // <summary>
        // Redirecting to the relevent page depending on the user
        // </summary>
        // <param name="sender"></param>
        // <param name="e"></param>
        protected void Button3_Click(object sender, EventArgs e)
        {


        }


        // <summary>
        // upload profile picture of the user
        // </summary>
        // <param name="sender"></param>
        // <param name="e"></param>
        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
          
          

            string password = TextBox7.Text;

            MD5 md5Hash = MD5.Create();

            string hash = GetMd5Hash(md5Hash, password);


            hash = hash.Substring(3, 12);

            ARMEntities dbcontext = new ARMEntities();
           





            string imageURL = "~/Images/Defualt.png";
            if (Page.IsValid)
            {
                dbcontext.createUser(TextBox9.Text, TextBox6.Text, TextBox13.Text, TextBox5.Text, TextBox3.Text, TextBox10.Text, hash, TextBox4.Text,
                    TextBox11.Text, TextBox12.Text, imageURL);


                ARMEntities dbContext = new ARMEntities();
                getCustomerInfo_Result obj = dbContext.getCustomerInfo(TextBox9.Text).FirstOrDefault();


                Session["userName"] = obj.userName;
                Session["name"] = obj.userName;

                Session["imageURL"] = obj.imageURL;


                Response.Redirect("~/Customer/Home.aspx");

            }
            else {
                ClientScript.RegisterStartupScript(GetType(), "hwaa", "alert('Invalid data');", true);
                Response.Redirect("~/Login.aspx");
            }

        }

        // <summary>
        // Redirecting to the relevent page depending on the user
        // </summary>
        // <param name="md5Hash"></param>
        // <param name="input"></param>
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

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
                args.IsValid = true;
            
           
        }


    }

}