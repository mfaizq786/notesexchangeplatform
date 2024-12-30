
<html>
    <head>
        <style>
            .block{
                height: 300px;
                width:300px;
                background: whitesmoke;
                border: 3px solid black;
                margin-right: 30px;
                margin-bottom:  30px;
                float: left;
            }
            .plan{
                float: left;
                margin-left: 30px;
                    width:320px;
            }
        </style> 
    </head>
    <body>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="AdminStructureNav.jsp" %>
   <!-- Header -->
    <header class="ex-header" >
        <div class="container">
            <div class="row" >
                <div class="col-xl-10 offset-xl-1"  style="min-height:600px">
                    <div class="plan">
                          <form  action="#" method="post" style="height:600px; width:320;">
                        <h3 class=" d-flex justify-content-center">Basic Plan</h3>
                        
                         <label for="email">Email</label>
                            <label for="username">Username:</label> 
                        <label for="contact">Contact</label>
                        <label for="password">Password:</label>
                          <label for="password">Confirm Password:</label>     
                        
                        
                        <button class="m-5" type="submit" name="opr2">Buy</button>
                
                        <p class="error-message"></p>
                    </form>
                    </div>
                    
                     <div class="plan">
                          <form  action="#" method="post" style="height:600px; width:320;">
                        <h3 class=" d-flex justify-content-center">Medium Plan</h3>
                        
                         <label for="email">Email</label>
                            <label for="username">Username:</label> 
                        <label for="contact">Contact</label>
                        <label for="password">Password:</label>
                          <label for="password">Confirm Password:</label>     
                        
                        
                        <button class="m-5" type="submit" name="opr2">Buy</button>
                
                        <p class="error-message"></p>
                    </form>
                    </div>
                    
                    
                     <div class="plan">
                          <form  action="#" method="post" style="height:600px; width:320;">
                        <h3 class=" d-flex justify-content-center">Premium Plan</h3>
                        
                         <label for="email">Email</label>
                            <label for="username">Username:</label> 
                        <label for="contact">Contact</label>
                        <label for="password">Password:</label>
                          <label for="password">Confirm Password:</label>              
                        
                                          
                        <button class="m-5" type="submit" name="opr2">Buy</button>
                
                        <p class="error-message"></p>
                    </form>
                    </div>
                    
                   
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </header> <!-- end of ex-header -->
    <!-- end of header -->
<%@include file="AdminFooter.jsp" %>
</body>
</html>