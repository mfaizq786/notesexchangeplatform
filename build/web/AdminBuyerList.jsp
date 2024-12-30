<%-- 
    Document   : AdminViewNotes
    Created on : 8 May, 2024, 3:11:51 PM
    Author     : shiva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="AdminHome.jsp" %>
<h3 style="margin-top:0px; color: white;text-align: center;">Buyer List</h3>
<button style="margin-left: 1000px;background: green;height:50px;width: 100px; border-radius: 5px; "><a style="text-decoration: none; color:white; " 
     href="AdminBuyerBlockmgmt.jsp">Block List</a></button>

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
                           <th>Uploader Id</th>
                           <th>Name</th>
                           <th>Email</th>
                           <th>Contact</th>
                           <th>Status</th>
                           <th>type</th>
                           <th>Block</th>
                   <th>Delete</th>
                   </tr>
                   
                    <%
                      try{
                          DB.DBConnection db = new DB.DBConnection();
                          db.pstmt = db.con.prepareStatement("select * from login where ltype='buyer' and status='1' ");
                          db.rst = db.pstmt.executeQuery();
                          
                         int count=1;
                          while(db.rst.next()){
                            out.println("<tr><td>"+count+"</td><td>"+db.rst.getString(1)+"</td>"
                                    + "<td>"+db.rst.getString(2)+"</td><td>"+db.rst.getString(3)+"</td>"
                                    + "<td>"+db.rst.getString(4)+"</td><td>"+db.rst.getString(6)+"</td>"
                                    + "<td>"+db.rst.getString(7)+"</td><td>"
                                    + "<button style='width:80px;background:green; '><a  style=' color:white;text-decoration:none;' href=AdminBlockBuyer.jsp?id="+db.rst.getString(1)+">Block</a> </button></td>"
                                    + "<td><button style='width:80px;background:blue;'><a  style=' color:white; text-decoration:none;' href=AdmindeleteBuyer.jsp?buyerid="+db.rst.getString(1)+"&uploader="+db.rst.getString(2)+">Delete</a> </button></td></tr>");
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
                   
                      