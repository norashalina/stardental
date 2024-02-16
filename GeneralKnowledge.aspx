<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GeneralKnowledge.aspx.cs" Inherits="Star.GeneralKnowledge" %>

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
    <section id="portfolio" class="portfolio section-bg">
        <div class="container" data-aos="fade-up" data-aos-delay="100">

            <div class="section-title">
                <h2>General Knowledge</h2>
            </div>

            <div class="row portfolio-container">
                <div class="col-lg-12 col-md-6 portfolio-item filter-app">
                    <div class="portfolio-wrap">
                        <%--<script src="https://static.elfsight.com/platform/platform.js" data-use-service-core defer></script>
        <div class="elfsight-app-12fc585f-9c54-4b0b-b84a-3e017e1efc4a"></div>--%>
                    </div>
                    <%--</div>--%>

                    <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                        <div class="portfolio-wrap">
                            <%--<img src="assets/video/Pelat.mp4" class="img-fluid" alt="">--%>
                            <video width="450" height="250">
                                <source src="”http://techslides.com/demos/sample-videos/small.ogv”" type="video/ogg">
                                <source src="/assets/video/Pelat.mp4" type="video/mp4">
                            </video>
                            <div class="portfolio-info">
                                <h4>Masalah Pelat dan Lidah Pendek</h4>
                                <div class="portfolio-links">
                                    <a href="assets/video/Pelat.mp4" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bi bi-plus"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                        <div class="portfolio-wrap">
                            <video width="450" height="250">
                                <source src="”http://techslides.com/demos/sample-videos/small.ogv”" type="video/ogg">
                                <source src="/assets/video/ulse.mp4" type="video/mp4">
                            </video>
                            <div class="portfolio-info">
                                <h4>Punca dan Solusi Ulser</h4>
                                <div class="portfolio-links">
                                    <a href="assets/video/ulse.mp4" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bi bi-plus"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                        <div class="portfolio-wrap">
                            <video width="450" height="250">
                                <source src="”http://techslides.com/demos/sample-videos/small.ogv”" type="video/ogg">
                                <source src="/assets/video/dosdonts.mp4" type="video/mp4">
                            </video>
                            <div class="portfolio-info">
                                <h4>Do's and Dont's Selepas Cabut Gigi</h4>
                                <div class="portfolio-links">
                                    <a href="assets/video/dosdonts.mp4" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bi bi-plus"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                        <div class="portfolio-wrap">
                           <%-- <video width="450" height="250">
                                <source src="”http://techslides.com/demos/sample-videos/small.ogv”" type="video/ogg">
                                <source src="/assets/video/Braces.mp4" type="video/mp4">
                            </video>
                            <div class="portfolio-info">
                                <h4>How Does Braces Work</h4>
                                <div class="portfolio-links">
                                    <a href="assets/video/Braces.mp4" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bi bi-plus"></i></a>
                                </div>
                            </div>--%>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                        <div class="portfolio-wrap">
                            <video width="450" height="250">
                                <source src="”http://techslides.com/demos/sample-videos/small.ogv”" type="video/ogg">
                                <source src="/assets/video/Braces.mp4" type="video/mp4">
                            </video>
                            <div class="portfolio-info">
                                <h4>How Does Braces Work</h4>
                                <div class="portfolio-links">
                                    <a href="assets/video/Braces.mp4" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bi bi-plus"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
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


