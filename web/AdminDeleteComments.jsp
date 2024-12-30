

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
  try{
      String userid = request.getParameter("userid");
       String notesid = request.getParameter("notesid");
        
          String date = request.getParameter("date");
        
        
        DB.DBConnection db = new DB.DBConnection();
        
        db.pstmt = db.con.prepareStatement("delete  from comment where notesid=? and userid=? and date=? ");
        db.pstmt.setString(1,notesid);
        db.pstmt.setString(2,userid);
        db.pstmt.setString(3,date);
        
        
        
        int i = db.pstmt.executeUpdate();
        if(i>0){
            
            response.sendRedirect("AdminViewComment.jsp");
            
        }
        }
    
    catch(Exception e){
        e.printStackTrace();
    }
    %>