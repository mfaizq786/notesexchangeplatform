<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="ServiceStructure.jsp" %>
<!-- Header -->
    
    <header class="ex-header">
        <div class="container">
            <div class="row">
                <div class="col-xl-10 offset-xl-1">
                    
                    <form  action="#" method="post" style=" height: 600px; margin: 0px auto;">
                        <h3 class=" d-flex justify-content-center">Change Password</h3>
                        <label for="username">Email:</label>
                        <input type="text" id="username" name="email" required>
                
                        <label for="password">Enter Old Password:</label>
                        <input type="password" id="password" name="pass" required>
                
                        <label for="password">Enter new Password:</label>
                        <input type="password" id="password" name="npass" required>
                        
                        <label for="password">Enter Confirm Password:</label>
                        <input type="password" id="password" name="cpass" required>
                        
                        <button class="m-5" type="submit" name="opr">Submit</button>
                
                        <p class="error-message"></p>
                    </form>
                     <%
                         try{
                                      if(request.getParameter("opr")!= null){
                                          String email = request.getParameter("rno");
                                          String pass = request.getParameter("pass");
                                          String npass = request.getParameter("npass");
                                          String cpass = request.getParameter("cpass");
                                          
                                          DB.DBConnection db = new DB.DBConnection();
                                          db.pstmt = db.con.prepareStatement("select * from login where rno=? and pass=?");
                                          db.pstmt.setString(1, email);
                                          db.pstmt.setString(2, pass);
                                          db.rst = db.pstmt.executeQuery();
                                          
                                    if(db.rst.next()){
                                              if(npass.equals(cpass)){
                                            db.pstmt = db.con.prepareStatement("update login set pass=? where email=?");
                                            db.pstmt.setString(1, npass);
                                           db.pstmt.setString(2,email);
                                            int i = db.pstmt.executeUpdate();
                                         if(i>0){
                                               response.sendRedirect("AdminHome.jsp?msg=Password Updated Successfully");
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



    <%@include file="ServiceFooter.jsp" %>
</body>
</html>