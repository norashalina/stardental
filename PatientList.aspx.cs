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

namespace Star
{
    public partial class PatientList : System.Web.UI.Page
    {
        string Departmentname, status, sqlSearch, sqlplus2, searcDept, ReqnameName,DepartName;
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        //LodgeCaseRegister _LodgeCaseRegister = new LodgeCaseRegister();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Page.MaintainScrollPositionOnPostBack = true;
            //ViewAllEC();
            //if (!IsPostBack)
            //{
            //    LoadComboboxdept();
            //}
            
        }

        //private void LoadComboboxdept()
        //{
        //    #region
        //    {
        //        assingtoICA.Items.Clear();
        //        assingtoPCA.Items.Clear();
        //        ddRiskDriver.Items.Clear();
        //        ddConsequence.Items.Clear();
        //        ddImpact.Items.Clear();
        //        ddLikelihood.Items.Clear();
        //        ddPriority.Items.Clear();
        //        try
        //        {
        //            SqlConnection con = new SqlConnection(strcon);
        //            if (con.State == ConnectionState.Closed)
        //            {
        //                con.Open();
        //            }
        //            SqlCommand cmd = new SqlCommand("SELECT '' id, '' iddept, '' dept UNION ALL SELECT * from [department];", con);
        //            cmd.CommandType = CommandType.Text;
        //            SqlDataAdapter da = new SqlDataAdapter(cmd);
        //            DataTable dt = new DataTable();
        //            da.Fill(dt);
        //            assingtoICA.DataSource = dt;
        //            assingtoICA.DataTextField = "dept";
        //            assingtoICA.DataValueField = "iddept";                    
        //            assingtoICA.DataBind();

        //            assingtoPCA.DataTextField = "dept";
        //            assingtoPCA.DataValueField = "iddept";

        //            assingtoPCA.DataSource = dt;
        //            assingtoPCA.DataBind();

        //            SqlCommand cmd1 = new SqlCommand("SELECT '' Type UNION ALL select Type from RiskDriver group by Type;", con);
        //            cmd1.CommandType = CommandType.Text;
        //            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        //            DataTable dt1 = new DataTable();
        //            da1.Fill(dt1);
        //            ddRiskDriver.DataSource = dt1;
        //            ddRiskDriver.DataTextField = "Type";
        //            ddRiskDriver.DataValueField = "";
        //            ddRiskDriver.DataBind();

        //            SqlCommand cmd2 = new SqlCommand("SELECT '' [Consequence], '' [ConsequenceSeq] UNION ALL select [Consequence], [ConsequenceSeq] from [RiskParameter] group by [Consequence], [ConsequenceSeq] order by [ConsequenceSeq];", con);
        //            cmd2.CommandType = CommandType.Text;
        //            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
        //            DataTable dt2 = new DataTable();
        //            da2.Fill(dt2);
        //            ddConsequence.DataSource = dt2;
        //            ddConsequence.DataTextField = "Consequence";
        //            ddConsequence.DataValueField = "";
        //            ddConsequence.DataBind();
                    
        //            //SqlCommand cmd3 = new SqlCommand("SELECT '' [Impact] UNION ALL select [Impact] from [RiskDriver] group by [Impact];", con);
        //            //cmd3.CommandType = CommandType.Text;
        //            //SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
        //            //DataTable dt3 = new DataTable();
        //            //da3.Fill(dt3);
        //            //ddImpact.DataSource = dt3;
        //            //ddImpact.DataTextField = "Impact";
        //            //ddImpact.DataValueField = "";
        //            //ddImpact.DataBind();

        //            SqlCommand cmd4 = new SqlCommand("SELECT '' Priority, '5' Level UNION ALL select Priority, Level from [RiskParameter] GROUP BY Priority, Level Order by Level desc;", con);
        //            cmd4.CommandType = CommandType.Text;
        //            SqlDataAdapter da4 = new SqlDataAdapter(cmd4);
        //            DataTable dt4 = new DataTable();
        //            da4.Fill(dt4);
        //            ddPriority.DataSource = dt4;
        //            ddPriority.DataTextField = "Priority";
        //            ddPriority.DataValueField = "";
        //            ddPriority.DataBind();

        //            SqlCommand cmd5 = new SqlCommand("SELECT '' Likelihood, '' [LikelihoodSeq] UNION ALL SELECT Likelihood, [LikelihoodSeq] FROM [RiskParameter] GROUP BY Likelihood, [LikelihoodSeq] order by [LikelihoodSeq] ;", con);
        //            cmd5.CommandType = CommandType.Text;
        //            SqlDataAdapter da5 = new SqlDataAdapter(cmd5);
        //            DataTable dt5 = new DataTable();
        //            da5.Fill(dt5);
        //            ddLikelihood.DataSource = dt5;
        //            ddLikelihood.DataTextField = "Likelihood";
        //            ddLikelihood.DataValueField = "";
        //            ddLikelihood.DataBind();

        //            con.Close();
        //        }
        //        catch (Exception ex)
        //        {
        //            Response.Write("<script>alert('Error to load department');</script>");
        //        }
        //        assingtoICA.DataBind();
        //        assingtoPCA.DataBind();
        //        ddRiskDriver.DataBind();
        //        ddPriority.DataBind();
        //        ddImpact.DataBind();
        //        ddConsequence.DataBind();
        //        ddLikelihood.DataBind();
                
        //    }
        //    #endregion
        //}

        //protected void ddRiskDriver_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    #region
        //    ddRiskDriverType.Items.Clear();
        //    try
        //    {
        //        SqlConnection con = new SqlConnection(strcon);
        //        if (con.State == ConnectionState.Closed)
        //        {
        //            con.Open();
        //        }

        //        SqlCommand cmd1 = new SqlCommand("SELECT '' Type,'' Description UNION ALL SELECT Type, Description  FROM RiskDriver Where Type In ('','" + ddRiskDriver.SelectedItem.ToString() + "');", con);
        //        cmd1.CommandType = CommandType.Text;
        //        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        //        DataTable dt1 = new DataTable();
        //        da1.Fill(dt1);
        //        ddRiskDriverType.DataSource = dt1;
        //        ddRiskDriverType.DataTextField = "Description";
        //        ddRiskDriverType.DataValueField = "";
        //        ddRiskDriverType.DataBind();

        //        con.Close();
        //    }
        //    catch (Exception)
        //    {
        //        Response.Write("<script>alert('Error to load Risk Driver');</script>");
        //    }
        //    ddRiskDriverType.DataBind();
        //    ddRiskDriverType.Visible = true;
        //    #endregion
        //}
        //protected void ddRiskDriverType_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    RiskDriver.Text = ddRiskDriver.SelectedItem.ToString() + ": " + ddRiskDriverType.SelectedItem.ToString();
        //    RiskDriver.Focus();

        //    #region
        //    ddImpact.Items.Clear();
        //    try
        //    {
        //        SqlConnection con = new SqlConnection(strcon);
        //        if (con.State == ConnectionState.Closed)
        //        {
        //            con.Open();
        //        }

        //        SqlCommand cmd1 = new SqlCommand("select Description,Impact from RiskDriver Where Description like'%" + ddRiskDriverType.SelectedItem.ToString() + "%';", con);
        //        cmd1.CommandType = CommandType.Text;
        //        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        //        DataTable dt1 = new DataTable();
        //        da1.Fill(dt1);
        //        ddImpact.DataSource = dt1;
        //        ddImpact.DataTextField = "Impact";
        //        ddImpact.DataValueField = "";
        //        ddImpact.DataBind();

        //        con.Close();
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('Error to load Impact');</script>");
        //    }
        //    ddImpact.DataBind();
        //    #endregion

        //}

        //public void refreshdata()
        //{
        //    SqlConnection con = new SqlConnection(strcon);
        //    SqlCommand cmd = new SqlCommand("SELECT * from [department]", con);
        //    SqlDataAdapter sda = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    sda.Fill(dt);
        //    GridView1.DataSource = dt;
        //    GridView1.DataBind();
            
        //    GridView2.DataSource = dt;
        //    GridView2.DataBind();
        //}
        //private void ViewAllEC()
        //{
        //    #region
        //    try
        //    {
        //        SqlConnection con = new SqlConnection(strcon);
        //        if (con.State == ConnectionState.Closed)
        //        {
        //            con.Open();
        //        }

        //        //SqlCommand cmd = new SqlCommand("SELECT No_id, Dept_Desc,Req_by,Comp_Type,Comp_Title,requestDate,Status from [LodgeComplain_EC] Where status = '1'", con);
        //        SqlCommand cmd = new SqlCommand("SELECT No_id, Dept_Desc as Dept,Req_by + ' - ' + U.name as Requester , LEFT(Comp_Details, 100) AS Comp_Details,Status from [LodgeComplain_EC] L Inner Join Users U on L.Req_by = U.staffID and status = '1'", con);
        //        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //        DataSet dt = new DataSet();
        //        da.Fill(dt);

        //        for (int i = 0; i < dt.Tables[0].Rows.Count; i++)
        //        {

        //            Departmentname = Department.Getdept(dt.Tables[0].Rows[i][1].ToString().Trim());
        //            ReqnameName = Department.GetStaffName(dt.Tables[0].Rows[i][1].ToString().Trim()) + "-" + Department.GetStaffName(dt.Tables[0].Rows[i][2].ToString().Trim());
        //            //levelname = Department.Getlevel(dt.Tables[0].Rows[i][3].ToString().Trim());
        //            status = GetStatus(dt.Tables[0].Rows[i][4].ToString().Trim());

        //            //dt.Tables[0].Rows[i][2] = Departmentname + " " + ReqnameName;
        //            //dt.Tables[0].Rows[i][3] =  ReqnameName;
        //            //dt.Tables[0].Rows[i][1] = Departmentname;
        //            dt.Tables[0].Rows[i][4] = status;



        //        }
        //        dt.AcceptChanges();

        //        ECList.DataSource = dt;
        //        ECList.DataBind();

        //        con.Close();
        //    }

        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('" + ex.Message + "');</script>");

        //    }
        //    #endregion
        //}

        //private string GetStatus(string status)
        //{
        //    #region
        //    string statusname = "ERROR";
        //    try
        //    {
        //        SqlConnection con = new SqlConnection(strcon);
        //        if (con.State == ConnectionState.Closed)
        //        {
        //            con.Open();
        //        }
        //        SqlCommand cmd = new SqlCommand("SELECT * from [scrfStatus] where statusid ='" + status + "';", con);
        //        cmd.CommandType = CommandType.Text;
        //        SqlDataReader reader = cmd.ExecuteReader();
        //        if (reader.HasRows)
        //        {
        //            while (reader.Read())
        //            {
        //                statusname = reader["status"].ToString();

        //            }
        //        }
        //        con.Close();
        //        return statusname;
        //    }
        //    catch (Exception)
        //    {
        //        return "ERROR";

        //    }


        //    #endregion
        //}

        //protected void ECList_PageIndexChanging(object sender, GridViewPageEventArgs e)
        //{
        //    ECList.PageIndex = e.NewPageIndex;
        //    C_List();
        //}

        //private void C_List()
        //{
        //    #region
        //    try
        //    {
        //        SqlConnection con = new SqlConnection(strcon);
        //        if (con.State == ConnectionState.Closed)
        //        {
        //            con.Open();
        //        }

        //        //SqlCommand cmd = new SqlCommand("SELECT No_id, Dept_Desc,Req_by,Comp_Type,Comp_Title,requestDate,Status from [LodgeComplain_EC] Where status = '1'", con);
        //        SqlCommand cmd = new SqlCommand("SELECT No_id, Dept_Desc as Dept,Req_by + ' - ' + U.name as Requester , LEFT(Comp_Details, 100) AS Comp_Details,Status from [LodgeComplain_EC] L Inner Join Users U on L.Req_by = U.staffID and status = '1'", con);
        //        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //        DataSet dt = new DataSet();
        //        da.Fill(dt);

        //        for (int i = 0; i < dt.Tables[0].Rows.Count; i++)
        //        {

        //            Departmentname = Department.Getdept(dt.Tables[0].Rows[i][1].ToString().Trim());
        //            ReqnameName = Department.GetStaffName(dt.Tables[0].Rows[i][1].ToString().Trim()) + "-" + Department.GetStaffName(dt.Tables[0].Rows[i][2].ToString().Trim());
        //            //levelname = Department.Getlevel(dt.Tables[0].Rows[i][3].ToString().Trim());
        //            status = GetStatus(dt.Tables[0].Rows[i][4].ToString().Trim());

        //            //dt.Tables[0].Rows[i][2] = Departmentname + " " + ReqnameName;
        //            //dt.Tables[0].Rows[i][3] =  ReqnameName;
        //            //dt.Tables[0].Rows[i][1] = Departmentname;
        //            dt.Tables[0].Rows[i][4] = status;



        //        }
        //        dt.AcceptChanges();

        //        ECList.DataSource = dt;
        //        ECList.DataBind();

        //        con.Close();
        //    }

        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('" + ex.Message + "');</script>");

        //    }
        //    #endregion
        //}

        //protected void ECList_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    #region
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(ECList, "Select$" + e.Row.RowIndex);
        //        e.Row.ToolTip = "Click to select this row.";
        //    }
        //    #endregion
        //}

        //protected void ECList_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    foreach (GridViewRow row in ECList.Rows)
        //    {
        //        if (row.RowIndex == ECList.SelectedIndex)
        //        {
        //            row.BackColor = ColorTranslator.FromHtml("#A1DCF2");
        //            row.ToolTip = string.Empty;
        //            #region ***
        //            if (ECList.Rows.Count > 0)
        //            {
        //                if (ECList.SelectedRow.Cells.Count > 0)
        //                {
        //                    string intUserID = ECList.SelectedRow.Cells[0].Text;
        //                    SqlConnection con = new SqlConnection(strcon);
        //                    if (con.State == ConnectionState.Closed)
        //                    {
        //                        con.Open();
        //                    }

        //                    SqlCommand cmd = new SqlCommand("SELECT *,(Select U.name FROM Users U where U.staffID = L.Req_by)StaffName from [LodgeComplain_EC] L where L.No_Id = '" + intUserID + "';", con);
        //                    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //                    DataTable dt = new DataTable();
        //                    da.Fill(dt);
        //                    foreach (DataRow dr2 in dt.Rows)
        //                    {
        //                        // CALL THE DATA
        //                        labelHead.Text = dr2.ItemArray[0].ToString();
        //                        //department.Text = Department.Getdept(dr2.ItemArray[1].ToString());
        //                        department.Text = dr2.ItemArray[1].ToString();
        //                        Reqname.Text = dr2.ItemArray[2].ToString();
        //                        DTCCreated.Text = dr2.ItemArray[7].ToString();
        //                        //RiskOrigin.Text = dr2.ItemArray[3].ToString();
        //                        //RiskDriver.Text = dr2.ItemArray[4].ToString();
        //                        Registered_LD.Text = dr2.ItemArray[13].ToString();
        //                        //Status.Text = GetStatus(dr2.ItemArray[9].ToString());
        //                        ddConsequence.Text = dr2.ItemArray[6].ToString();
        //                        ddLikelihood.Text = dr2.ItemArray[10].ToString();
        //                        ddImpact.Text = dr2.ItemArray[11].ToString();
        //                        ddPriority.Text = dr2.ItemArray[12].ToString();
        //                        //change.Text = dr2.ItemArray[4].ToString();
        //                        Details.Text = dr2.ItemArray[5].ToString();
        //                        proj_name.Text = dr2.ItemArray[13].ToString();
        //                        Name.Text = dr2.ItemArray[22].ToString();
        //                    }
        //                    con.Close();
        //                }
        //            }

        //            #endregion
        //        }
        //        else
        //        {
        //            row.BackColor = ColorTranslator.FromHtml("#FFFFFF");
        //            row.ToolTip = "Click to select this row.";
        //        }


        //    }
        //    ScriptManager.RegisterStartupScript(this, GetType(), "myFunction", "$(function () {$('#myModal').modal();})", true);
        //}

        //protected void assingto_Load(object sender, EventArgs e)
        //{
        //    #region
        //    try
        //    {
                
        //        SqlConnection con = new SqlConnection(strcon);
        //        if (con.State == ConnectionState.Closed)
        //        {
        //            con.Open();
        //        }

        //        SqlCommand cmd = new SqlCommand("SELECT distinct dept from [department]", con);
        //        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //        DataSet dt = new DataSet();
        //        da.Fill(dt);

        //        assingtoICA.DataSource = dt.Tables[0];
        //        assingtoICA.DataMember = "dept";

        //        //assingtoPCA.DataSource = dt.Tables[0];
        //        //assingtoPCA.DataMember = "dept";


        //        con.Close();
        //    }

        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('" + ex.Message + "');</script>");

        //    }
        //    #endregion
        //}

        //protected void ECList_RowCommand(Object sender, GridViewCommandEventArgs e)
        //{
        //    // If multiple buttons are used in a GridView control, use the
        //    // CommandName property to determine which button was clicked.
        //    if (e.CommandName == "Select")
        //    {
        //        //Determine the RowIndex of the Row whose Button was clicked.
        //        int rowIndex = Convert.ToInt32(e.CommandArgument);

        //        //Reference the GridView Row.
        //        GridViewRow row = ECList.Rows[rowIndex];
        //        string No_id = ECList.Rows[rowIndex].Cells[0].Text;
        //        //string No_id = e.CommandArgument.ToString();
        //        SqlConnection con = new SqlConnection(strcon);
        //        if (con.State == ConnectionState.Closed)
        //        {
        //            con.Open();
        //        }

        //        SqlCommand cmd = new SqlCommand("SELECT *,(Select U.name FROM Users U where U.staffID = L.Req_by)StaffName from [LodgeComplain_EC] L where L.No_Id = '" + No_id + "';", con);
        //        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //        DataTable dt = new DataTable();
        //        da.Fill(dt);
        //        foreach (DataRow dr2 in dt.Rows)
        //        {
        //            // CALL THE DATA
        //            labelHead.Text = dr2.ItemArray[0].ToString();
        //            //department.Text = Department.Getdept(dr2.ItemArray[1].ToString());
        //            department.Text = dr2.ItemArray[1].ToString();
        //            Reqname1.Text = dr2.ItemArray[23].ToString();
        //            DTCCreated.Text = dr2.ItemArray[7].ToString();
        //            ECType.SelectedItem.Text = dr2.ItemArray[3].ToString();
        //            //RiskDriver.Text = dr2.ItemArray[4].ToString();
        //            Registered_LD.Text = dr2.ItemArray[13].ToString();
        //            //Status.Text = GetStatus(dr2.ItemArray[9].ToString());
        //            //ddConsequence.SelectedItem.Text = dr2.ItemArray[6].ToString();
        //            //ddLikelihood.SelectedItem.Text = dr2.ItemArray[10].ToString();
        //            //ddImpact.SelectedItem.Text = dr2.ItemArray[11].ToString();
        //            //ddPriority.SelectedItem.Text = dr2.ItemArray[12].ToString();
        //            //change.Text = dr2.ItemArray[4].ToString();
        //            Details.Text = dr2.ItemArray[5].ToString();
        //            proj_name.Text = dr2.ItemArray[13].ToString();
        //            Name.Text = dr2.ItemArray[23].ToString();
        //        }

        //        DataSet ds = new DataSet();
        //        da.Fill(ds);
        //        gvAttachment.DataSource = ds;
        //        gvAttachment.DataBind();
        //        refreshdata();
        //        con.Close();

        //        Panel1.Visible = true;
        //        GridTable.Visible = false;
        //        //this.Page.SetFocus(ECType.ClientID);
        //    }
        //}
        //protected void assingtoICA_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //  Departmentname = assingtoICA.SelectedValue.ToString();

        //}
        //protected void btnClose_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("AdminViewEC.aspx");
        //}
        //protected void btnAssign_Click(object sender, EventArgs e)
        //{
        //    string requestDatesql = "";
        //    //string departmentsql = "department = '" + assingtoICA.SelectedValue.ToString() + "'";
        //    #region
        //    try
        //    {


        //        SqlConnection con = new SqlConnection(strcon);
        //        try
        //        {

        //            if (ValidateInfoSave())
        //            {
        //                foreach (GridViewRow gvrow in GridView1.Rows)
        //                {
        //                    var checkbox = gvrow.FindControl("CheckBox1") as CheckBox;
        //                    if (checkbox.Checked)
        //                    {
                                
        //                        var lblID = gvrow.FindControl("lblDeptID") as Label;
        //                        PrepareLodgeCaseData();
        //                        this.UpdateStatusAssign(_LodgeCaseRegister, lblID.Text);
        //                    }
        //                }

        //                foreach (GridViewRow gvrow1 in GridView2.Rows)
        //                {
        //                    var checkbox1 = gvrow1.FindControl("CheckBox2") as CheckBox;
        //                    if (checkbox1.Checked)
        //                    {
        //                        var lblID1 = gvrow1.FindControl("lblDeptID2") as Label;
        //                        this.UpdateStatusAssignPCA(_LodgeCaseRegister, lblID1.Text);
        //                    }
        //                }

        //                String message1 = "Complaint Has Been Assigned";
        //                ScriptManager.RegisterClientScriptBlock(this, GetType(), "showmsg1", "alert('" + message1 + "');window.location = 'AdminViewEC.aspx';", true);
        //            }
        //        }
        //        catch (Exception Ex)
        //        {
        //            ScriptManager.RegisterStartupScript(this, GetType(), "Info", "alert('Error Failed To Save Data.');", true);
        //        }
               
               
        //        #region
        //        try
        //        {
                    
        //            foreach (GridViewRow gvrow in GridView1.Rows)
        //            {
        //                var checkbox = gvrow.FindControl("CheckBox1") as CheckBox;
        //                if (checkbox.Checked)
        //                {
        //                    SqlConnection con2 = new SqlConnection(strcon);
        //                    if (con.State == ConnectionState.Closed)
        //                    {
        //                        con.Open();
        //                    }
        //                    var lblID = gvrow.FindControl("lblDeptID") as Label;
        //                    //SqlCommand cmd2 = new SqlCommand("SELECT * from [Users] where department in ('" + assingtoICA.SelectedValue + "','" + assingtoPCA.SelectedValue + "');", con);
        //                    SqlCommand cmd2 = new SqlCommand("SELECT * from [Users] where department = ('" + lblID.Text + "');", con);
        //                    //SqlCommand cmd2 = new SqlCommand("SELECT * from [Users] where username = 'DM00896';", con);
        //                    cmd2.CommandType = CommandType.Text;
        //                    SqlDataReader reader = cmd2.ExecuteReader();
        //                    if (reader.HasRows)
        //                    {
        //                        while (reader.Read())
        //                        {
        //                            mailSenderEC.Mailsender(reader["email"].ToString(), "Assign E-COMPLAIN", "Hi " + reader["name"].ToString() + "\n\n" + Name.Text + "(" + Reqname.Text + ") " + " Complain ( " + labelHead.Text + ") request has been approved by " + Getdetails(Session["staffID"].ToString()) + " for Immediate Corrective Action. \nPlease login to E-COMPLAIN (http://192.168.0.236:8081/) and procced with action \n\nThank you");
        //                            //mailSenderEC.Mailsender("norasharina@datasonic.com.my", "Assign E-COMPLAIN", "Hi " + reader["name"].ToString() + "\n\n" + Name.Text + "(" + Reqname.Text + ") " + " Complain ( " + labelHead.Text + ") request has been approved by " + Getdetails(Session["staffID"].ToString()) + " for Immediate Corrective Action. \nPlease login to E-COMPLAIN (http://192.168.0.236:8081/) and procced with action \n\nThank you");

        //                        }
        //                    }
        //                    con.Close();
        //                }
        //            }
        //            foreach (GridViewRow gvrow in GridView2.Rows)
        //            {
        //                var checkbox = gvrow.FindControl("CheckBox2") as CheckBox;
        //                if (checkbox.Checked)
        //                {
        //                    SqlConnection con2 = new SqlConnection(strcon);
        //                    if (con.State == ConnectionState.Closed)
        //                    {
        //                        con.Open();
        //                    }
        //                    var lblID = gvrow.FindControl("lblDeptID2") as Label;
        //                    //SqlCommand cmd2 = new SqlCommand("SELECT * from [Users] where department in ('" + assingtoICA.SelectedValue + "','" + assingtoPCA.SelectedValue + "');", con);
        //                    SqlCommand cmd2 = new SqlCommand("SELECT * from [Users] where department = ('" + lblID.Text + "');", con);
        //                    //SqlCommand cmd2 = new SqlCommand("SELECT * from [Users] where username = 'DM00896';", con);
        //                    cmd2.CommandType = CommandType.Text;
        //                    SqlDataReader reader = cmd2.ExecuteReader();
        //                    if (reader.HasRows)
        //                    {
        //                        while (reader.Read())
        //                        {
        //                            //mailSenderEC.Mailsender(reader["email"].ToString(), "Assign E-COMPLAIN", "Hi " + reader["name"].ToString() + "\n\n" + Name.Text + "(" + Reqname.Text + ") " + " Complain ( " + labelHead.Text + ") request has been approved by " + Getdetails(Session["staffID"].ToString()) + " for Permanent Corrective Action. \nPlease login to E-COMPLAIN (http://192.168.0.236:8081/) and procced with action \n\nThank you");
        //                            mailSenderEC.Mailsender("norasharina@datasonic.com.my", "Assign E-COMPLAIN", "Hi " + reader["name"].ToString() + "\n\n" + Name.Text + "(" + Reqname.Text + ") " + " Complain ( " + labelHead.Text + ") request has been approved by " + Getdetails(Session["staffID"].ToString()) + " for Permanent Corrective Action. \nPlease login to E-COMPLAIN (http://192.168.0.236:8081/) and procced with action \n\nThank you");

        //                        }
        //                    }
        //                    con.Close();
        //                }
        //            }
                    
        //        }
        //        catch (Exception ex)
        //        {
        //            Response.Write("<script>alert('" + ex.Message + "');</script>");

        //        }

        //        #endregion               
        //        //ScrfList();

        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('" + ex.Message + "');</script>");
        //    }

        //    #endregion
        //}

        //private string Getdetails(string staffID)
        //{
        //    #region
        //    {
        //        try
        //        {
        //            SqlConnection con = new SqlConnection(strcon);
        //            if (con.State == ConnectionState.Closed)
        //            {
        //                con.Open();
        //            }
        //            SqlCommand cmd = new SqlCommand("SELECT * from [Users] where staffID ='" + staffID + "';", con);
        //            cmd.CommandType = CommandType.Text;
        //            SqlDataReader reader = cmd.ExecuteReader();
        //            if (reader.HasRows)
        //            {
        //                while (reader.Read())
        //                {
        //                    staffID = reader["name"].ToString();

        //                }
        //            }
        //            con.Close();
        //            return staffID;
        //        }
        //        catch (Exception)
        //        {
        //            return "ERROR";

        //        }

        //    }
        //    #endregion
        //}
        //protected void assingtoPCA_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    //Departmentname = assingtoPCA.SelectedValue.ToString();
        //}

        //bool ValidateInfoSave()
        //{

        //    string errMsg = "";
        //    List<string> reqFields = new List<string>();

        //    try
        //    {
        //        #region Donation

        //        ArrayList ar = new ArrayList();

        //        //ar.Add(new ListItem("assingtoICA", "Immediate Corrective Action"));
        //        ar.Add(new ListItem("ECType", "Risk Origination"));
        //        ar.Add(new ListItem("Registered_LD", "Registered Log Date"));
        //        ar.Add(new ListItem("Consequence", "Consequence"));
        //        ar.Add(new ListItem("Likelihood", "Likelihood"));
        //        ar.Add(new ListItem("Impact", "Impact"));
        //        ar.Add(new ListItem("Priority", "Priority"));
        //        ar.Add(new ListItem("RiskDriver", "Risk Driver"));
        //        ar.Add(new ListItem("ECType", "Risk Origination"));

        //        for (int i = 0; i < ar.Count; i++)
        //        {
        //            ListItem li = (ListItem)ar[i];

        //            //if (li.Text.ToString().Substring(0, 3) == "txt")
        //            //{
        //                if (li.Text == "Registered_LD")
        //                {
        //                    if (Registered_LD.Text == "")
        //                    {
        //                        reqFields.Add(li.Value.ToString());
        //                    }
        //                }
        //                if (li.Text == "Consequence")
        //                {
        //                    if (ddConsequence.Text == "")
        //                    {
        //                        reqFields.Add(li.Value.ToString());
        //                    }
        //                }
        //                if (li.Text == "Likelihood")
        //                {
        //                    if (ddLikelihood.Text == "")
        //                    {
        //                        reqFields.Add(li.Value.ToString());
        //                    }
        //                }
        //                if (li.Text == "Impact")
        //                {
        //                    if (ddImpact.Text == "")
        //                    {
        //                        reqFields.Add(li.Value.ToString());
        //                    }
        //                }
        //                if (li.Text == "Priority")
        //                {
        //                    if (ddPriority.Text == "")
        //                    {
        //                        reqFields.Add(li.Value.ToString());
        //                    }
        //                }
        //                if (li.Text == "RiskDriver")
        //                {
        //                    if (RiskDriver.Text == "")
        //                    {
        //                        reqFields.Add(li.Value.ToString());
        //                    }
        //                }
        //            //}
        //            //if (li.Text.ToString().Substring(0, 3) == "cbo")
        //            //{
        //                //if (li.Text == "assingtoICA")
        //                //{
        //                //    if (assingtoICA.SelectedValue == "")
        //                //    {
        //                //        reqFields.Add(li.Value.ToString());
        //                //    }
        //                //}
        //                if (li.Text == "ECType")
        //                {
        //                    if (ECType.Text == "")
        //                    {
        //                        reqFields.Add(li.Value.ToString());
        //                    }
        //                }
        //            //}

        //        }
        //        #endregion

        //        if (errMsg == "")
        //        {
        //            if (reqFields.Count > 0)
        //            {

        //                errMsg = "Incomplete information:\\n";
        //                foreach (string s in reqFields)
        //                {
        //                    errMsg = errMsg + s + "\\n";
        //                }
        //            }
        //        }

        //        if (errMsg != "")
        //        {
        //            ScriptManager.RegisterStartupScript(this, GetType(), "Info", "alert('" + errMsg + "');", true);
        //            return false;
        //        }
        //        else
        //            return true;
        //    }
        //    catch (Exception ex)
        //    {
        //        return false;
        //    }
        //}
        //private void PrepareLodgeCaseData()
        //{
        //    _LodgeCaseRegister.No_id = Convert.ToInt32(labelHead.Text);
        //    _LodgeCaseRegister.Comp_Type = ECType.SelectedItem.ToString(); ;
        //    _LodgeCaseRegister.Comp_Title = RiskDriver.Text.Trim();
        //    _LodgeCaseRegister.Comp_Conseq = ddConsequence.Text;
        //    _LodgeCaseRegister.Status = "13";
        //    _LodgeCaseRegister.Likelihood = ddLikelihood.Text;
        //    _LodgeCaseRegister.Impact = ddImpact.Text;
        //    _LodgeCaseRegister.Priority = ddPriority.Text;
        //    //_LodgeCaseRegister.AssgICA = assingtoICA.SelectedValue;
        //    //_LodgeCaseRegister.AssgICA = ;
        //    _LodgeCaseRegister.AssgPCA = assingtoPCA.SelectedValue;
        //    _LodgeCaseRegister.ModifiedBy = Session["staffID"].ToString();            
        //    _LodgeCaseRegister.ModifiedOn = DateTime.Now;
        //    DateTime regdt = Convert.ToDateTime(Registered_LD.Text);
        //    _LodgeCaseRegister.RegLD = regdt.ToString("dd/MM/yyyy");
        //}
        //public DataTable UpdateStatusAssign(LodgeCaseRegister _LodgeCaseRegister, string ID)
        //{
        //    SqlDataAdapter da = new SqlDataAdapter();
        //    DataTable dt = new DataTable();

        //    using (SqlConnection conn = new SqlConnection(strcon))
        //    {
        //        SqlCommand cmd = new SqlCommand("UpdateStatusAssign", conn);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        cmd.Parameters.Add(new SqlParameter("@No_id", _LodgeCaseRegister.No_id));
        //        cmd.Parameters.Add(new SqlParameter("@Comp_Type", _LodgeCaseRegister.Comp_Type));
        //        cmd.Parameters.Add(new SqlParameter("@Comp_Title", _LodgeCaseRegister.Comp_Title));
        //        cmd.Parameters.Add(new SqlParameter("@Comp_Conseq", _LodgeCaseRegister.Comp_Conseq));
        //        cmd.Parameters.Add(new SqlParameter("@Status", _LodgeCaseRegister.Status));
        //        cmd.Parameters.Add(new SqlParameter("@Likelihood", _LodgeCaseRegister.Likelihood));
        //        cmd.Parameters.Add(new SqlParameter("@Impact", _LodgeCaseRegister.Impact));
        //        cmd.Parameters.Add(new SqlParameter("@Priority", _LodgeCaseRegister.Priority));
        //        //cmd.Parameters.Add(new SqlParameter("@AssgICA", _LodgeCaseRegister.AssgICA));
        //        cmd.Parameters.Add(new SqlParameter("@AssgICA", ID));
        //        cmd.Parameters.Add(new SqlParameter("@AssgPCA", _LodgeCaseRegister.AssgPCA));
        //        cmd.Parameters.Add(new SqlParameter("@ModifiedBy", _LodgeCaseRegister.ModifiedBy));
        //        cmd.Parameters.Add(new SqlParameter("@ModifiedOn", _LodgeCaseRegister.ModifiedOn));
        //        cmd.Parameters.Add(new SqlParameter("@RegLD", _LodgeCaseRegister.RegLD));

        //        da.SelectCommand = cmd;
        //        da.Fill(dt);
        //    }
        //    return dt;
        //}
        // public DataTable UpdateStatusAssignPCA(LodgeCaseRegister _LodgeCaseRegister, string ID)
        //{
        //    SqlDataAdapter da = new SqlDataAdapter();
        //    DataTable dt = new DataTable();

        //    using (SqlConnection conn = new SqlConnection(strcon))
        //    {
        //        SqlCommand cmd = new SqlCommand("UpdateStatusAssignPCA", conn);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        cmd.Parameters.Add(new SqlParameter("@No_id", _LodgeCaseRegister.No_id));
        //        cmd.Parameters.Add(new SqlParameter("@Status", _LodgeCaseRegister.Status));
        //        cmd.Parameters.Add(new SqlParameter("@AssgPCA", ID));
        //        cmd.Parameters.Add(new SqlParameter("@ModifiedBy", _LodgeCaseRegister.ModifiedBy));
        //        cmd.Parameters.Add(new SqlParameter("@ModifiedOn", _LodgeCaseRegister.ModifiedOn));

        //        da.SelectCommand = cmd;
        //        da.Fill(dt);
        //    }
        //    return dt;
        //}

        //protected void gvAttachment_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        if (e.Row.Cells[0].Text == "No File Uploaded.")
        //        {
        //            Button btnDownload = (Button)e.Row.FindControl("btnDownload");
        //            LinkButton btnView = (LinkButton)e.Row.FindControl("btnView");
        //            btnDownload.Visible = false;
        //            btnView.Visible = false;
        //        }
        //    }
        //}
        //protected void btnView_Click(object sender, EventArgs e)
        //{
        //    LinkButton lnkbtn = sender as LinkButton;
        //    GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
        //    string attachment = gvrow.Cells[0].Text;
        //    string filePath = ConfigurationManager.AppSettings["Document"] + "//" + gvAttachment.DataKeys[gvrow.RowIndex].Value.ToString() + "//" + attachment;
        //    //string url = string.Format("ViewPDF.aspx?FN=" + attachment + "", (sender as LinkButton));
        //    string script = "<script type='text/javascript'>window.open('" + filePath + "')</script>";
        //    this.ClientScript.RegisterStartupScript(this.GetType(), "script", script);
        //    //Response.Write(String.Format("<script>window.open('{0}','_blank');</script>", "viewImage.aspx?fn=" + filePath));
        //}

        //protected void btnDownload_Click(object sender, EventArgs e)
        //{
        //    Button btn = sender as Button;
        //    GridViewRow gvrow = btn.NamingContainer as GridViewRow;
        //    string attachment = gvrow.Cells[0].Text;
        //    string filePath = "~//Document//" + gvAttachment.DataKeys[gvrow.RowIndex].Value.ToString() + "//" + attachment;

        //    Response.ContentType = "application/pdf";
        //    Response.AppendHeader("Content-Disposition", "attachment; filename=" + attachment);
        //    Response.TransmitFile(Server.MapPath(filePath));
        //    Response.End();
        //}
    }
}