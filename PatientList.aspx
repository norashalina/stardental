<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PatientList.aspx.cs" Inherits="Star.PatientList" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            // Close modal on button click
            $(".btn").click(function () {
                $("#myModal").modal('hide');
            });
        });
    </script>
    <br />
    <br />
    <br />
    <div class="bg-card">
        <div class="card-header" style="background-position: center; background-image: url('img/Headcomplains.png'); background-repeat: no-repeat; height: 100px; margin-top: 0px;"></div>
        <div class="card-body">
            <div class="container">

                <!-- Have fun using Bootstrap JS -->
                <form id="form1" runat="server">
                    <asp:Panel ID="GridTable" runat="server" Visible="true">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive pull-right">
                                       <%-- <asp:GridView ID="ECList" runat="server" AutoGenerateColumns="false" DataKeyNames="No_id" OnRowCommand="ECList_RowCommand"
                                            OnRowDataBound="ECList_RowDataBound" class="table table-bordered" HeaderStyle-BackColor="#cccbcb" HeaderStyle-Height="50px" OnPageIndexChanging="ECList_PageIndexChanging">
                                            <Columns>
                                                <asp:BoundField ItemStyle-Width="10%" DataField="No_id" HeaderText="ID" />
                                                <asp:BoundField ItemStyle-Width="10%" DataField="Dept" HeaderText="DEPT" />
                                                <asp:BoundField ItemStyle-Width="25%" DataField="Requester" HeaderText="NAME" />
                                                <asp:BoundField ItemStyle-Width="40%" DataField="Comp_Details" HeaderText="PROBLEM/ISSUE" />
                                                <asp:BoundField ItemStyle-Width="10%" DataField="status" HeaderText="STATUS" />
                                                <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:Button ID="lnkEdit" CommandName="Select" Text="ASSIGN" runat="server" CommandArgument='<%#Eval("No_id") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>--%>
                                        
    <asp:Table ID="ECList" runat="server" class="table table-bordered">  
        <asp:TableRow runat="server" BackColor="Black" ForeColor="White">  
            <asp:TableCell runat="server">Name</asp:TableCell>  
            <asp:TableCell runat="server">Email</asp:TableCell>  
            <asp:TableCell runat="server">Phone No</asp:TableCell>   
        </asp:TableRow>  
        <asp:TableRow runat="server" BackColor="White">  
            <asp:TableCell runat="server">Ali</asp:TableCell>  
            <asp:TableCell runat="server">ali@gmail.com</asp:TableCell>  
            <asp:TableCell runat="server">0123456789</asp:TableCell>  
        </asp:TableRow>  
        <asp:TableRow runat="server" BackColor="White">  
            <asp:TableCell runat="server">Aminah</asp:TableCell>  
            <asp:TableCell runat="server">aminah@gmail.com</asp:TableCell>  
            <asp:TableCell runat="server">0132456783</asp:TableCell>   
        </asp:TableRow>  
    </asp:Table>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="Panel1" runat="server" Visible="false">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="card-title">
                                    <asp:Label ID="labelHead" Text="fname" runat="server" /></h5>
                                <%--<button type="button" class="close" data-dismiss="modal">&times;</button>--%>
                            </div>
                            <div class="card-body">
                                <form id="form2">
                                    <%--2nd group--%>
                                    <div class="form-group">
                                        <div class="form-row align-items-center">
                                            <div class="col-md-6 mb-3">
                                                <label for="department">Department By</label>
                                                <asp:TextBox CssClass="form-control" ID="department" name="department" runat="server" placeholder="" required="required" ReadOnly="true"></asp:TextBox>
                                            </div>

                                            <div class="col-md-6 mb-3">
                                                <label for="Reqname">Request By</label>
                                                <asp:TextBox CssClass="form-control" ID="Reqname1" name="Reqname" runat="server" placeholder="" required="required" ReadOnly="true"></asp:TextBox>
                                                <asp:TextBox CssClass="form-control" ID="Reqname" name="Reqname" runat="server" placeholder="" required="required" Visible="false"></asp:TextBox>
                                                <asp:Label ID="Name" runat="server" Visible="false"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="form-row align-items-center">
                                            <div class="col-md-6 mb-3">
                                                <label for="DTCCreated">Date & Time Created :</label>
                                                <asp:TextBox CssClass="form-control" ID="DTCCreated" name="DTCCreated" runat="server" placeholder="DTCCreated" required="required" ReadOnly="true"></asp:TextBox>
                                            </div>

                                            <div class="col-md-6 mb-3">
                                                <%--<label for="proj_name">Register Log Date :</label>--%>
                                                <asp:TextBox CssClass="form-control" ID="proj_name" name="proj_name" runat="server" placeholder="Project Name or Ref" required="required" ReadOnly="true" Visible="false"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <%--4nd group--------%>
                                    <div class="form-group">
                                        <label for="Details">Issue Details</label>
                                        <asp:TextBox CssClass="form-control" ID="Details" name="Details" runat="server" placeholder="Details" TextMode="MultiLine" Rows="6" ReadOnly="false"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="Details">Attachment</label>
                                       <%-- <asp:GridView ID="gvAttachment" DataKeyNames="No_id" runat="server" OnRowDataBound="gvAttachment_RowDataBound" AutoGenerateColumns="false" class="table table-striped" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="50%">
                                            <Columns>
                                                <asp:BoundField DataField="fileUpload" HeaderText="Attachment" />
                                                <asp:TemplateField HeaderText="View">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="btnView" runat="server" Text="View" OnClick="btnView_Click" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Download">
                                                    <ItemTemplate>
                                                        <asp:Button ID="btnDownload" runat="server" Text="Download" OnClick="btnDownload_Click" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>--%>
                                    </div>

                                    <div class="form-group">
                                        <label for="Details" style="font-size: medium; font-weight: bold; text-decoration: underline; color: #000080;">Problem/Issue Assessment: Analyse & Evaluate Risks</label>
                                        <br />
                                        <%--<label for="Details" style="font-size: medium; font-weight: bold; text-decoration: underline; color: #000080;">QUALITATIVE ASSESSMENT (Refer to "Risk Parameters")</label>--%>
                                    </div>
                                    <div class="form-group">
                                        <div class="form-row align-items-center">
                                            <div class="col-md-12 mb-3">
                                                <label for="RiskOrigin">Risk Origination :</label>
                                                <asp:DropDownList class="custom-select" runat="server" name="pre" ID="ECType" Visible="true">
                                                    <asp:ListItem Text="" Value="0" />
                                                    <asp:ListItem Text="External" Value="1" />
                                                    <asp:ListItem Text="Regulatory" Value="2" />
                                                    <asp:ListItem Text="Legal" Value="3" />
                                                    <asp:ListItem Text="Corporate Governance" Value="4" />
                                                    <asp:ListItem Text="Financial" Value="4" />
                                                    <asp:ListItem Text="Customer" Value="5" />
                                                    <asp:ListItem Text="Product/Service" Value="6" />
                                                    <asp:ListItem Text="Human" Value="7" />
                                                    <asp:ListItem Text="Operations" Value="8" />
                                                    <asp:ListItem Text="Supply" Value="9" />
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="form-row align-items-center">
                                            <%--<div class="col-md-12 mb-3">
                                                <label for="RiskDriver">Risk Driver :</label>
                                                <asp:DropDownList class="custom-select" runat="server" EmptyMessage="Select Risk Driver" name="ddRiskDriver" ID="ddRiskDriver" OnSelectedIndexChanged="ddRiskDriver_SelectedIndexChanged" AutoPostBack="true">
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-md-12 mb-3">
                                                <asp:DropDownList class="custom-select" runat="server" name="ddRiskDriverType" ID="ddRiskDriverType" Visible="false" OnSelectedIndexChanged="ddRiskDriverType_SelectedIndexChanged" AutoPostBack="true">
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-md-12 mb-3">
                                                <asp:TextBox CssClass="form-control" ID="RiskDriver" name="RiskDriver" runat="server" placeholder="" Visible="false" ReadOnly="true"></asp:TextBox>
                                            </div>--%>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="form-row align-items-center">

                                            <%--<div class="col-md-3 mb-3">
                                                <label for="Impact">Impact</label>
                                                <asp:DropDownList class="custom-select" runat="server" EmptyMessage="Select Impact" name="Impact" ID="ddImpact" AutoPostBack="true"></asp:DropDownList>
                                            </div>

                                            <div class="col-md-3 mb-3">
                                                <label for="Consequence">Consequence</label>
                                                <asp:DropDownList class="custom-select" runat="server" EmptyMessage="Select Consequence" name="Consequence" ID="ddConsequence" AutoPostBack="true"></asp:DropDownList>
                                            </div>

                                            <div class="col-md-3 mb-3">
                                                <label for="Likelihood">Likelihood</label>
                                                <asp:DropDownList class="custom-select" runat="server" EmptyMessage="Select Likelihood" name="Likelihood" ID="ddLikelihood" AutoPostBack="true"></asp:DropDownList>
                                            </div>

                                            <div class="col-md-3 mb-3">
                                                <label for="Priority">Priority</label>
                                                <asp:DropDownList class="custom-select" runat="server" EmptyMessage="Select Priority" name="Priority" ID="ddPriority" AutoPostBack="true"></asp:DropDownList>
                                            </div>--%>

                                        </div>

                                    </div>
                                    <div class="form-row align-items-center">
                                        <div class="col-md-6 mb-3">
                                            <label for="Registered_LD">Registered Log Date(dd/mm/yyyy):Example:05/08/2020</label>
                                            <asp:TextBox CssClass="form-control" ID="Registered_LD" name="Registered_LD" TextMode="Date" runat="server" placeholder="" ReadOnly="false"></asp:TextBox>
                                        </div>
                                    </div>

                                    <%--<div class="form-group">
                                        <div class="form-row align-items-center">
                                            <div class="col-md-6 mb-3">
                                                <label for="risk">PIC (to perform the Immediate Corrective Action):</label>
                                                <asp:DropDownList class="custom-select" runat="server" name="assingtoICA" ID="assingtoICA" Visible="false" OnSelectedIndexChanged="assingtoICA_SelectedIndexChanged">
                                                </asp:DropDownList>
                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" class="table table-bordered" BorderStyle="Solid" Width="50%">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="ID" Visible="false">
                                                            <EditItemTemplate>
                                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("iddept") %>'></asp:TextBox>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblDeptID" runat="server" Text='<%# Bind("iddept") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Department">
                                                            <EditItemTemplate>
                                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("dept") %>'></asp:TextBox>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblDeptName" runat="server" Text='<%# Bind("dept") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField>
                                                            <EditItemTemplate>
                                                                <asp:CheckBox ID="CheckBox1" runat="server" />
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="CheckBox1" runat="server" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="risk">PIC (to perform the Permanent Corrective Action)</label>
                                                <asp:DropDownList class="custom-select" runat="server" name="assingtoPCA" ID="assingtoPCA" Visible="false" OnSelectedIndexChanged="assingtoPCA_SelectedIndexChanged">
                                                </asp:DropDownList>
                                                 <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" class="table table-bordered" BorderStyle="Solid" Width="50%">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="ID" Visible="false">
                                                            <EditItemTemplate>
                                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("iddept") %>'></asp:TextBox>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblDeptID2" runat="server" Text='<%# Bind("iddept") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Department">
                                                            <EditItemTemplate>
                                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("dept") %>'></asp:TextBox>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblDeptName2" runat="server" Text='<%# Bind("dept") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField>
                                                            <EditItemTemplate>
                                                                <asp:CheckBox ID="CheckBox2" runat="server" />
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="CheckBox2" runat="server" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </div>
                                        </div>
                                    </div>--%>
                                    <center>
                                    </center>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <%--<asp:Button class="btn btn-primary" ID="btnAssign" runat="server" Text="Assign" Enabled="True" OnClick="btnAssign_Click" />
                                <asp:Button class="btn btn-primary" ID="btnClose" runat="server" Text="Close" Enabled="True" OnClick="btnClose_Click" />--%>
                                <%--<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>--%>
                            </div>
                        </div>
                    </asp:Panel>
                </form>
            </div>
            <%--End--%>
        </div>
    </div>
</asp:Content>
