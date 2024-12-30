<%-- 
    Document   : AdminViewNotes
    Created on : 8 May, 2024, 3:11:51 PM
    Author     : shiva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="AdminHome.jsp" %>
<head>
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
</head>

<h3 style="margin-top:0px; color: white;text-align: center;">Change Password</h3>
<br><br>
 
 <hr style="border: 2px solid white; margin-top: 10px;">
<!-- Header -->
    
    <header class="ex-header">
        <div class="container">
            <div class="row">
                <div class="col-xl-10 offset-xl-1">
                    
                    <form  action="#" method="post" style=" height:530px; margin: 0px auto;">
                        <h3 class=" d-flex justify-content-center">Change Password</h3>
                        <label for="username">Email:</label><br>
                        <input type="text" id="username" name="email" required>
                
                        <label for="password">Enter Old Password:</label><br>
                        <input type="password" id="password" name="pass" required>
                
                        <label for="password">Enter new Password:</label><br>
                        <input type="password" id="password" name="npass" required>
                        
                        <label for="password">Enter Confirm Password:</label><br>
                        <input type="password" id="password" name="cpass" required>
                        
                        <button class="m-5" type="submit" name="opr">Submit</button>
                
                        <p class="error-message"></p>
                    </form>
                     <%
                         try{
                              
                                      if(request.getParameter("opr")!= null){
                                          String email = request.getParameter("email");
                                          String pass = request.getParameter("pass");
                                          String npass = request.getParameter("npass");
                                          String cpass = request.getParameter("cpass");
                                          
                                          DB.DBConnection db = new DB.DBConnection();
                                          db.pstmt = db.con.prepareStatement("select * from adminlogin where email=? and pass=?");
                                          db.pstmt.setString(1, email);
                                          db.pstmt.setString(2, pass);
                                          db.rst = db.pstmt.executeQuery();
                                          
                                    if(db.rst.next()){
                                              if(npass.equals(cpass)){
                                            db.pstmt = db.con.prepareStatement("update adminlogin set pass=? where email=?");
                                            db.pstmt.setString(1, npass);
                                           db.pstmt.setString(2,email);
                                            int i = db.pstmt.executeUpdate();
                                         if(i>0){
                                              out.println("<script>alert('Password Updated Successfully');</script>");
                                         }
                                       }
                                       else{
                                                  out.println("<h1>New And Confirm Password Does not Matched </h1>");
                
                                              }
                                        }
                                     else{
                                           out.println("<h1>Old Password Does not Matched </h1>"); 
                                  }
                                     }
                                      }catch(Exception e){
                                          e.printStackTrace();
                                      }
                                          
                                     
                                      
                        %>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </header> <!-- end of ex-header -->
    <!-- end of header -->
    <!-- end of header -->
              </div>
                   
                      