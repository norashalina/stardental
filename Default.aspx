<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Star.Default" %>

<!DOCTYPE html>
<html lang="en">

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
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

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
        $('#exampleModalCenter').on('shown.bs.modal', function () {
            $(this).find('[autofocus]').focus();
        });
        $('#exampleModalCenter1').on('shown.bs.modal', function () {
            $(this).find('[autofocus]').focus();
        });
        $('#exampleModalCenter2').on('shown.bs.modal', function () {
            $(this).find('[autofocus]').focus();
        });
        $('#exampleModalCenter3').on('shown.bs.modal', function () {
            $(this).find('[autofocus]').focus();
        });

    </script>
</head>

<body>
    <!-- ======= Header ======= -->
    <header id="header" class="d-flex align-items-center">
        <div class="container d-flex align-items-center">

            <div class="logo me-auto">
                <h1><a href="Default.aspx">STAR DENTAL</a></h1>
                <!-- Uncomment below if you prefer to use an image logo -->
                <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
            </div>

            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
                    <li><a class="nav-link scrollto" href="#about">About</a></li>
                    <li><a class="nav-link scrollto" href="#services">Services</a></li>
                    <li><a class="nav-link scrollto" href="BookingForm.aspx">Book Appointment</a></li>
                    <li><a class="nav-link scrollto" href="GeneralKnowledge.aspx">Knowledge</a></li>
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
                    <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
                    <li><a class="nav-link scrollto" href="Login.aspx">Login</a></li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav>
            <!-- .navbar -->

        </div>
    </header>
    <!-- End Header -->

    <!-- ======= Hero Section ======= -->
    <section id="hero">
        <div class="hero-container">
            <div id="heroCarousel" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="5000">

                <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

                <div class="carousel-inner" role="listbox">

                    <!-- Slide 1 -->
                    <div class="carousel-item active" style="background-image: url('assets/img/slide/slider1.jpg');">
                        <div class="carousel-container">
                            <div class="carousel-content container">
                                <h2 class="animate__animated animate__fadeInDown">Welcome to <span>Star Dental
                                </span></h2>
                                <p class="animate__animated animate__fadeInUp">
                                    We provide you a dental visit 
                                    that feels like a home, begins by walking through the door of our beautiful clinic, with a warm, inviting atmosphere.
                                </p>
                                <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Read More</a>
                            </div>
                        </div>
                    </div>

                    <!-- Slide 2 -->
                    <div class="carousel-item" style="background-image: url('assets/img/slide/slider2.jpg');">
                        <div class="carousel-container">
                            <div class="carousel-content container">
                                <h2 class="animate__animated animate__fadeInRight">Welcome to <span>Star Dental</h2>
                                <p class="animate__animated animate__fadeInUp">
                                    We have specifically designed our clinic to not resemble a typical dental clinic, 
                                    but a place of happiness and health to level up your smile
                                </p>
                                <%--<a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Read More</a>--%>
                            </div>
                        </div>
                    </div>

                    <!-- Slide 3 -->
                    <div class="carousel-item" style="background-image: url('assets/img/slide/slider3.jpg');">
                        <div class="carousel-container">
                            <div class="carousel-content container">
                                <h2 class="animate__animated animate__fadeInLeft">Welcome to <span>Star Dental</h2>
                                <%-- <p class="animate__animated animate__fadeInUp">Our aim is to provide patients with highest quality dental care
                                    in a comfortable, relaxed and friendly environment. <br>Happy Teeth Happy Smile</p>
                                <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Read More</a>--%>
                            </div>
                        </div>
                    </div>

                </div>

                <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
                </a>
                <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
                    <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
                </a>

            </div>
        </div>
    </section>
    <!-- End Hero -->

    <main id="main">

        <!-- ======= About Us Section ======= -->
        <section id="about" class="about">
            <div class="container" data-aos="fade-up">

                <div class="row no-gutters">
                    <div class="col-lg-6 video-box justify-content-center">
                        <%--<img src="assets/img/about.jpg" class="img-fluid" alt="">--%>
                        <video width="550" height="350" controls autoplay>
                            <source src="”http://techslides.com/demos/sample-videos/small.ogv”" type="video/ogg">
                            <source src="/assets/video/teethanimation.mp4" type="video/mp4">
                        </video>
                        <%--<a href="https://www.youtube.com/watch?v=jDDaplaOz7Q" class="venobox play-btn mb-4" data-vbtype="video" data-autoplay="true"></a>--%>
                    </div>

                    <div class="col-lg-6 d-flex flex-column justify-content-center about-content">

                        <div class="section-title">
                            <h2>About Us</h2>
                            <p>We pride ourselves in providing the highest quality of clinical care in a warm and compassionate atmosphere. Smile healthily with confidence again in our modern and cozy state of the art facility.</p>
                        </div>

                        <%-- <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
                            <div class="icon"><i class="bx bx-fingerprint"></i></div>
                            <h4 class="title"><a href="">Lorem Ipsum</a></h4>
                            <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident</p>
                        </div>

                        <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
                            <div class="icon"><i class="bx bx-gift"></i></div>
                            <h4 class="title"><a href="">Nemo Enim</a></h4>
                            <p class="description">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque</p>
                        </div>--%>
                    </div>
                </div>

            </div>
        </section>
        <!-- End About Us Section -->

        <!-- ======= Our Team Section ======= -->
        <section id="team" class="team">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>Our Team</h2>
                    <p>Take that notch up, our experienced Drs go the extra mile in educating patients and personalizing their treatment plans so they get the most honest opinions and informed decisions to take care of their oral health.</p>
                </div>

                <div class="row">

                    <div class="col-xl-3 col-lg-4 col-md-6" data-aos="fade-up">
                        <%--<div class="member">
                            <div class="pic">
                                <img src="assets/img/team/team-1.jpg" class="img-fluid" alt=""></div>
                            <div class="member-info">
                                <h4>Walter White</h4>
                                <span>Chief Executive Officer</span>
                                <div class="social">
                                    <a href=""><i class="bi bi-twitter"></i></a>
                                    <a href=""><i class="bi bi-facebook"></i></a>
                                    <a href=""><i class="bi bi-instagram"></i></a>
                                    <a href=""><i class="bi bi-linkedin"></i></a>
                                </div>
                            </div>
                        </div>--%>
                    </div>

                    <div class="col-xl-3 col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
                        <div class="member">
                            <div class="pic">
                                <img src="assets/img/team/dr1.png" class="img-fluid" alt="">
                            </div>
                            <div class="member-info">
                                <h4>Dr. Nur Izan Bazlina</h4>
                                <span>Co-Founder of Star Dental Clinic. Orthodontist. Bachelor of Dental Surgery, Universitas Prof. Dr. Moestopo, Jakarta.<br/> 8 years of experience.</span>
                                <%--<div class="social">
                                    <a href=""><i class="bi bi-twitter"></i></a>
                                    <a href=""><i class="bi bi-facebook"></i></a>
                                    <a href=""><i class="bi bi-instagram"></i></a>
                                    <a href=""><i class="bi bi-linkedin"></i></a>
                                </div>--%>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-3 col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="200">
                        <div class="member">
                            <div class="pic">
                                <img src="assets/img/team/dr2.png" class="img-fluid" alt="">
                            </div>
                            <div class="member-info">
                                <h4>Dr. Afizudin</h4>
                                <span>Root Canal Specialist. Senior Dentist.<br />
                                    Bachelor of Dental Surgery, Universiti Islam Antarabangsa (UIAM). <br/> 5 years of experience.</span>
                                <%-- <div class="social">
                                    <a href=""><i class="bi bi-twitter"></i></a>
                                    <a href=""><i class="bi bi-facebook"></i></a>
                                    <a href=""><i class="bi bi-instagram"></i></a>
                                    <a href=""><i class="bi bi-linkedin"></i></a>
                                </div>--%>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-3 col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="300">
                        <%--<div class="member">
                            <div class="pic">
                                <img src="assets/img/team/team-4.jpg" class="img-fluid" alt=""></div>
                            <div class="member-info">
                                <h4>Amanda Jepson</h4>
                                <span>Accountant</span>
                                <div class="social">
                                    <a href=""><i class="bi bi-twitter"></i></a>
                                    <a href=""><i class="bi bi-facebook"></i></a>
                                    <a href=""><i class="bi bi-instagram"></i></a>
                                    <a href=""><i class="bi bi-linkedin"></i></a>
                                </div>
                            </div>
                        </div>--%>
                    </div>
                    
                    <div class="col-xl-4 col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="300">
                        <div class="member">
                            <div class="pic">
                                <img src="assets/img/team/dsa1.png" class="img-fluid" alt="">
                            </div>
                            <div class="member-info">
                                <h4>Nor Ziana Abu Bakar</h4>
                                <span>Dental Surgery Assistant <br/> UiTM Puncak Alam <br/> 3 years of experience</span>
                                <%--<div class="social">
                                    <a href=""><i class="bi bi-twitter"></i></a>
                                    <a href=""><i class="bi bi-facebook"></i></a>
                                    <a href=""><i class="bi bi-instagram"></i></a>
                                    <a href=""><i class="bi bi-linkedin"></i></a>
                                </div>--%>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="300">
                        <div class="member">
                            <div class="pic">
                                <img src="assets/img/team/dsa2.png" class="img-fluid" alt="">
                            </div>
                            <div class="member-info">
                                <h4>Nuraisah</h4>
                                <span>Dental Surgery Assistant <br/> 2 years of experience</span>
                                <%--<div class="social">
                                    <a href=""><i class="bi bi-twitter"></i></a>
                                    <a href=""><i class="bi bi-facebook"></i></a>
                                    <a href=""><i class="bi bi-instagram"></i></a>
                                    <a href=""><i class="bi bi-linkedin"></i></a>
                                </div>--%>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="300">
                        <div class="member">
                            <div class="pic">
                                <img src="assets/img/team/dsa3.png" class="img-fluid" alt="">
                            </div>
                            <div class="member-info">
                                <h4>Siti Suhaila Rafiah</h4>
                                <span>Dental Surgery Assistant <br/> Labuan Matriculation College <br/> 2 years of experience</span>
                                <%--<div class="social">
                                    <a href=""><i class="bi bi-twitter"></i></a>
                                    <a href=""><i class="bi bi-facebook"></i></a>
                                    <a href=""><i class="bi bi-instagram"></i></a>
                                    <a href=""><i class="bi bi-linkedin"></i></a>
                                </div>--%>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </section>
        <!-- End Our Team Section -->



        <!-- ======= Services Section ======= -->
        <section id="services" class="services">
            <div class="container" data-aos="fade-up">
                <form runat="server">
                    <div class="section-title">
                        <h2>Services</h2>
                    </div>

                    <div class="row">
                        <div class="col-lg-3 col-md-6 icon-box" data-aos="fade-up">
                            <div class="icon">
                                <img src="assets/img/services/checkup.png" class="img-fluid" alt="">
                            </div>
                            <h4 class="title"><a href="">Dental Checkup</a></h4>
                            <p class="description">Dental consultation or anually checkup.</p>
                            <%--<asp:Button ID="btnSubmit" runat="server" Text="from RM50" CssClass="btn btn-dark" Enabled="false" />--%>
                            <button type="button" class="btn btn-dark" data-toggle="modal" data-target="#exampleModalCenter1">
                                More details
                            </button>
                        </div>
                        <div class="col-lg-3 col-md-6 icon-box" data-aos="fade-up" data-aos-delay="100">
                            <div class="icon">
                                <img src="assets/img/services/scaling.png" class="img-fluid" alt="">
                            </div>
                            <h4 class="title"><a href="">Scaling & Polishing</a></h4>
                            <p class="description">General and family dentistry</p><br />
                            <%--<asp:Button ID="Button1" runat="server" Text="from RM190" CssClass="btn btn-dark" Enabled="false" />--%>
                            <button type="button" class="btn btn-dark" data-toggle="modal" data-target="#exampleModalCenter2">
                                More details
                            </button>
                        </div>
                        <div class="col-lg-3 col-md-6 icon-box" data-aos="fade-up" data-aos-delay="200">
                            <div class="icon">
                                <img src="assets/img/services/rct.png" class="img-fluid" alt="">
                            </div>
                            <h4 class="title"><a href="">Root Canal Treatment</a></h4>
                            <p class="description">A dental procedure used to treat infection at the centre of a tooth.</p>
                            <%-- <asp:Button ID="Button2" runat="server" Text="from RM200" CssClass="btn btn-dark" Enabled="false" />--%>
                            <button type="button" class="btn btn-dark" data-toggle="modal" data-target="#exampleModalCenter3">
                                More details
                            </button>
                        </div>
                        <div class="col-lg-3 col-md-6 icon-box" data-aos="fade-up" data-aos-delay="300">
                            <div class="icon">
                                <img src="assets/img/services/braces.png" class="img-fluid" alt="">
                            </div>
                            <h4 class="title"><a href="">Braces</a></h4>
                            <p class="description">Orthodontics</p><br />
                            <%--<asp:Button ID="Button3" runat="server" Text="from RM4500" CssClass="btn btn-dark" Enabled="false"/>--%>
                            <button type="button" class="btn btn-dark" data-toggle="modal" data-target="#exampleModalCenter">
                                More details
                            </button>
                        </div>

                    </div>
                </form>
            </div>
        </section>
        <!-- End Services Section -->
        <!-- Modal -->
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document" width="800px">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Braces (from RM 3,900)</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p class="description">Align and straighten teeth, like crowding and crooked teeth to improve one's bite and dental health</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="exampleModalCenter1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle1" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document" width="800px">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle1">Dental Checkup (from RM 50)</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p class="description">Examine the teeth, gums and mouth, ask about general health and advise about tooth-cleaning habits, diet, smoking and alcohol use</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="exampleModalCenter2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle2" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document" width="800px">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle2">Scaling & Polishing (from RM 190)</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p class="description">Removes tartar (calculus), plaque and biofilm from the tooth surface and underneath the gum life</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="exampleModalCenter3" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle3" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document" width="800px">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle3">Root Canal Treatment (from RM 200)</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p class="description">Removal of the tooth's infected pulp to save a tooth that might otherwise have to be removed completely</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- ======= Our Portfolio Section ======= -->
        <section id="portfolio" class="portfolio section-bg">
            <div class="container" data-aos="fade-up" data-aos-delay="100">

                <div class="section-title">
                    <h2>Gallery</h2>
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
                                <img src="assets/img/portfolio/star1.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Star Dental</h4>
                                    <div class="portfolio-links">
                                        <a href="assets/img/portfolio/star1.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bi bi-plus"></i></a>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                            <div class="portfolio-wrap">
                                <img src="assets/img/portfolio/star2.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Pantry</h4>
                                    <div class="portfolio-links">
                                        <a href="assets/img/portfolio/star2.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bi bi-plus"></i></a>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                            <div class="portfolio-wrap">
                                <img src="assets/img/portfolio/star3.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Kids Area</h4>
                                    <div class="portfolio-links">
                                        <a href="assets/img/portfolio/star3.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bi bi-plus"></i></a>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                            <div class="portfolio-wrap">
                                <img src="assets/img/portfolio/star4.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Waiting Area</h4>
                                    <div class="portfolio-links">
                                        <a href="assets/img/portfolio/star4.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bi bi-plus"></i></a>

                                    </div>
                                </div>
                            </div>
                        </div><div class="col-lg-4 col-md-6 portfolio-item filter-web">
                            <div class="portfolio-wrap">
                                <img src="assets/img/portfolio/star5.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Reception Counter</h4>
                                    <div class="portfolio-links">
                                        <a href="assets/img/portfolio/star5.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bi bi-plus"></i></a>

                                    </div>
                                </div>
                            </div>
                        </div><div class="col-lg-4 col-md-6 portfolio-item filter-web">
                            <div class="portfolio-wrap">
                                <img src="assets/img/portfolio/star6.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Waiting Area</h4>
                                    <div class="portfolio-links">
                                        <a href="assets/img/portfolio/star6.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bi bi-plus"></i></a>

                                    </div>
                                </div>
                            </div>
                        </div><div class="col-lg-4 col-md-6 portfolio-item filter-web">
                            <div class="portfolio-wrap">
                                <img src="assets/img/portfolio/star7.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Waiting Area</h4>
                                    <div class="portfolio-links">
                                        <a href="assets/img/portfolio/star7.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bi bi-plus"></i></a>

                                    </div>
                                </div>
                            </div>
                        </div><div class="col-lg-4 col-md-6 portfolio-item filter-web">
                            <div class="portfolio-wrap">
                                <img src="assets/img/portfolio/star8.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>X-ray Room</h4>
                                    <div class="portfolio-links">
                                        <a href="assets/img/portfolio/star8.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bi bi-plus"></i></a>

                                    </div>
                                </div>
                            </div>
                        </div><div class="col-lg-4 col-md-6 portfolio-item filter-web">
                            <div class="portfolio-wrap">
                                <img src="assets/img/portfolio/star9.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>X-ray Room</h4>
                                    <div class="portfolio-links">
                                        <a href="assets/img/portfolio/star9.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bi bi-plus"></i></a>

                                    </div>
                                </div>
                            </div>
                        </div><div class="col-lg-4 col-md-6 portfolio-item filter-web">
                            <div class="portfolio-wrap">
                                <img src="assets/img/portfolio/star10.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Restroom</h4>
                                    <div class="portfolio-links">
                                        <a href="assets/img/portfolio/star10.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bi bi-plus"></i></a>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!-- End Our Portfolio Section -->



        <!-- ======= Frequently Asked Questions Section ======= -->
        <%--<section id="faq" class="faq section-bg">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>Frequently Asked Questions</h2>
                </div>

                <div class="row  d-flex align-items-stretch">

                    <div class="col-lg-6 faq-item" data-aos="fade-up">
                        <h4>Non consectetur a erat nam at lectus urna duis?</h4>
                        <p>
                            Feugiat pretium nibh ipsum consequat. Tempus iaculis urna id volutpat lacus laoreet non curabitur gravida. Venenatis lectus magna fringilla urna porttitor rhoncus dolor purus non.
                        </p>
                    </div>

                    <div class="col-lg-6 faq-item" data-aos="fade-up" data-aos-delay="100">
                        <h4>Feugiat scelerisque varius morbi enim nunc faucibus a pellentesque?</h4>
                        <p>
                            Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim.
                        </p>
                    </div>

                    <div class="col-lg-6 faq-item" data-aos="fade-up" data-aos-delay="200">
                        <h4>Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi?</h4>
                        <p>
                            Eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis orci. Faucibus pulvinar elementum integer enim. Sem nulla pharetra diam sit amet nisl suscipit. Rutrum tellus pellentesque eu tincidunt. Lectus urna duis convallis convallis tellus.
                        </p>
                    </div>

                    <div class="col-lg-6 faq-item" data-aos="fade-up" data-aos-delay="300">
                        <h4>Ac odio tempor orci dapibus. Aliquam eleifend mi in nulla?</h4>
                        <p>
                            Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim.
                        </p>
                    </div>

                    <div class="col-lg-6 faq-item" data-aos="fade-up" data-aos-delay="400">
                        <h4>Tempus quam pellentesque nec nam aliquam sem et tortor consequat?</h4>
                        <p>
                            Molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim suspendisse in est ante in. Nunc vel risus commodo viverra maecenas accumsan. Sit amet nisl suscipit adipiscing bibendum est. Purus gravida quis blandit turpis cursus in
                        </p>
                    </div>

                    <div class="col-lg-6 faq-item" data-aos="fade-up" data-aos-delay="500">
                        <h4>Tortor vitae purus faucibus ornare. Varius vel pharetra vel turpis nunc eget lorem dolor?</h4>
                        <p>
                            Laoreet sit amet cursus sit amet dictum sit amet justo. Mauris vitae ultricies leo integer malesuada nunc vel. Tincidunt eget nullam non nisi est sit amet. Turpis nunc eget lorem dolor sed. Ut venenatis tellus in metus vulputate eu scelerisque.
                        </p>
                    </div>

                </div>

            </div>
        </section>--%>
        <!-- End Frequently Asked Questions Section -->

        <!-- ======= Contact Us Section ======= -->
        <section id="contact" class="contact">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>Contact Us</h2>
                </div>

                <div class="row">

                    <div class="col-lg-6 d-flex" data-aos="fade-up">
                        <div class="info-box">
                            <a href="https://goo.gl/maps/to2q1N7hoAJdHEAa8" target="_blank"><i class="bx bx-map"></i></a>
                            <h3>Our Address</h3>
                            <p>
                                CONNEZION-L-02-06 Block L, Connection Commercial,
                                <br>
                                Persiaran IRC 3, IOI Resort City,
                                <br>
                                62502 Putrajaya.
                            </p>
                        </div>
                    </div>

                    <%--<div class="col-lg-3 d-flex" data-aos="fade-up" data-aos-delay="100">
                        <div class="info-box">
                            <i class="bx bx-envelope"></i>
                            <h3>Email Us</h3>
                            <p>
                                info@example.com<br>
                                contact@example.com
                            </p>
                        </div>
                    </div>--%>

                    <div class="col-lg-6 d-flex" data-aos="fade-up" data-aos-delay="200">
                        <div class="info-box ">
                            <i class="bx bx-phone-call"></i>
                            <h3>Call Us</h3>
                            <p>+6017-7500095 </p>
                            <p>Email: Info@stardental.com</p>
                        </div>
                    </div>

                    <%-- <div class="col-lg-12" data-aos="fade-up" data-aos-delay="300">
                        <form action="forms/contact.php" method="post" role="form" class="php-email-form">
                            <div class="row">
                                <div class="col-lg-6 form-group">
                                    <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                                </div>
                                <div class="col-lg-6 form-group">
                                    <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
                            </div>
                            <div class="my-3">
                                <div class="loading">Loading</div>
                                <div class="error-message"></div>
                                <div class="sent-message">Your message has been sent. Thank you!</div>
                            </div>
                            <div class="text-center">
                                <button type="submit">Send Message</button></div>
                        </form>
                    </div>--%>
                </div>

            </div>
        </section>
        <!-- End Contact Us Section -->

    </main>
    <!-- End #main -->

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
