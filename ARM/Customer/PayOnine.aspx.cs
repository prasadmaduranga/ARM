using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARM.Customer
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
              
                DetailsView1.DataBind();


            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            //paynow

            string userName = Session["userName"].ToString();
            String acNumber = ((DropDownList)DetailsView1.Rows[0].Cells[1].FindControl("DropDownList2")).SelectedValue.ToString();
            double amount =Convert.ToDouble(((TextBox)DetailsView1.Rows[1].Cells[1].FindControl("TextBox2")).Text.ToString());
            String bank = ((DropDownList)DetailsView1.Rows[2].Cells[1].FindControl("DropDownList1")).SelectedValue.ToString();
            String creditCardNo = ((TextBox)DetailsView1.Rows[3].Cells[1].FindControl("TextBox3")).Text;
           DateTime exDate = ((Calendar)DetailsView1.Rows[4].Cells[1].FindControl("Calendar1")).SelectedDate.Date;

            String dibCode = ((TextBox)DetailsView1.Rows[1].Cells[1].FindControl("TextBox4")).Text;

            try
            {
                ARMEntities df = new ARMEntities();
                df.spInsertPaymentNew(acNumber, amount, bank, creditCardNo, exDate, dibCode);
            }
            catch (Exception ex) {

                Response.Write(ex.Message);
            }




            Response.Redirect("~/Customer/PaymentHistory.aspx");

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer/PaymentHistory.aspx");
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}