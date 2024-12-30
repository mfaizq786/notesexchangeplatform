

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
  try{
       String id = request.getParameter("id");
    
        
        DB.DBConnection db = new DB.DBConnection();
        
        db.pstmt = db.con.prepareStatement("delete  from notes where id=? ");
        db.pstmt.setString(1,id);
        
        
        
        
        int i = db.pstmt.executeUpdate();
        if(i>0){
            
            response.sendRedirect("ServiceSubscription.jsp");
            
        }
        }
    
    catch(Exception e){
        e.printStackTrace();
    }
    %>