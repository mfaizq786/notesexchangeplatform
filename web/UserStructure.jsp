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
    <title>Courses</title>
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
<body style="background:#1c262f;">

    <!-- Navigation -->
    <nav id="navbar" class="navbar navbar-expand-lg fixed-top navbar-dark" aria-label="Main navigation">
        <div class="container">

            <!-- Image Logo -->
            <!-- <a class="navbar-brand logo-image" href="index.html"><img src="images/logo.svg" alt="alternative"></a> -->

            <!-- Text Logo - Use this if you don't have a graphic logo -->
            <a class="navbar-brand logo-text" href="index.jsp">Notes Exchange Platform</a>

            <button class="navbar-toggler p-0 border-0" type="button" id="navbarSideCollapse" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault" >
                <ul class="navbar-nav ms-auto navbar-nav-scroll">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="Userindex.jsp#header">Home</a>
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
                        <a class="nav-link" href="UserCourses.jsp">Course</a>
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