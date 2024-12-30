

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
  try{
       String notesid = request.getParameter("notesid");
        String uploaderid = request.getParameter("uploaderid");
          String date = request.getParameter("date");
        
        
        DB.DBConnection db = new DB.DBConnection();
        
        db.pstmt = db.con.prepareStatement("delete  from notes where notesid=? and uploaderid=? and date=? ");
        db.pstmt.setString(1,notesid);
        db.pstmt.setString(2,uploaderid);
        db.pstmt.setString(3,date);
        
        
        
        int i = db.pstmt.executeUpdate();
        if(i>0){
            
            response.sendRedirect("AdminReqmgmt.jsp");
            
        }
        }
    
    catch(Exception e){
        e.printStackTrace();
    }
    %>