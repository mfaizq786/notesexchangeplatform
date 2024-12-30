

package Admin;

import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ServiceProviderAddNotes extends HttpServlet {

   
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          
            try{
                                     
                   String fileName = null;
                   String fileSavePath = getServletContext().getRealPath("/");
                   File f = null;
                    int i=0;
                    long s=0;
                                          
                     try{
                           String[] value = new String[7];
                           MultipartParser  mps = new MultipartParser(request, 150*1024*1024); 
                           Part part;
                           while((part= mps.readNextPart())!= null){
                                String name = part.getName();
                                if(part.isParam()){
                              ParamPart parampart = (ParamPart) part;
                              value[i] = parampart.getStringValue();
                                i++;
                               }
                                else if(part.isFile()){
                                     FilePart filePart = (FilePart) part;
                                        fileName = filePart.getFileName();
                                                 
                                    if(fileName != null){
                          long fileSize = filePart.writeTo(new java.io.File("C:\\Users\\Raza Quraishi\\OneDrive\\Desktop\\ServiceProvider\\web\\assets\\pdf")); 
                                                 }
                                             }
                                         }
                           HttpSession session=request.getSession();
                                         String id =  ""+session.getAttribute("sid");
                                         DB.DBConnection db = new DB.DBConnection();
                                         db.pstmt = db.con.prepareStatement("INSERT INTO notes(uploaderid,subject,course,decription,cost,dtype,preview,content,date,status) VALUES (?,?,?,?,?,?,?,?,curdate(),'0')");
                                        db.pstmt.setString(1,id);
                                         
                                         db.pstmt.setString(2, value[0]);
                                        db.pstmt.setString(3, value[1]);
                                        db.pstmt.setString(4, value[2]);
                                        db.pstmt.setString(5, value[3]);
                                        db.pstmt.setString(6, value[4]);
                                         db.pstmt.setString(7, ("/"+fileName));
                                       
                                         db.pstmt.setString(8,("/"+fileName));
                                         
                                         int i1 = db.pstmt.executeUpdate();
                                         if(i1 >0){
                                           out.println("<script>alert('E-contents Added SuccessFully');");
                                                
                                                   out.println( "</script>");                                                                                                                                                           
                                          response.sendRedirect("ServiceProviderAddNotes.jsp");
                                             
                                         }
                                         
                                         
                                          }catch(Exception e){
                                              e.printStackTrace();
                                          }
                                      }catch(Exception e){
                                          e.printStackTrace();
                                      }
                                                             
        }
    }

}
