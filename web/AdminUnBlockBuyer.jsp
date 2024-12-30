

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
  try{
       String id = request.getParameter("id");
       out.println("ok1");
      
        DB.DBConnection db = new DB.DBConnection();
        out.println("ok1");
        db.pstmt = db.con.prepareStatement("update login set status='1' where id=? ");
        db.pstmt.setString(1,id);     
        
        out.println("ok1");
        int i = db.pstmt.executeUpdate();
        if(i>0){
            
            response.sendRedirect("AdminBuyerList.jsp");
            
        }
        }
    
    catch(Exception e){
        e.printStackTrace();
    }
    %>