<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- SEO Meta Tags -->
    <meta name="description" content="Your description">
    <meta name="author" content="Your name">

    <!-- OG Meta Tags to improve the way the post looks when you share the page on Facebook, Twitter, LinkedIn -->
	<meta property="og:site_name" content="" /> <!-- website name -->
	<meta property="og:site" content="" /> <!-- website link -->
	<meta property="og:title" content=""/> <!-- title shown in the actual shared post -->
	<meta property="og:description" content="" /> <!-- description shown in the actual shared post -->
	<meta property="og:image" content="" /> <!-- image link, make sure it's jpg -->
	<meta property="og:url" content="" /> <!-- where do you want your post to link to -->
	<meta name="twitter:card" content="summary_large_image"> <!-- to have large image post format in Twitter -->

    <!-- Webpage Title -->
    <title>E Notes</title>

    <!-- Styles -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap" rel="stylesheet">
    <link href="./css/bootstrap.min.css" rel="stylesheet">
    <link href="./css/fontawesome-all.min.css" rel="stylesheet">
    <link href="./css/aos.min.css" rel="stylesheet">
    <link href="./css/swiper.css" rel="stylesheet">
    <link href="./css/style.css" rel="stylesheet">

    <!-- Favicon -->
    <link rel="icon" href="./assets/images/favicon.png">
    
    
</head>
<body>
    
    
    <!-- Navigation -->
    <nav id="navbar" class="navbar navbar-expand-lg fixed-top navbar-dark" aria-label="Main navigation">
        <div class="container">

            <!-- Image Logo -->
            <!-- <a class="navbar-brand logo-image" href="index.html"><img src="images/logo.svg" alt="alternative"></a> -->

            <!-- Text Logo - Use this if you don't have a graphic logo -->
            <a class="navbar-brand logo-text" href="Userindex.jsp">E Notes</a>

            <button class="navbar-toggler p-0 border-0" type="button" id="navbarSideCollapse" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault" >
                <ul class="navbar-nav ms-auto navbar-nav-scroll">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#header">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Userindex.jsp#about">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Userindex.jsp#services">Notes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Userindex.jsp#plans">Plans</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Userindex.jsp#contact">Contact</a>
                    </li>
                    <li class="nav-item">
          <%
           
        String id =""+session.getAttribute("id");
         String name =request.getParameter("name");
        System.out.println(name);
        
out.print("<a class='nav-link' href=UserCourses.jsp?id="+id+">Courses</a>");
session.setAttribute("name", name);
           
          %>
       
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="dropdown01" data-bs-toggle="dropdown" aria-expanded="false" href="#">Account</a>
                        
                        <ul class="dropdown-menu" aria-labelledby="dropdown01">
                            
                            <li><a class="dropdown-item" href="UserChngPass.jsp">Change Password</a></li>
                            <li><div class="dropdown-divider"></div></li>
                            <li><a class="dropdown-item" href="logoutservice">Logout</a></li>
                        </ul>
                    </li>
                    
                </ul>
                <span class="nav-item social-icons">
                    <span class="fa-stack">
                        <a href="#your-link">
                            <i class="fas fa-circle fa-stack-2x"></i>
                            <i class="fab fa-facebook-f fa-stack-1x"></i>
                        </a>
                    </span>
                    <span class="fa-stack">
                        <a href="#your-link">
                            <i class="fas fa-circle fa-stack-2x"></i>
                            <i class="fab fa-twitter fa-stack-1x"></i>
                        </a>
                    </span>
                </span>
            </div> <!-- end of navbar-collapse -->
        </div> <!-- end of container -->
    </nav> <!-- end of navbar -->
    <!-- end of navigation -->


    <!-- Home -->
    <section class="home py-5 d-flex align-items-center" id="header">
        <div class="container text-light py-5"  data-aos="fade-right"> 
            <h1 class="headline">Best <span class="home_text">E Notes</span><br>Plans For You</h1>
            <p class="para para-light py-3">We provide a notes for anyone who intrested in this. Our material which is absolutely correct and efficient for everyone. We provide the best content of the topic which is easy to understand for everyone.</p>
            <div class="d-flex align-items-center">
                <p class="p-2"><i class="fas fa-laptop-house fa-lg"></i></p>
                <p>BASIC CONTENT</p>  
            </div>
            <div class="d-flex align-items-center">
                <p class="p-2"><i class="fas fa-wifi fa-lg"></i></p>
                <p>PREMIUM CONTENT</p>  
            </div>
            <div class="my-3">
                <a class="btn" href="#plans">View Plans</a>
            </div>
        </div> <!-- end of container -->
    </section> <!-- end of home -->



<!--     Information 
    <section class="information">
        <div class="container-fluid">  
            <div class="row text-light">
                <div class="col-lg-4 text-center p-5" data-aos="zoom-in">
                    <i class="fas fa-tachometer-alt fa-3x p-2"></i>
                    <h4 class="py-3">Download 1 GBPS</h4>
                    <p class="para-light">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam odit consequatur doloribus natus in suscipit!</p>
                </div>
                <div class="col-lg-4 text-center p-5"  data-aos="zoom-in">
                    <i class="fas fa-clock fa-3x p-2"></i>
                    <h4 class="py-3">99% Internet Uptime</h4>
                    <p class="para-light">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam odit consequatur doloribus natus in suscipit!</p>
                </div>
                <div class="col-lg-4 text-center p-5 text-dark"  data-aos="zoom-in"> 
                    <i class="fas fa-headset fa-3x p-2"></i>
                    <h4 class="py-3">24/7 Support </h4>
                    <p class="para-light">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam odit consequatur doloribus natus in suscipit!</p>
                </div>
            </div>
        </div>  end of container 
    </section>  end of information -->
    

   <!-- About -->
    <section class="about d-flex align-items-center text-light py-5" id="about">
        <div class="container" >
            <div class="row d-flex align-items-center">
                <div class="col-lg-7" data-aos="fade-right">
                    <p>ABOUT US</p>
                    <h1>We provide a<br>notes sharing facility</h1>
                    <p class="py-2 para-light">We provide a notes for anyone who intrested in this. Our material which is absolutely correct and efficient for everyone. We provide the best content of the topic which is easy to understand for everyone.</p>
                    <p class="py-2 para-light">There are two category of the notes in our site which is basically in two types our first type is free and the second type is paid.</p>
                    
                    <div class="my-3">
                        <a class="btn" href="#your-link">Learn More</a>
                    </div>
                </div>
                <div class="col-lg-5 text-center py-4 py-sm-0" data-aos="fade-down"> 
                    <img class="img-fluid" src="./assets/images/about.jpg" alt="about" >
                </div>
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </section> <!-- end of about -->


     <!-- Services -->
    <section class="services d-flex align-items-center py-5" id="services">
        <div class="container text-light">
            <div class="text-center pb-4" >
                <p>OUR NOTES</p> 
                <h2 class="py-2">Explore unlimited possibilities</h2>
                <p class="para-light">We provide the notes in some different type which is shown below</p>
            </div>
            <div class="row gy-4 py-2" data-aos="zoom-in">
                <div class="col-lg-4">
                    
                    <a class='nav-link' style="text-decoration: none; color:white" href=UserCourses.jsp?id="+<% out.println(""+session.getAttribute("id")); %>">
                    <div class="card bg-transparent">
                        <i class="fas fa-solid fa-file-pdf fa-2x"></i>
                        <h4 class="py-2" onclick="logg()" >PDF FROMAT</h4>
                        <p class="para-light">We provide the notes in pdf format</p>
                    </div>
                    </a>    
                </div>
                <div class="col-lg-4">
                    <div class="card bg-transparent">
                        <i class="fas fa-2x fa-file"></i>
                        <h4 class="py-2" onclick="logg()" >TEXT FORMAT</h4>
                        <p class="para-light">We provide the notes in text format</p>
                    </div>                    
                </div>
                <div class="col-lg-4">
                    <div class="card bg-transparent">
                        <i class="fas fa-2x  fa-pen-nib"></i>
                        <h4 class="py-2" onclick="logg()" >HAND WRITTEN</h4>
                        <p class="para-light">WE also provide the hand writen notes </p>
                    </div>                    
                </div>
               
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </section> <!-- end of services -->


    <!-- Plans -->
    <section class="plans d-flex align-items-center py-5" id="plans">
        <div class="container text-light" >
            <div class="text-center pb-4">
                <h2 class="py-2">OUR SUBSCRIPTION PLANS OF PAID NOTES</h2>
                <p class="para-light">These are some subscription plans of paid notes that we are provide to students for better learning detailed concepts.</p>
            </div>
            <div class="row gy-4" data-aos="zoom-in">
                <div class="col-lg-4">
                    <div class="card bg-transparent px-4">
                        <h4 class="py-2">BASIC PLAN</h4>
                        <p class="py-3">This is our basic plan for our notes which is applicable for every note.</p>
                        <div class="block d-flex align-items-center">
                            <p class="pe-2"><i class="far fa-check-circle fa-1x"></i></p>
                            <p>It include a PDF format</p>
                        </div>
                        <div class="block d-flex align-items-center">
                            <p class="pe-2"><i class="far fa-check-circle fa-1x"></i></p>
                            <p>It include a file/text format </p>
                        </div>
                        <div class="block d-flex align-items-center">
                            <p class="pe-2"><i class="far fa-check-circle fa-1x"></i></p>
                            <p>It include a Hand written content material</p>
                        </div>
                      
                        <h4 class="py-3">Rs 100</h4>
                        <div class="my-3">
                            <a class="btn" onclick="demo()" >Buy Plan</a>
                        </div>
                    </div>  
                </div>

                <div class="col-lg-4">
                    <div class="card bg-transparent px-4">
                        <h4 class="py-2">MEDIUM PLAN</h4>
                        <p class="py-3">This is the avarage plan whihc is applicable for only 6 Months for every note.</p>
                        <div class="block d-flex align-items-center">
                            <p class="pe-2"><i class="far fa-check-circle fa-1x"></i></p>
                            <p>It include a PDF fromat</p>
                        </div>
                        <div class="block d-flex align-items-center">
                            <p class="pe-2"><i class="far fa-check-circle fa-1x"></i></p>
                            <p>It include a Hand written content material</p>
                        </div>
                        <div class="block d-flex align-items-center">
                            <p class="pe-2"><i class="far fa-check-circle fa-1x"></i></p>
                            <p>It include a file/text format </p>
                        </div>
                        
                        <h4 class="py-3">Rs 555</h4>
                        <div class="my-3">
                            <a class="btn" onclick="demo()" >Buy Plan</a>
                        </div>
                    </div>  
                </div>

                <div class="col-lg-4">
                    <div class="card bg-transparent px-4" >
                        <h4 class="py-2">PREMIUM Plan</h4>
                        <p class="py-3">This is the best plan which is applicable for only 12 Months for every note.</p>
                        <div class="block d-flex align-items-center">
                            <p class="pe-2"><i class="far fa-check-circle fa-1x"></i></p>
                            <p>It include a PDF fromat</p>
                        </div>
                        <div class="block d-flex align-items-center">
                            <p class="pe-2"><i class="far fa-check-circle fa-1x"></i></p>
                            <p>It include a Hand written content material</p>
                        </div>
                        <div class="block d-flex align-items-center">
                            <p class="pe-2"><i class="far fa-check-circle fa-1x"></i></p>
                            <p>It include a file/text format </p>
                        </div>
                        <h4 class="py-3">Rs 999</h4>
                        <div class="my-3">
                            <a class="btn" onclick="demo()" >Buy Plan</a>                    
                        </div>
                    </div>  
                </div>
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </section> <!-- end of plans -->
   
    <!-- Work -->
    <section class="work d-flex align-items-center py-5" >
        <div class="container-fluid text-light">
            <div class="row">
                <div class="col-lg-6 d-flex align-items-center" data-aos="fade-right">
                    <img class="img-fluid" src="./assets/images/work.jpg" alt="work">        
                </div>
                <div class="col-lg-5 d-flex align-items-center px-4 py-3" data-aos="">
                    <div class="row">
                        <div class="text-center text-lg-start py-4 pt-lg-0">
                           
                            <h2 class="py-2">OUR WORK</h2>
                            <p class="para-light">This is the data of our working detail of complete notes and achievements and currently active students with us.  </p>
                        </div>
                        <div class="container" data-aos="fade-up">
                            <div class="row g-5">
                                <div class="col-6 text-start" >
                                    <i class="fas fa-briefcase fa-2x text-start"></i>
                                    <h2 class="purecounter" data-purecounter-start="0" data-purecounter-end="1258" data-purecounter-duration="3">1</h2>
                                    <p>NOTES COMPLETED</p>
                                </div>
                                <div class="col-6" >
                                    <i class="fas fa-award fa-2x"></i>
                                    <h2 class="purecounter" data-purecounter-start="0" data-purecounter-end="150" data-purecounter-duration="3">1</h2>
                                    <p>AWARDS</p>
                                </div>
                                <div class="col-6">
                                    <i class="fas fa-users fa-2x"></i>
                                    <h2 class="purecounter" data-purecounter-start="0" data-purecounter-end="1255" data-purecounter-duration="3">1</h2>
                                    <p>STUDENTS ACTIVE</p>
                                </div>
                                <div class="col-6">
                                    <i class="fas fa-clock fa-2x"></i>
                                    <h2 class="purecounter" data-purecounter-start="0" data-purecounter-end="1157" data-purecounter-duration="3">1</h2>
                                    <p>GOOD REVIEWS</p>
                                </div>
                            </div>
                        </div> <!-- end of container -->
                    </div> <!-- end of row -->
                </div> <!-- end of col-lg-5 -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </section> <!-- end of work -->


     <!-- Testimonials -->
    <div class="slider-1 testimonial text-light d-flex align-items-center">
        <div class="container">
            <div class="row">
                <div class="text-center w-lg-75 m-auto pb-4">
                    <h2 class="py-2">What Our Students Says</h2>
                    <p class="para-light">This is the data which is given by the our student's review whhich is based on our performance</p>
                </div>
            </div> <!-- end of row -->
            <div class="row p-2" data-aos="zoom-in">
                <div class="col-lg-12">

                    <!-- Card Slider -->
                    <div class="slider-container">
                        <div class="swiper-container card-slider">
                            <div class="swiper-wrapper">
                                
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="testimonial-card p-4">
                                        <p>This platform is the best platform for downloading the notes with a premium quality and their plans are also affordable.</p>
                                    
                                        <div class="d-flex pt-4">
                                            <div>
                                                <img class="avatar" src="./assets/images/testimonial-1.jpg" alt="testimonial">
                                            </div>
                                            <div class="ms-3 pt-2">
                                                <h6>Mohd Adnan Khan</h6>
                                                <p>General Manager - Scouter</p>
                                            </div>
                                        </div>
                                    </div>
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->
        
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="testimonial-card p-4">
                                        <p>This platform is the best platform for downloading the notes with a premium quality and their plans are also affordable.</p>
                                        <div class="d-flex pt-4">
                                            <div>
                                                <img class="avatar" src="./assets/images/testimonial-2.jpg" alt="testimonial">
                                            </div>
                                            <div class="ms-3 pt-2">
                                                <h6>Ali Ahmad</h6>
                                                <p>Team Leader - Vanquish</p>
                                            </div>
                                        </div>
                                    </div>
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->
        
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="testimonial-card p-4">
                                        <p>Notes are well arrange according to our syllabus and every topic is covered.</p>
                                        <div class="d-flex pt-4">
                                            <div>
                                                <img class="avatar" src="./assets/images/testimonial-3.jpg" alt="testimonial">
                                            </div>
                                            <div class="ms-3 pt-2">
                                                <h6>Sakshi Halwai</h6>
                                                <p>Software Developer - Assencive Technologies</p>
                                            </div>
                                        </div>
                                    </div>      
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->
        
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="testimonial-card p-4">
                                        <p>Everything is good in your platform but please also add some good offers on downloading </p>
                                        <div class="d-flex pt-4">
                                            <div>
                                                <img class="avatar" src="./assets/images/testimonial-4.jpg" alt="testimonial">
                                            </div>
                                            <div class="ms-3 pt-2">
                                                <p>Mohd Sharif Qureshi</p>
                                                <p>Frontend Developer - TechGroww</p>
                                            </div>
                                        </div>
                                    </div>
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->

                            </div> <!-- end of swiper-wrapper -->
        
                            <!-- Add Arrows -->
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                            <!-- end of add arrows -->
        
                        </div> <!-- end of swiper-container -->
                    </div> <!-- end of slider-container -->
                    <!-- end of card slider -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of testimonials -->



    <!-- Contact -->
    <section class="contact d-flex align-items-center py-5" id="contact">
        <div class="container-fluid text-light">
            <div class="row">
                <div class="col-lg-6 d-flex justify-content-center justify-content-lg-end align-items-center px-lg-5" data-aos="fade-right">
                    <div style="width:90%">
                        <div class="text-center text-lg-start py-4 pt-lg-0">
                            <p>CONTACT</p>
                            <h2 class="py-2">Send your query</h2>
                            <p class="para-light">You can send any query which is related to the our notes. If you want a notes on any different topic so you can also send the the description about that topic</p>
                        </div>
                        <div>
                            <div class="row" >
                                <div class="col-lg-6">
                                    <div class="form-group py-2">
                                        <input type="text" class="form-control form-control-input" id="exampleFormControlInput1" placeholder="Enter name">
                                    </div>                                
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group py-2">
                                        <input type="email" class="form-control form-control-input" id="exampleFormControlInput2" placeholder="Enter phone number">
                                    </div>                                 
                                </div>
                            </div>
                            <div class="form-group py-1">
                                <input type="email" class="form-control form-control-input" id="exampleFormControlInput3" placeholder="Enter email">
                            </div>  
                            <div class="form-group py-2">
                                <textarea class="form-control form-control-input" id="exampleFormControlTextarea1" rows="6" placeholder="Message"></textarea>
                            </div>                            
                        </div>
                        <div class="my-3">
                            <a class="btn form-control-submit-button" href="#your-link">Submit</a>
                        </div>
                    </div> <!-- end of div -->
                </div> <!-- end of col -->
                <div class="col-lg-6 d-flex align-items-center" data-aos="fade-down">
                    <img class="img-fluid d-none d-lg-block" src="./assets/images/contact.jpg" alt="contact">        
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </section> <!-- end of contact -->


    <!-- Location -->
    <section class="location text-light py-5">
        <div class="container" data-aos="zoom-in">
            <div class="row">
                <div class="col-lg-3 d-flex align-items-center">
                    <div class="p-2"><i class="far fa-map fa-3x"></i></div>
                    <div class="ms-2">
                        <h6>ADDRESS</h6>
                        <p>786 Hajratganj Lucknow - 220022</p>
                    </div>
                </div>
                <div class="col-lg-3 d-flex align-items-center" >
                    <div class="p-2"><i class="fas fa-mobile-alt fa-3x"></i></div>
                    <div class="ms-2">
                        <h6>CALL FOR QUERY</h6>
                        <p>+91 8577001721</p>
                    </div>
                </div>
                <div class="col-lg-3 d-flex align-items-center" >
                    <div class="p-2"><i class="far fa-envelope fa-3x"></i></div>
                    <div class="ms-2">
                        <h6>SEND US MESSAGE</h6>
                        <p>mfaizq786@gmail.com</p>
                    </div>
                </div>
                <div class="col-lg-3 d-flex align-items-center" >
                    <div class="p-2"><i class="far fa-clock fa-3x"></i></div>
                    <div class="ms-2">
                        <h6>OPENING HOURS</h6>
                        <p>09:00 AM - 18:00 PM</p>
                    </div>
                </div>
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </section> <!-- end of location -->


     <!-- Footer -->
    <section class="footer text-light">
        <div class="container">
            <div class="row" data-aos="fade-right">
                <div class="col-lg-3 py-4 py-md-5">
                    <div class="d-flex align-items-center">
                        <h4 class="">Notes <br> Exchange <br> Platform</h4>
                    </div>
                    <p class="py-3 para-light">Provide the best Quality Content</p>
                    <div class="d-flex">
                        <div class="me-3">
                            <a href="#your-link">
                                <i class="fab fa-facebook-f fa-2x py-2"></i>
                            </a>
                        </div>
                        <div class="me-3">
                            <a href="#your-link">
                                <i class="fab fa-twitter fa-2x py-2"></i>
                            </a>
                        </div>
                        <div class="me-3">
                            <a href="#your-link">
                                <i class="fab fa-instagram fa-2x py-2"></i>
                            </a>
                        </div>
                    </div>
                </div> <!-- end of col -->

                <div class="col-lg-3 py-4 py-md-5">
                    <div>
                        <h4 class="py-2">Quick Links</h4>
                        <div class="d-flex align-items-center py-2">
                            <i class="fas fa-caret-right"></i>
                            <a href="#about"><p class="ms-3">About</p></a>
                        </div>
                        <div class="d-flex align-items-center py-2">
                            <i class="fas fa-caret-right"></i>
                            <a href="#services"><p class="ms-3">Services</p></a>
                        </div>
                        <div class="d-flex align-items-center py-2">
                            <i class="fas fa-caret-right"></i>
                            <a href="#"><p class="ms-3">Plans</p></a>
                        </div>
                        <div class="d-flex align-items-center py-2">
                            <i class="fas fa-caret-right"></i>
                            <a href="#"><p class="ms-3">Contact</p></a>
                        </div>
                    </div>
                </div> <!-- end of col -->

                <div class="col-lg-3 py-4 py-md-5">
                    <div>
                        <h4 class="py-2">Useful Links</h4>
                        <div class="d-flex align-items-center py-2">
                            <i class="fas fa-caret-right"></i>
                            <a href="#"><p class="ms-3">Privacy</p></a>
                            
                        </div>
                        <div class="d-flex align-items-center py-2">
                            <i class="fas fa-caret-right"></i>
                            <a href=""><p class="ms-3">Terms</p></a>
                        </div>
                        <div class="d-flex align-items-center py-2">
                            <i class="fas fa-caret-right"></i>
                            <a href="#"><p class="ms-3">Disclaimer</p></a>
                        </div>
                        <div class="d-flex align-items-center py-2">
                            <i class="fas fa-caret-right"></i>
                            <a href="#"><p class="ms-3">FAQ</p></a>
                        </div>
                    </div>
                </div> <!-- end of col -->

                <div class="col-lg-3 py-4 py-md-5">
                    <div class="d-flex align-items-center">
                        <h4>Newsletter</h4>
                    </div>
                    <p class="py-3 para-light">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam, ab.</p>
                    <div class="d-flex align-items-center">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control p-2" placeholder="Enter Email" aria-label="Recipient's email">
                            <button class="btn-secondary text-light"><i class="fas fa-envelope fa-lg"></i></button>       
                        </div>
                    </div>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </section> <!-- end of footer -->


    <!-- Bottom -->
    <div class="bottom py-2 text-light" >
        <div class="container d-flex justify-content-between">
            <div>
                <p>Copyright � Mohd Faiz Qureshi</p><br>
                <!--<p>Distributed by: <a href="https://themewagon.com/">Themewagon</a></p>-->
            </div>
            <div>
                <i class="fab fa-cc-visa fa-lg p-1"></i>
                <i class="fab fa-cc-mastercard fa-lg p-1"></i>
                <i class="fab fa-cc-paypal fa-lg p-1"></i>
                <i class="fab fa-cc-amazon-pay fa-lg p-1"></i>
            </div>
        </div> <!-- end of container -->
    </div> <!-- end of bottom -->
    
    <!-- Back To Top Button -->
    <button onclick="topFunction()" id="myBtn">
        <img src="assets/images/up-arrow.png" alt="alternative">
    </button>
    <!-- end of back to top button -->

    
    <!-- Scripts -->
    <script src="./js/bootstrap.min.js"></script><!-- Bootstrap framework -->
    <script src="./js/purecounter.min.js"></script> <!-- Purecounter counter for statistics numbers -->
    <script src="./js/swiper.min.js"></script><!-- Swiper for image and text sliders -->
    <script src="./js/aos.js"></script><!-- AOS on Animation Scroll -->
    <script src="./js/script.js"></script>  <!-- Custom scripts -->
    
    <% 
        String msg = (String) session.getAttribute("success_msg");
        
    %>
    
    
</body>
</html>