

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
  try{
       String nid = request.getParameter("nid");
        String desc = request.getParameter("desc");
          String date = request.getParameter("date");
        
        
        DB.DBConnection db = new DB.DBConnection();
        
        db.pstmt = db.con.prepareStatement("delete  from notes where notesid=? and decription=? and date=? ");
        db.pstmt.setString(1,nid);
        db.pstmt.setString(2,desc);
        db.pstmt.setString(3,date);
        
        
        
        int i = db.pstmt.executeUpdate();
        if(i>0){
            
            response.sendRedirect("AdminViewNotes.jsp");
            
        }
        }
    
    catch(Exception e){
        e.printStackTrace();
    }
    %>