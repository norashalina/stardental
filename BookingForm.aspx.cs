using DocumentFormat.OpenXml.Math;
using DocumentFormat.OpenXml.Office2010.Excel;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock;

namespace Star
{
    public partial class BookingForm : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //LoadCombobox();
        }

        protected void txtDate_OnTextChanged(object sender, EventArgs e)
        {
            DataTable dt = GetTimeSelection();
            ddTime.Items.Clear();
            ddTime.DataSource = dt;
            ddTime.DataSource = dt;
            ddTime.DataValueField = "Time";
            ddTime.DataTextField = "Time";
            ddTime.DataBind();
        }

        public DataTable GetTimeSelection()
        {
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();

            using (SqlConnection conn = new SqlConnection(strcon))
            {
                SqlCommand cmd = new SqlCommand(@"  Select * from TimeSelection where time not in (select Time from appointment where [Services] = '" + ddService.Text + "' and Date = '" + txtDate.Text + "')", conn);
                cmd.CommandType = CommandType.Text;
                da.SelectCommand = cmd;
                da.Fill(dt);
            }
            return dt;
        }
        public bool SavePatientData(string Name, string PhoneNo, string Email, DateTime Date, string Services, string Time, string Status, int PatientID)
        {
            bool result = false;
            SqlTransaction trans = null;
            
            try
            {
                using (SqlConnection conn1 = new SqlConnection(strcon))
                {
                    conn1.Open();
                    trans = conn1.BeginTransaction();
                    PatientID = InsertBookingDetails(txtName.Text.ToUpper(), txtPhoneNo.Text, txtEmail.Text, Convert.ToDateTime(txtDate.Text), ddService.SelectedItem.ToString(), ddTime.SelectedItem.ToString(), "Active", conn1, trans);
                    trans.Commit();
                    result = true;
                    //HttpContext.Current.Session["productSuppId"] = productSuppId;
                }
                return result;
            }
            catch (Exception ex)
            {
                try
                {
                    trans.Rollback();
                    throw ex;
                }
                catch (Exception)
                {
                    throw ex;
                }
            }
        }
        public int InsertBookingDetails(string Name, string PhoneNo, string Email, DateTime Date, string Services, string Time, string Status, SqlConnection conn, SqlTransaction tran)
        {
            SqlCommand cmd;
            SqlParameter outPutPara = new SqlParameter("@PatientID", SqlDbType.Int);
            outPutPara.Direction = ParameterDirection.Output;

            Int32 PatientID = 0;
            cmd = new SqlCommand("InsertBookingDetails");
            cmd.Parameters.Add(new SqlParameter("@Name", Name));
            cmd.Parameters.Add(new SqlParameter("@Email", Email));
            cmd.Parameters.Add(new SqlParameter("@PhoneNo", PhoneNo));
            cmd.Parameters.Add(new SqlParameter("@Date", Date));
            cmd.Parameters.Add(new SqlParameter("@Services", Services));
            cmd.Parameters.Add(new SqlParameter("@Status", Status));
            cmd.Parameters.Add(new SqlParameter("@Time", Time));
            cmd.Parameters.Add(outPutPara);

            cmd.Connection = conn;
            cmd.Transaction = tran;
            cmd.CommandType = CommandType.StoredProcedure;



            if (cmd.ExecuteNonQuery() > 0)
            {
                if (PatientID == 0) PatientID = Convert.ToInt32(outPutPara.Value);
            }
            return PatientID;
        }
        protected void btnSubmit_Onclick(object sender, EventArgs e)
        {
            #region
            if(Convert.ToDateTime(txtDate.Text) < DateTime.Now.AddDays(3))
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Info", "alert('Please select a date that is at least three days from today.');", true);
            }
            else
            {
                try
                {
                    DataTable dt;
                    dt = GetPatientCheck(txtEmail.Text);
                    if (dt.Rows.Count > 0)
                    {
                        DataTable Data1 = GetPatientCheck(txtEmail.Text);
                        if (Data1.Rows.Count > 0)
                        {
                            Int16 ID = Convert.ToInt16(Data1.Rows[0]["PatientID"].ToString());
                            InsertBookingDetailsForExistingPatient(ID, Convert.ToDateTime(txtDate.Text), ddService.SelectedItem.ToString(), ddTime.SelectedItem.ToString(), "Active");
                            #region
                            try
                            {
                                SqlConnection con2 = new SqlConnection(strcon);
                                if (con2.State == ConnectionState.Closed)
                                {
                                    con2.Open();
                                }

                                DateTime date = Convert.ToDateTime(txtDate.Text);
                                SqlCommand cmd2 = new SqlCommand("SELECT * from [Patient] where Email = '" + txtEmail.Text + "';", con2);
                                cmd2.CommandType = CommandType.Text;
                                SqlDataReader reader = cmd2.ExecuteReader();
                                if (reader.HasRows)
                                {
                                    while (reader.Read())
                                    {
                                        mailSender.Mailsender(reader["Email"].ToString(), "Appointment Dental", "HELLO " + reader["name"].ToString() + ",\n\nCongratulations! You have successfully scheduled an appointment with Star Dental.\n\n " +
                                            "Appointment Details \n\nDate & Time: " + date.ToString("dd-MM-yyyy") + " & " + ddTime.Text + "\n\nService: " + ddService.Text + ".\n\nTo review or modify your appointment details, please click (https://localhost:44324/Login.aspx).\n" +
                                            "\n\nThank you");

                                    }
                                }
                                con2.Close();

                            }
                            catch (Exception ex)
                            {
                                Response.Write("<script>alert('" + ex.Message + "');</script>");

                            }
                            ScriptManager.RegisterStartupScript(this, GetType(), "Info", "alert('An appointment has been made. Please check your email for the details.');window.location = 'Default.aspx';", true);
                            #endregion
                        }
                    }
                    else
                    {

                        Int32 PatientID = 0;
                        SavePatientData(txtName.Text, txtPhoneNo.Text, txtEmail.Text, Convert.ToDateTime(txtDate.Text), ddService.SelectedItem.ToString(), ddTime.SelectedItem.ToString(), "Active", PatientID);
                        #region
                        try
                        {
                            SqlConnection con2 = new SqlConnection(strcon);
                            if (con2.State == ConnectionState.Closed)
                            {
                                con2.Open();
                            }

                            DateTime date = Convert.ToDateTime(txtDate.Text);
                            SqlCommand cmd2 = new SqlCommand("SELECT * from [Patient] where Email = '" + txtEmail.Text + "';", con2);
                            cmd2.CommandType = CommandType.Text;
                            SqlDataReader reader = cmd2.ExecuteReader();
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    mailSender.Mailsender(reader["Email"].ToString(), "Appointment Dental", "HELLO " + reader["name"].ToString() + ",\n\nCongratulations! You have successfully scheduled an appointment with Star Dental.\n\n " +
                                        "Appointment Details \n\nDate & Time: " + date.ToString("dd-MM-yyyy") + " & " + ddTime.Text + "\n\nService: " + ddService.Text + ".\n\nTo review or modify your appointment details, please click (https://localhost:44324/Login.aspx).\n" +
                                        "Username: " + reader["Email"].ToString() + "\nPassword: P@ssw0rd \n\nThank you");

                                }
                            }
                            con2.Close();

                        }
                        catch (Exception ex)
                        {
                            Response.Write("<script>alert('" + ex.Message + "');</script>");

                        }
                        ScriptManager.RegisterStartupScript(this, GetType(), "Info", "alert('An appointment has been made. Please check your email for the details.');window.location = 'Default.aspx';", true);
                        #endregion
                        //Response.Write("<script>alert('Appointment has been made. Please chek your email for your appointment details');</script>");
                    }
                    
                }

                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
           
            #endregion
        }

        public DataTable GetPatientCheck(string Email)
        {
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();

            using (SqlConnection conn = new SqlConnection(strcon))
            {
                SqlCommand cmd = new SqlCommand(@"SELECT * FROM Patient where Email = '" + Email + "'", conn);
                cmd.CommandType = CommandType.Text;
                da.SelectCommand = cmd;
                da.Fill(dt);
            }
            return dt;
        }
        public DataTable GetPatientID(string Email)
        {
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();

            using (SqlConnection conn = new SqlConnection(strcon))
            {
                SqlCommand cmd = new SqlCommand(@"SELECT PatientID FROM Patient where Email = '" + Email + "'", conn);
                cmd.CommandType = CommandType.Text;
                da.SelectCommand = cmd;
                da.Fill(dt);
            }
            return dt;
        }

        public void InsertBookingDetailsForExistingPatient(int PatientID, DateTime Date, string Services, string Time, string Status)
        {
            using (SqlConnection conn = new SqlConnection(strcon))
            {
                SqlCommand cmd = new SqlCommand("InsertBookingDetailsForExistingPatient", conn);
                conn.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@PatientID", PatientID));
                cmd.Parameters.Add(new SqlParameter("@Date", Date));
                cmd.Parameters.Add(new SqlParameter("@Services", Services));
                cmd.Parameters.Add(new SqlParameter("@Status", Status));
                cmd.Parameters.Add(new SqlParameter("@Time", Time));

                cmd.ExecuteNonQuery();
            }
        }
    }
}