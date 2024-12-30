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
            box-shadow: 0 0 5px white;
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
            <a class="navbar-brand logo-text" href="#">Notes Exchange Platform</a>

            <button class="navbar-toggler p-0 border-0" type="button" id="navbarSideCollapse" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

           
        </div> <!-- end of container -->
    </nav> <!-- end of navbar -->
    <!-- end of navigation -->
   

    <!-- Header -->
    
    <header class="ex-header" style="height:700px;" >
        <div class="container">
            <div class="row">
                <div class="col-xl-10 offset-xl-1">
                    
                    <form  action="#" method="post" style="margin: 0px auto;">
                        <h3 class=" d-flex justify-content-center">Admin Login</h3>
                        <label for="username">Email:</label>
                        <input type="text" id="username" name="email" required>
                
                        <label for="password">Password:</label>
                        <input type="password" id="password" name="pass" required>
                
                        <button class="m-5" type="submit" name="opr">Login</button>
                
                        <p class="error-message"></p>
                    </form>
                     <%
                        if(request.getParameter("opr")!= null){
                            String email = request.getParameter("email");
                            String pass = request.getParameter("pass");
                            
                            DB.DBConnection db = new DB.DBConnection();
                            db.pstmt = db.con.prepareStatement("select * from adminlogin where email=? and pass=? ");
                            db.pstmt.setString(1,email);
                            db.pstmt.setString(2,pass);
                            out.println("ok1");
                            db.rst = db.pstmt.executeQuery();
                            if(db.rst.next()){
                                String name =db.rst.getString(3);
                              
                                
                                session.setAttribute("name", name);
                               
                                response.sendRedirect("Adminhometext.jsp? msg= login Successfull!!");
                            }
                            else{
                                out.println("<h3>Email or Password Does Not Matched</h3>");
                            }
                        }
                        
                        %>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </header> <!-- end of ex-header -->
    <!-- end of header -->

   


   
</body>
</html>