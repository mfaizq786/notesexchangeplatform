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
    <title>Admin login</title>
    <style>
       

        form {
            background-color: #1c262f;
            padding: 60px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            width: 400px;
            height: 400px;
            justify-content: space-between;
            display:flex;
            flex-direction:column;
        
        }

        h3 {
            text-align: center;
            color: #fffdfd;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            color: #ffffff;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-top: -25px;
            box-sizing: border-box;
            background: #1a1a1b39;
            border-radius: 4px;
            outline: none;
            border: none;
            color: azure;
        }

        input:hover{
            border: 1px solid whitesmoke;
        }
        button {
            background-color: #4caf50;
            color: white;
            margin-top: 20px;
            padding: 10px 15px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            
            width: 50%;
        }

        button:hover {
            background-color: #45a049;
        }

        .error-message {
            color: #d9534f;
            margin-top: 10px;
            text-align: center;
        }
    </style>

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
            <a class="navbar-brand logo-text" href="UserArticle.jsp">E-Notes</a>

            <button class="navbar-toggler p-0 border-0" type="button" id="navbarSideCollapse" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault" >
                <ul class="navbar-nav ms-auto navbar-nav-scroll">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="Userindex.jsp/#header">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Userindex.jsp/#about">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Userindex.jsp/#services">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Userindex.jsp/#plans">Plans</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="dropdown01" data-bs-toggle="dropdown" aria-expanded="false" href="#">Manage Notes</a>
                        
                        <ul class="dropdown-menu" aria-labelledby="dropdown01">
                            <li><a class="dropdown-item" >Add Notes</a></li>
                            <li><div class="dropdown-divider"></div></li>
                            <li><a class="dropdown-item" >View Notes</a></li>
                            <li><div class="dropdown-divider"></div></li>
                            <li><a class="dropdown-item" >Manage Plan</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Userindex.jsp/#contact">Feedback</a>
                    </li>
                </ul>
                
            </div> <!-- end of navbar-collapse -->
        </div> <!-- end of container -->
    </nav> <!-- end of navbar -->
    <!-- end of navigation -->


    <!-- Header -->
    <header class="ex-header">
        <div class="container">
            <div class="row">
                <div class="col-xl-10 offset-xl-1">
                    
                    <form  action="#" method="post">
                        <h3 class=" d-flex justify-content-center">Admin Login</h3>
                        <label for="username">Username:</label>
                        <input type="text" id="username" name="username" required>
                
                        <label for="password">Password:</label>
                        <input type="password" id="password" name="password" required>
                
                        <button class="m-5" type="submit">Login</button>
                
                        <p class="error-message"></p>
                    </form>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </header> <!-- end of ex-header -->
    <!-- end of header -->

   


    <!-- Footer -->
    <section class="footer text-light">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 py-4 py-md-5">
                    <div class="d-flex align-items-center">
                        <h4 class="">E Notes</h4>
                    </div>
                    <p class="py-3 para-light">Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus animi repudiandae explicabo esse maxime, impedit rem voluptatibus amet error quas.</p>
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
                            <a href="Userindex.jsp/#about"><p class="ms-3">About</p></a>
                            
                        </div>
                        <div class="d-flex align-items-center py-2">
                            <i class="fas fa-caret-right"></i>
                            <a href="Userindex.jsp/#services"><p class="ms-3">Services</p></a>
                        </div>
                        <div class="d-flex align-items-center py-2">
                            <i class="fas fa-caret-right"></i>
                            <a href="Userindex.jsp/#plans"><p class="ms-3">Plans</p></a>
                        </div>
                        <div class="d-flex align-items-center py-2">
                            <i class="fas fa-caret-right"></i>
                            <a href="Userindex.jsp/#contact"><p class="ms-3">Contact</p></a>
                        </div>
                    </div>
                </div> <!-- end of col -->

                <div class="col-lg-3 py-4 py-md-5">
                    <div>
                        <h4 class="py-2">Useful Links</h4>
                        <div class="d-flex align-items-center py-2">
                            <i class="fas fa-caret-right"></i>
                            <a href="UserPrivacy.jsp"><p class="ms-3">Privacy</p></a>
                            
                        </div>
                        <div class="d-flex align-items-center py-2">
                            <i class="fas fa-caret-right"></i>
                            <a href="Userterms.jsp"><p class="ms-3">Terms</p></a>
                        </div>
                        <div class="d-flex align-items-center py-2">
                            <i class="fas fa-caret-right"></i>
                            <a href="#your-link"><p class="ms-3">Disclaimer</p></a>
                        </div>
                        <div class="d-flex align-items-center py-2">
                            <i class="fas fa-caret-right"></i>
                            <a href="#your-link"><p class="ms-3">FAQ</p></a>
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
                            <input type="text" class="form-control p-2" placeholder="Enter Email" aria-label="Recipient's email" aria-describedby="button-addon2">
                            <button class="btn-secondary text-light" id="button-addon2"><i class="fas fa-envelope fa-lg"></i></button>
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
                <p>Copyright � Your name</p>
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
</body>
</html>