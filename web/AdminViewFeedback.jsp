<%-- 
    Document   : AdminViewNotes
    Created on : 8 May, 2024, 3:11:51 PM
    Author     : shiva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="AdminHome.jsp" %>
<h3 style="margin-top:0px; color: white;text-align: center;">View Feedback</h3>
<br><br>
 
 <hr style="border: 2px solid white; margin-top: 10px;">
<header class="ex-header" style="min-height: 650px; margin-top: 0px;" >
      
    
        <div class="container">
            <div class="row" >
                <div class="col-xl-10 offset-xl-1" >
  <div class="row" style="margin-top:0px;">
                    <div class="col-md-12">
                   <table class="table table-responsive"  style="background:white; border-radius: 2px; margin-top: 0px;margin-left: 50px;">
                       <tr>
                           <th>Sr.no</th> 
                           <th>User Id</th>
                           <th>User Type</th>
                       <th>Name</th>
                   <th>Contact</th>
                   <th>Email</th>
                   <th>Message</th>
                    
                   
                   
                   <th>Delete</th>
                   </tr>
                   
                    <%
                      try{
                          DB.DBConnection db = new DB.DBConnection();
                          db.pstmt = db.con.prepareStatement("select * from feedback  order by date desc ");
                          db.rst = db.pstmt.executeQuery();
                          
                         int count=1;
                          while(db.rst.next()){
                            out.println("<tr><td>"+count+"</td><td>"+db.rst.getString(1)+"</td>"
                                    + "<td>"+db.rst.getString(2)+"</td><td>"+db.rst.getString(3)+"</td>"
                                    + "<td>"+db.rst.getString(4)+"</td>"
                                    + "<td>"+db.rst.getString(5)+"</td>"
                                     + "<td>"+db.rst.getString(6)+"</td>"
                                    + "<td><button style='width:80px;background:red;'><a style='color:white; text-decoration:none;' href=Admindeletefeedback.jsp?id="+db.rst.getString(1)+">"
                                    + "Delete</a> </button></td></tr>");
                            count++;
                          }
                          
                      }catch(Exception e){
                          e.printStackTrace();
                      }
                       %>
                   </table>
                    </div> 
                   </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </header> <!-- end of ex-header -->
    <!-- end of header -->
              </div>
                   
                      