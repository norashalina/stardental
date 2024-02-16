<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookingForm.aspx.cs" Inherits="Star.BookingForm" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>STAR DENTAL</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/teeth.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,600,600i,700,700i,900" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">
    <script>
        var myIndex = 0;
        carousel();

        function carousel() {
            var i;
            var x = document.getElementsByClassName("carousel-item");
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            myIndex++;
            if (myIndex > x.length) { myIndex = 1 }
            x[myIndex - 1].style.display = "block";
            setTimeout(carousel, 2000); // Change image every 2 seconds
        }

    </script>
    <script type="text/javascript">
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : evt.keyCode
            return !(charCode > 31 && (charCode < 48 || charCode > 57));
        }
    </script>
</head>
<body>

    <header id="header" class="d-flex align-items-center">
        <div class="container d-flex align-items-center">

            <div class="logo me-auto">
                <h1><a href="Default.aspx">STAR DENTAL</a></h1>
                <!-- Uncomment below if you prefer to use an image logo -->
                <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
            </div>

            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="nav-link scrollto active" href="Default.aspx">Home</a></li>
                    <%--<li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>
                        <ul>
                            <li><a href="#">Drop Down 1</a></li>
                            <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                                <ul>
                                    <li><a href="#">Deep Drop Down 1</a></li>
                                    <li><a href="#">Deep Drop Down 2</a></li>
                                    <li><a href="#">Deep Drop Down 3</a></li>
                                    <li><a href="#">Deep Drop Down 4</a></li>
                                    <li><a href="#">Deep Drop Down 5</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Drop Down 2</a></li>
                            <li><a href="#">Drop Down 3</a></li>
                            <li><a href="#">Drop Down 4</a></li>
                        </ul>
                    </li>--%>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav>
            <!-- .navbar -->

        </div>
    </header>
      <section id="contact" class="contact">
            <div class="container" style="padding: 0 200px 0 200px;">

                <div class="section-title">
                    <div class="pic">
                        <img src="assets/img/StarDentalLogo.png" width="200" height="300" class="img-fluid" alt="">
                    </div>
                    <h2>Booking Form</h2>
                </div>

                <div class="row">


                     <div class="col-lg-12">
                        <form runat="server" class="bookingform">
                            <div class="row">
                                <div class="col-lg-12 form-group">
                                    <asp:Label runat="server">Name</asp:Label>
                                    <asp:TextBox CssClass="form-control" ID="txtName" runat="server" Style="text-transform: uppercase"></asp:TextBox>
                                </div>
                                <div class="col-lg-6 form-group">
                                    <asp:Label runat="server">Phone No</asp:Label>
                                    <asp:TextBox CssClass="form-control" ID="txtPhoneNo" MaxLength="12" nkeypress="return isNumberKey(event);"  runat="server"></asp:TextBox>
                                </div>
                                <div class="col-lg-6 form-group">
                                    <asp:Label runat="server">Email</asp:Label>
                                    <asp:TextBox CssClass="form-control" ID="txtEmail" TextMode="Email" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-lg-4 form-group">
                                    <asp:Label runat="server">Services</asp:Label>
                                    <asp:DropDownList CssClass="form-control" runat="server" name="services" ID="ddService">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Consultation General</asp:ListItem>
                                        <asp:ListItem>Consultation Braces</asp:ListItem>
                                        <asp:ListItem>Check-up</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-lg-4 form-group">
                                        <asp:Label runat="server">Date</asp:Label>
                                        <asp:TextBox CssClass="form-control" ID="txtDate" name="date" placeholder="Your Date" TextMode="Date" runat="server" OnTextChanged="txtDate_OnTextChanged" AutoPostBack="true"></asp:TextBox>
                                    
                                </div>
                                <div class="col-lg-4 form-group">
                                    <asp:Label runat="server">Time</asp:Label>
                                    <asp:DropDownList CssClass="form-control" runat="server" EmptyMessage="Select Timer" name="services" ID="ddTime"></asp:DropDownList>
                                    <%--<asp:DropDownList CssClass="form-control" runat="server" name="services" ID="ddTime">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>9.00 am</asp:ListItem>
                                        <asp:ListItem>9.30 am</asp:ListItem>
                                        <asp:ListItem>10.00 am</asp:ListItem>
                                        <asp:ListItem>10.30 am</asp:ListItem>
                                        <asp:ListItem>11.00 am</asp:ListItem>
                                        <asp:ListItem>11.30 am</asp:ListItem>
                                        <asp:ListItem>12.00 pm</asp:ListItem>
                                        <asp:ListItem>12.30 pm</asp:ListItem>
                                    </asp:DropDownList>--%>
                                </div>
                            </div>
                            <div class="text-center">
                                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Onclick" />
                        </form>
                    </div>
                </div>

            </div>
        </section>
        <!-- ======= Footer ======= -->
    <footer id="footer">
        <div class="container">
            <div class="copyright">
                &copy; Copyright <strong><span>Star Dental</span></strong>. All Rights Reserved
            </div>
            <%--<div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/mamba-one-page-bootstrap-template-free/ -->
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div>--%>
        </div>
    </footer>
    <!-- End Footer -->

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="assets/vendor/aos/aos.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
    </body>


</html>


