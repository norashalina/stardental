using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Data;
using System.Drawing;
using System.Collections;
using DocumentFormat.OpenXml.Office2010.ExcelAc;

namespace Star
{
    public partial class AppointmentList : System.Web.UI.Page
    {
        string Departmentname, status, sqlSearch, sqlplus2, searcDept, ReqnameName,DepartName;
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        //LodgeCaseRegister _LodgeCaseRegister = new LodgeCaseRegister();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Page.MaintainScrollPositionOnPostBack = true;
            ScrfList();
            if (!IsPostBack)
            {
                FillCombos();
            }

        }

        void FillCombos()
        {
            DataTable dt = GetTimeSelection1();
            ddTime.Items.Clear();
            ddTime.DataSource = dt;
            ddTime.DataSource = dt;
            ddTime.DataValueField = "Time";
            ddTime.DataTextField = "Time";
            ddTime.DataBind();
        }
        void ScrfList()
        {
            #region
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT [ID], P.[PatientID], Name, PhoneNo ,[Services] ,convert(varchar, [Date], 103) Date ,[Time] ,[Status] from [Appointment] A INNER JOIN Patient P ON P.PatientID = A.PatientID order by A.Date asc ", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet dt = new DataSet();
                da.Fill(dt);
                gdlist.DataSource = dt;
                gdlist.DataBind();
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
            #endregion
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                pnlUpdate.Visible = true;
                btnUpdate.Focus();

                int rowIndex = Convert.ToInt32(e.CommandArgument);
                Session["ID"] = rowIndex;
                DataTable Data1 = GetAppointmentList(Convert.ToInt32(rowIndex));

                txtService.Text = Data1.Rows[0]["Services"].ToString();
                if (DateTime.TryParse(Data1.Rows[0]["Date"].ToString(), out DateTime appointmentDate))
                {
                    txtDate.Text = appointmentDate.ToString("yyyy-MM-dd");
                }
                ddTime.Text = Data1.Rows[0]["Time"].ToString();
                ddStatus.Text = Data1.Rows[0]["Status"].ToString();
            }
            if (e.CommandName == "Padam")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gdlist.Rows[rowIndex];

                //int val = (int)GridView1.DataKeys[rowIndex]["id"];


                //string ID = (row.FindControl("btndelete") as Button).Text;
                //string UserID = row.Cells[0].Text;
                string ID = gdlist.DataKeys[row.RowIndex].Value.ToString();
                //int ID = Convert.ToInt32(row.Cells[0].Text);
                #region
                try
                {

                    SqlConnection con3 = new SqlConnection(strcon);
                    if (con3.State == ConnectionState.Closed)
                    {
                        con3.Open();
                    }
                    SqlCommand cmd4 = new SqlCommand("DELETE FROM Appointment WHERE ID ='" + ID + "'", con3);
                    cmd4.CommandType = CommandType.Text;
                    cmd4.ExecuteReader();
                    con3.Close();
                    ScriptManager.RegisterStartupScript(this, GetType(), "Info", "alert('The appointment has been successfully deleted.');window.location = 'AppointmentList.aspx';", true);

                    ScrfList();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
                #endregion

            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow) {
                LinkButton btndelete = (LinkButton)e.Row.FindControl("btndelete");
                if (e.Row.Cells[5].Text == "Cancel")
                {
                    btndelete.Visible = true;
                }
                else
                {
                    btndelete.Visible = false;
                }
            }
        }

        protected void btnUpdate_Onclick(object sender, EventArgs e)
        {
            try
            {
                UpdateAppointment(Convert.ToInt16(Session["ID"].ToString()), ddStatus.Text, txtService.Text, Convert.ToDateTime(txtDate.Text), ddTime.Text);
                ScriptManager.RegisterStartupScript(this, GetType(), "Info", "alert('Update Successfully');window.location = 'AppointmentList.aspx';", true);
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        public int UpdateAppointment(int ID, string Status, string Services, DateTime Date, string Time)
        {
            using (SqlConnection conn = new SqlConnection(strcon))
            {
                SqlCommand cmd = new SqlCommand("UPDATE Appointment SET Status=@Status,Services=@Services,Time=@Time,Date=@Date WHERE ID = @ID", conn);
                cmd.Parameters.Add(new SqlParameter("@ID", ID));
                cmd.Parameters.Add(new SqlParameter("@Status", Status));
                cmd.Parameters.Add(new SqlParameter("@Services", Services));
                cmd.Parameters.Add(new SqlParameter("@Date", Date));
                cmd.Parameters.Add(new SqlParameter("@Time", Time));
                cmd.CommandType = CommandType.Text;
                conn.Open();
                return (cmd.ExecuteNonQuery());
            }
        }

        public DataTable GetAppointmentList(int ID)
        {
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();

            using (SqlConnection conn = new SqlConnection(strcon))
            {
                SqlCommand cmd = new SqlCommand(@"SELECT [ID],[PatientID],[Services] ,convert(varchar, [Date], 103) Date,[Time],[Status] FROM Appointment where ID = '" + ID + "'", conn);
                cmd.CommandType = CommandType.Text;
                da.SelectCommand = cmd;
                da.Fill(dt);
            }
            return dt;
        }

        public DataTable GetTimeSelection1()
        {
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();

            using (SqlConnection conn = new SqlConnection(strcon))
            {
                SqlCommand cmd = new SqlCommand(@"  Select * from TimeSelection ", conn);
                cmd.CommandType = CommandType.Text;
                da.SelectCommand = cmd;
                da.Fill(dt);
            }
            return dt;
        }
    }
}