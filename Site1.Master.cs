using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STAR
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Write("<script>alert('Invalid credentials please login');</script>");
                Session.Clear();
                Session.RemoveAll();
                Session.Abandon();
                Response.Redirect("Default.aspx");
            }
            label.Text = Session["username"].ToString();
            try
            {
                if (Session["username"].Equals("admin"))
                {
                    BookingReq.Visible = true;
                    //Patient.Visible = true;
                    UserBooking.Visible = false;


                }
                else 
                {
                    BookingReq.Visible = false;
                    //Patient.Visible = false;
                    UserBooking.Visible = true;

                }

            }
            catch (Exception)
            {

            }
        }
    }
}