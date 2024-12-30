<%-- 
    Document   : ServiceFeedback
    Created on : 9 May, 2024, 11:18:54 PM
    Author     : shiva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="UserStructure.jsp" %>
<!-- Header -->
    
    <header class="ex-header">
        <div class="container">
            <div class="row">
                <div class="col-xl-10 offset-xl-1">
                    
                   
    <!-- Contact -->
    <section class="contact d-flex align-items-center py-5" id="contact">
        <div class="container-fluid text-light">
            <div class="row">
                <div class="col-lg-6 d-flex justify-content-center justify-content-lg-end align-items-center px-lg-5" data-aos="fade-right">
                    
                    
                    <div style="">
                        <form action="#" style="margin:0px auto;width:600px; height: 600px;">
                        <div class="text-center text-lg-start py-4 pt-lg-0">
                            <h1>Feedback</h1>
                            
                           
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
                                        <input type="number" class="form-control form-control-input" id="exampleFormControlInput2" placeholder="Enter phone number">
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
                            <input type="submit" class="btn form-control-submit-button" style="width: 100px; " name="opr" value="Submit">
                        </div>
                        </form>
                    </div> <!-- end of div -->
                </div> <!-- end of col -->
                <div class="col-lg-6 d-flex align-items-center" data-aos="fade-down">
                    <img class="img-fluid d-none d-lg-block" src="./assets/images/contact.jpg" alt="contact">        
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </section> <!-- end of contact -->
                     <%
                         try{
                                      if(request.getParameter("opr")!= null){
                                          String name = request.getParameter("name");
                                          String phone = request.getParameter("contact");
                                          String email = request.getParameter("email");
                                          String message = request.getParameter("message");
                                          
                                          DB.DBConnection db = new DB.DBConnection();
                                          db.pstmt = db.con.prepareStatement("insert into feedback values('2','User',?,?,?,?,curdate())");
                                          db.pstmt.setString(1, name);
                                          db.pstmt.setString(2, phone);
                                          db.pstmt.setString(3, phone);
                                          db.pstmt.setString(4, phone);
                                          int i = db.pstmt.executeUpdate();
                                         
                                          
                                        if(i>0){
                                           
                                           out.println("<script> alert('Data Added Successfully !!!');</script>");
                                      
                                        }
                                     else{
                                          
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