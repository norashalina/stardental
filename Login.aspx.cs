using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Data.SqlClient;

namespace Star
{
    public partial class Login : System.Web.UI.Page
    {
        string Disable;
        bool firstlogin;
        DateTime expirydate;
        DateTime currentDate;
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private string CalcPwdHash(string PlainPwd)
        {
            #region ***
            //This function convert password from plain text into Hash

            System.Security.Cryptography.SHA1CryptoServiceProvider SHA1 = new System.Security.Cryptography.SHA1CryptoServiceProvider();
            UTF8Encoding ue = new UTF8Encoding();
            byte[] pwdbuffer = ue.GetBytes(PlainPwd);
            byte[] hashBytes = SHA1.ComputeHash(pwdbuffer);

            // Convert the encrypted bytes back to a string (base 16)
            string hashString = String.Empty;

            for (int i = 0; i < hashBytes.Length; i++)
            {
                hashString += Convert.ToString(hashBytes[i], 16).PadLeft(2, '0');
            }

            return hashString.PadLeft(32, '0').ToUpper();
            #endregion
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    if(username.Text == "admin" && password.Text == "admin123")
        //    {
        //        Session["username"] = "admin";
        //        Response.Redirect("Dashboard.aspx");
        //    }
        //    else if(username.Text == "user1" && password.Text == "user123")
        //    {
        //        Session["username"] = "user1";
        //        Response.Redirect("Dashboard.aspx");
        //    }
        //    else
        //    {
        //        Response.Write("<script>alert('Login Failed: Invalid Credential');</script>");
        //    }
        //}
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            try
            {
                if (username.Text == "admin" && password.Text == "admin123")
                {
                    Session["username"] = "admin";
                    Response.Redirect("Dashboard.aspx");
                }
                else 
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }
                    String myquery = "select * from [User] u Inner Join Patient p On p.PatientID = u.PatientID where Email =@uName AND Password =@paswrd";
                    SqlCommand cmd = new SqlCommand(myquery, con);
                    cmd.Parameters.AddWithValue("@uName", username.Text.Trim());
                    //cmd.Parameters.AddWithValue("@paswrd", CalcPwdHash(password.Text.Trim()));
                    cmd.Parameters.AddWithValue("@paswrd", password.Text.Trim());
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            firstlogin = Convert.ToBoolean(dr.GetValue(2).ToString());
                            if (firstlogin == true )
                            {
                                password.Enabled = false;
                                ScriptManager.RegisterStartupScript(this, GetType(), "myFunction", "$(function () {$('#myModal').modal({'backdrop': 'static'});})", true);

                            }
                            else
                            {
                                Response.Write("<script>alert('Successful login');</script>");
                                Session["Name"] = dr.GetValue(4).ToString();
                                Session["PatientID"] = dr.GetValue(0).ToString();
                                Session["username"] = dr.GetValue(6).ToString();
                                Response.Redirect("Dashboard.aspx");
                            }
                        }
                        con.Close();
                    }
                    else
                    {
                        
                        Response.Write("<script>alert('Login Failed: Wrong Credential');</script>");

                    }
                    
                }
               

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void changePass_Click(object sender, EventArgs e)
        {
            if (password.Text ==  "" && newPassword.Text == "")
            {
                oldP.Visible = true;
                oldP.Text = "Please fill in all text field";
 
            }           
            else if(newPassword.Text != rePassword.Text)
            {
                oldP.Visible = true;
                oldP.Text = "Password not match";

            }
            else
            {
                #region
                try
                {
                    SqlConnection con3 = new SqlConnection(strcon);
                    if (con3.State == ConnectionState.Closed)
                    {
                        con3.Open();
                    }
                    SqlCommand cmd4 = new SqlCommand("UPDATE [User] SET password='" + rePassword.Text + "', FirstLogin = 0 WHERE PatientID= (Select PatientID From Patient where Email = '" + username.Text.Trim() + "')", con3);
                    cmd4.CommandType = CommandType.Text;
                    cmd4.ExecuteReader();
                    con3.Close();
                    Response.Write("<script>alert('password has been change');</script>");
                    password.Enabled = true;

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }                
                #endregion
            }
        }
    }
}