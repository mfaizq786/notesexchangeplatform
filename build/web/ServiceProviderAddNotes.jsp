<%@include file="ServiceStructure.jsp" %>
    <!-- Header -->
    <header class="ex-header" style=" margin-left:70px" >
        <div class="container">
            <div class="row" >
                <div class="col-xl-10 offset-xl-1" >
                    <%
session.setAttribute("sid",request.getParameter("id"));
                    %>    
                      <form  action="ServiceProviderAddNotes" method="post" enctype="multipart/form-data" style="height:800px; width:400; margin-top: 0px;margin-left:250px;">
                        <h3 class=" d-flex justify-content-center">Add Notes</h3>
              
                        
                         <label for="about">Subject :</label>
                        <input type="text" id="username" name="subject" required>
                        
                          <label for="about">Course :</label>
                        <input type="text" id="username" name="course" required>
                        
                          <label for="about">Description :</label>
                        <input type="text" id="username" name="about" required>
                        
                        <label for="cost">Amount(in INR):</label> 
                        <input type="number" id="username" name="cost" required>
                        
                          <label for="about">Data type :</label>
                        <input type="text" id="username" name="dtype" required>
                        
<!--                        <label for="username">File Category :</label> 
                        <select id="username" style="background:#1c262f; color:white;">
                            <option>Select FileType </option>
                            <option>PDF </option>
                            <option>DOCs </option>
                            <option>Photo </option>
                            <option>PPt </option>
                            <option>Others </option>
                        </select>-->
                        
                <label for="pv"> Choose Preview File</label> 
                <input type="file" style="min-height:40px;background:#1c262f; color:white;"  name="pv" required> 
                  
                
                
                
                        <label for="file">Choose File</label> 
                <input type="file" style="min-height:40px;background:#1c262f; color:white;"  name="file" required>
                         
                        
                        <button class="m-5" type="submit" name="opr2">Add</button>
                
                        <p class="error-message"></p>
                    </form>
                    
                    
                   
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </header> <!-- end of ex-header -->
    <!-- end of header -->
    <%@include file="ServiceFooter.jsp" %>
  
   