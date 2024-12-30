

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
  try{
       
        String notesid = request.getParameter("buyerid");
          String uploader = request.getParameter("uploader");
        
        
        DB.DBConnection db = new DB.DBConnection();
        
        db.pstmt = db.con.prepareStatement("delete  from login where id=? and name=? ");
        
        db.pstmt.setString(1,notesid);
        db.pstmt.setString(2,uploader);
        
        
        
        int i = db.pstmt.executeUpdate();
        if(i>0){
            
            response.sendRedirect("AdminBuyerList.jsp");
            
        }
        }
    
    catch(Exception e){
        e.printStackTrace();
    }
    %>