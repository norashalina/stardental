<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Star.Login" EnableEventValidation = "false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>STAR DENTAL</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="font/css/fontawesome.min.css" rel="stylesheet" />
    <script src="bootstrap/js/jquery-3.5.1.min.js"></script>
<%--    <script src="bootstrap/js/popper.min.js.js"></script>--%>
    <script src="bootstrap/js/bootstrap.min.js"></script>

    <style>
    .login-form {
        width: 340px;
        margin: 50px auto;
  	    font-size: 15px;
    }
    .login-form form {
        margin-bottom: 15px;
        background: #f7f7f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
    .login-form h2 {
        margin: 0 0 15px;
    }
    .form-control, .btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .btn {        
        font-size: 15px;
        font-weight: bold;
    }
</style>

</head>
<body>
        <div class="login-form">
        <form method="post" id="form1" runat="server">
        <center><h2>STAR DENTAL</h2></center>
         <h5 class="text-center" ></h5><br /> 
          
        <div class="form-group">
             <asp:TextBox CssClass="form-control" ID="username" runat="server" placeholder="Email" required="required"></asp:TextBox>
        </div><br />
        <div class="form-group">        
            <asp:TextBox CssClass="form-control" ID="password" runat="server" placeholder="Password" TextMode="Password" required="required"></asp:TextBox>
        </div>
            <asp:Label ID="status" runat="server" Font-Italic="True" Font-Size="Smaller" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
            <br />
        <div class="form-group">           
            <asp:Button class="btn btn-primary btn-block" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click"/>
        </div>  

        <!-- Modal -->
        <div>
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
						<h5 class="modal-title"><asp:Label id="labelHead" Text="CHANGE PASSWORD" runat="server" />                        
                        </div>
                        <div class="modal-body">                                                    
							<div class="form-group">
							<div class="form-row align-items-center">								
								<div class="col-md-12 mb-3">
								<label for="newPassword">NEW PASSWORD</label>
								<asp:TextBox CssClass="form-control" id="newPassword" name="newPassword" TextMode="Password"  runat="server" placeholder=""></asp:TextBox>
								</div>

                                <div class="col-md-12 mb-3">
								<label for="rePassword">RE-ENTER PASSWORD</label>
								<asp:TextBox CssClass="form-control" id="rePassword" name="rePassword" runat="server" TextMode="Password"  placeholder=""></asp:TextBox>
                                    <asp:Label ID="oldP" runat="server" Font-Italic="True" Font-Size="Smaller" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
								</div>
							</div>
							</div>								
							<center><asp:Button class="btn btn-primary" type="button" ID="changePass" runat="server" Text="Change" OnClick="changePass_Click"/></center>
																
								</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary float-left" data-dismiss="modal">Close</button>
                        </div>
						</div>
					
                        </div>
                        
                    </div>
                
                </div>
            
            
	<!-- Bootstrap Modal Dialog -->
        </form>
    </div>

    </body>


</html>
