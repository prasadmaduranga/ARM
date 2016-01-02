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
                // Page.Form.Attributes.Add("enctype", "multipart/form-data");}




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


            if (FileUpload1.HasFile)
            {
                String extension = System.IO.Path.GetExtension(FileUpload1.FileName);
                if (extension.Equals(".PNG", StringComparison.InvariantCultureIgnoreCase) || extension.Equals(".jpeg", StringComparison.InvariantCultureIgnoreCase) || extension.Equals(".jpg", StringComparison.InvariantCultureIgnoreCase))
                {
                    FileUpload1.SaveAs(Server.MapPath("~/Images/" + FileUpload1.FileName));
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "hwa", "alert('Incompatible File Format');", true);
                    FileUpload1.Attributes.Clear();

                }
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "hwa", "alert('Choose an image');", true);

            }
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
            string imageURL = "";
            if (FileUpload1.HasFile)
            {
                imageURL = "~/Images/" + FileUpload1.FileName;
                Session["imageURL"] = imageURL;
            }
            else
            {
                imageURL = "~/Images/" + "Default.jpg";
                Session["imageURL"] = imageURL;

            }

            int i = RadioButtonList1.SelectedIndex;

            string userType = "";
            if (i == 0) { userType = "CourseAdmin"; }
            else if (i == 1) { userType = "Lecturer"; }
            else if (i == 2) { userType = "IndustryProfessional"; }

            string password = TextBox7.Text;

            MD5 md5Hash = MD5.Create();

            string hash = GetMd5Hash(md5Hash, password);


            hash = hash.Substring(3, 12);

           
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