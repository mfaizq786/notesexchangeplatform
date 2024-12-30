

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
  try{
      String userid = request.getParameter("id");

        
        
        DB.DBConnection db = new DB.DBConnection();
        
        db.pstmt = db.con.prepareStatement("delete  from feedback where id=? ");
       
        db.pstmt.setString(1,userid);
        
        
        
        int i = db.pstmt.executeUpdate();
        if(i>0){
            
            response.sendRedirect("AdminViewFeedback.jsp");
            
        }
        }
    
    catch(Exception e){
        e.printStackTrace();
    }
    %>