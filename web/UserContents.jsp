<%-- 
    Document   : UserCourses
    Created on : 8 May, 2024, 11:14:48 PM
    Author     : shiva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="UserStructure.jsp" %>
<br><br><br><br>
<!DOCTYPE html>
<html>
<head>
    <style>
 .container{
    position:relative;
    margin: 0px auto;
    padding-left: 85px;
    background:#fff;
    margin-top:50px;
}
    .container .box{
        position: relative;
         height: 300px;
         width: 300px;
        background:white;
        float: left;
        margin: 15px;
        box-sizing: border-box;
       border: 2px solid blueviolet;
       
       
}
        .container .box .item{
            position: absolute;
            top:0;
            left: 0;
            width: 100%;
            height: 100%;
            transition: 0.7s;
            z-index: 1;
            
        }
        
            .container .box:hover .item{
                bottom: 100px;
                width: 100%;
                height:150px;
                
            }
            .container .box .content{
        position: absolute;
        top: 150px;
        width:calc(100% - 100%);
        text-align: center;
        padding: 20px;
        box-sizing: border-box;
        transition: 0.5s;
        opacity: 0;
    }
    .container .box .item img{
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
                font-size: 60px;
                transition: 0.5s;
                color: #fff;
                height:100%;
                width:100%;
                z-index: -1 ;
            }
            .container .box:hover .item img{
                height: 100%;
                width:100%;
               bottom: 50%;
                
            }
    .container .box:hover .content{
        top: 150px;
        opacity: 1;
    }
    
    .container .box .content p{
       font-family:Gabriola;
        color:black;
        text-align: center;
        font-size:15px;
        }

	
    </style>
</head>
<body>
    
    <%
       try{
           
       DB.DBConnection db = new DB.DBConnection();
       db.pstmt = db.con.prepareStatement("select * from notes order by date desc ");
           db.rst = db.pstmt.executeQuery();
          while(db.rst.next()){
                        
        %>
    <div class="container">
        <div class="box">
            <div class="item">
                <img  class="image" src="assets/images/t.jpg">
            </div>
            <div class="content">
                <button style="width:100px;float: left; margin-top: 50px; margin-left:20px;">Preview</button><button style="margin-top:50px;margin-left:20px; width:100px;" ><a href="UserPurchaseNotes.jsp">Buy</a></button>
            </div>
        </div>
    </div>
    
        <%
          }    
        }catch(Exception e){
            e.printStackTrace();
        }
            %>
</body>
</html>