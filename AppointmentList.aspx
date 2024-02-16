<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AppointmentList.aspx.cs" Inherits="Star.AppointmentList" EnableEventValidation="false" %>

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
                                        <asp:GridView ID="gdlist" runat="server" AutoGenerateColumns="false" DataKeyNames="ID" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound"
                                            class="table table-bordered" Skin="Bootstrap" BackColor="#FFFFFF" HeaderStyle-BackColor="#cccbcb" HeaderStyle-Height="50px">
                                            <Columns>
                                                <asp:BoundField ItemStyle-Width="25%" DataField="Name" HeaderText="Name" />
                                                <asp:BoundField ItemStyle-Width="20%" DataField="PhoneNo" HeaderText="Phone No" />
                                                <asp:BoundField ItemStyle-Width="20%" DataField="Services" HeaderText="Services" />
                                                <asp:BoundField ItemStyle-Width="10%" DataField="Date" HeaderText="Date" />
                                                <asp:BoundField ItemStyle-Width="10%" DataField="Time" HeaderText="Time" />
                                                <asp:BoundField ItemStyle-Width="15%" DataField="Status" HeaderText="Status" />
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lnkEdit" CommandName="Select" Text="Update" runat="server" CommandArgument='<%#Eval("[ID]") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:LinkButton runat="server" ID="btndelete" ToolTip="Remove" CommandName="Padam" Text="Delete" CommandArgument="<%# Container.DataItemIndex %>"><span style="color:red" class="fa fa-times"></span></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="pnlUpdate" runat="server" Visible="false">
    <div class="card">
        <div class="card-header">
            <h5 class="card-title">
                <asp:Label ID="labelHead" Text="Appointment Update" runat="server" /></h5>
            <%--<button type="button" class="close" data-dismiss="modal">&times;</button>--%>
        </div>
        <div class="card-body">
            <%--<form id="form2" runat="server" class="bookingform">--%>
        <div class="row">
            <div class="col-lg-6 form-group">
                <asp:Label runat="server">Services</asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtService" name="service" runat="server"  AutoPostBack="true"></asp:TextBox>
            </div>
            <div class="col-lg-6 form-group">
                    <asp:Label runat="server">Date</asp:Label>
                    <asp:TextBox CssClass="form-control" ID="txtDate" name="date" placeholder="Your Date" TextMode="Date" runat="server"></asp:TextBox>
                
            </div>
            <div class="col-lg-6 form-group">
                <asp:Label runat="server">Time</asp:Label>
                <asp:DropDownList CssClass="form-control" runat="server" EmptyMessage="Select Timer" name="services" ID="ddTime"></asp:DropDownList>
            </div>
        
            <div class="col-lg-6 form-group">
                <asp:Label runat="server">Status</asp:Label>
                <asp:DropDownList CssClass="form-control" runat="server" name="services" ID="ddStatus" AutoPostBack="true" >
                    <asp:ListItem>Confirm</asp:ListItem>
                    <asp:ListItem>Cancel</asp:ListItem>
                    <asp:ListItem>Past</asp:ListItem>
                    <asp:ListItem>Active</asp:ListItem>
                </asp:DropDownList>
            </div>
        
       
            </div>
    <%--</form>--%>
        </div>
        <div class="modal-footer">
            <%--<asp:Button class="btn btn-primary" ID="btnAssign" runat="server" Text="Assign" Enabled="True" OnClick="btnAssign_Click" />
            <asp:Button class="btn btn-primary" ID="btnClose" runat="server" Text="Close" Enabled="True" OnClick="btnClose_Click" />--%>
            <%--<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>--%>
             <div class="text-center">
            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="btnUpdate_Onclick" />
            </div>
        </div>
    </div>
</asp:Panel>
                </form>
            </div>
            <%--End--%>
        </div>
    </div>
</asp:Content>
