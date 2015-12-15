using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARM.Customer
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
              
                DetailsView1.DataBind();

            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            string userName = Session["userName"].ToString();
            String name = ((TextBox)DetailsView1.Rows[0].Cells[1].FindControl("TextBox1")).Text;
            String address = ((TextBox)DetailsView1.Rows[1].Cells[1].FindControl("TextBox2")).Text;
            String telephone = ((TextBox)DetailsView1.Rows[2].Cells[1].FindControl("TextBox3")).Text;
            String mobile = ((TextBox)DetailsView1.Rows[3].Cells[1].FindControl("TextBox4")).Text;
            String NIC = ((TextBox)DetailsView1.Rows[4].Cells[1].FindControl("TextBox5")).Text;
            String email = ((TextBox)DetailsView1.Rows[1].Cells[1].FindControl("TextBox6")).Text;
            String tarrifCat = ((TextBox)DetailsView1.Rows[2].Cells[1].FindControl("TextBox7")).Text;
            String region = ((TextBox)DetailsView1.Rows[3].Cells[1].FindControl("TextBox8")).Text;


            ARMEntities dbContext = new ARMEntities();
            dbContext.editCustomer(userName, name, address, telephone, mobile, NIC, email, tarrifCat, region);

            ClientScript.RegisterStartupScript(GetType(), "hwaa", "alert('Profile Information Updated Successfully');", true);

            Response.Redirect("~/Customer/ViewProfile.aspx");

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer/ViewProfile.aspx");
        }
    }
}