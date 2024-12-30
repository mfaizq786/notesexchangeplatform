

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
  try{
       String id = request.getParameter("id");
       
        
        
        DB.DBConnection db = new DB.DBConnection();
        
        db.pstmt = db.con.prepareStatement("update  notes set status='1' where notesid=? ");
        db.pstmt.setString(1,id);
        
        
        
        int i = db.pstmt.executeUpdate();
        if(i>0){
            
            response.sendRedirect("AdminReqmgmt.jsp");
            
        }
        }
    
    catch(Exception e){
        e.printStackTrace();
    }
    %>