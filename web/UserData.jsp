<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="UserStructure.jsp" %>
<br><br><br>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Comment Viewer</title>
<style>
     body {
        font-family: Arial, sans-serif;
        width:100%;
        margin: 0;
        padding: 0;
        background: white;
    }
    .ccontainer {
        width: 380px ;
        
        margin-left: 100px;
        margin-top: 20px;
        padding: 20px;
        background: black;
        float: left;
        color: white;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    .ccontainer:hover{
        box-shadow: 0px 0px 5px 15px black;
        
    }
    .block {
        border-bottom: 1px solid #ccc;
        padding-bottom: 20px;
        margin-bottom: 20px;
    }
    .block img {
        border-radius: 5%;
        width: 300px;
        height: 100px;
        object-fit: cover;
        margin-right: 20px;
    }
    .block .details {
        display: flex;
        align-items: center;
        margin-bottom: 10px;
         
    }
    .details p {
        margin: 0;
    }
    .details .username {
        font-weight: bold;
        margin-right: 10px;
    }
    .details .time {
        color: #666;
    }
    .comment-box {
        display: none;
          width: 300px;
       
        background: white;
        color: black;
       overflow: scroll;
        border: 1px solid #ccc;
        border-radius: 5px;
        padding: 10px;
        margin-top: 10px;
    }
     .comment-box.cmtimg {
           border-radius: 50%;
        width: 50px;
        height:10px;
        
        height: 50px;
        object-fit: cover;
        margin-right: 20px;
    }
    button {
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    button:hover {
        background-color: #0056b3;
    }

    /* Responsive Styles */
    @media only screen and (max-width: 600px) {
        .block img {
            width: 80px;
            height: 80px;
            margin-right: 10px;
        }
        .cmtimg{
               width: 20px;
            height: 10px;
            margin-right: 10px;
        }
        .details {
            flex-direction: column;
        }
        .details div {
            margin-top: 10px;
        }
        .comment-box {
            max-height: 150px;
        }
    }
    
    
     .card{
            height:500px;
            width:400px;
            border:1px solid black;
            display: flex;
            align-items: center;
            justify-content:center;
            flex-direction: column;
            padding: 10px;
            gap:10px;
            border-radius:15px;
            box-shadow: 0px 0px 10px white;
            background: lightgreen;
            margin: 30px 30px;
        }
        .card .up-name,.card .sb-name{
            height: 5%;
            width: 90%;
            /*border: 1px solid blue;*/
            font-weight: bold;
            font-size: 1.2rem;
            padding:5px 5px;
            /* text-align:; */
        }
        .card .sb-img{
            width: 100%;
            height: 40%;
            display: flex;
            justify-content: center;
            align-items: center;
            margin:5px 0px;

        }
        .card .price-view-buy, .card .ent-cmnt{
            height: 8%;
            width: 90%;
            display: flex;
            align-items: center;
            justify-content: center;
            gap:30px;
            padding: 10px;
            margin: 10px 0px;
        }
        .card .show-cmnt{
            height: 40%;
            width: 90%;
            overflow-y: scroll;
            border:1px solid black;
        }
        .cards-container{
            gap:10px;
            padding:50px;
            display: flex;
            flex-wrap:wrap;
        }

</style>
</head>
<body>
       <br>
   <div class="cards-container">
   <%
        String id =""+session.getAttribute("id");
          String name =""+session.getAttribute("name");
        %>
        
        
       <%
        
     String course = request.getParameter("course");
        DB.DBConnection  db1 = new DB.DBConnection();
        db1.pstmt  = db1.con.prepareStatement("select * from notes where  course=? and status='1'");
        db1.pstmt.setString(1, course);
        db1.rst = db1.pstmt.executeQuery();
        int count =1;
        while(db1.rst.next()){
            String nid = db1.rst.getString(1);
            String uploader = db1.rst.getString(2);
            PreparedStatement pstmt=db1.con.prepareStatement("select name from login where id=?");
            pstmt.setString(1, uploader);
            ResultSet rst=pstmt.executeQuery();
             if(rst.next())
             {
            uploader=rst.getString(1);
            System.out.println(uploader);
             }
              String content = db1.rst.getString(7);
        %>
        
          
      
  <div class="card">
        <div class="up-name">Uploaded By: <%=uploader %> </div>
        <div class="sb-name">Subject: <%=db1.rst.getString(11) %> </div>
        <div class="sb-img"><img src="assets/images/t.jpg" alt="img" height="100%" width="90%"></div>
        <div class="price-view-buy">
            <div style="font-weight:bold">Price: Rs <%=db1.rst.getString(4)  %></div>
            <div><button  style='background:blue;' ><a style=' color:white; text-decoration:none' href='assets/pdf<%=content %>'>View</a></button></div>
            <div><button>
                    <%
                 out.println("<a href=UserPurchaseNotes.jsp?nid="+nid+">Buy</a>");
                         %>
             </button></div>
        </div>
        <div class="ent-cmnt">
            <div style="width:80%;"><input type="text" name="cmt" placeholder="Enter Your Comment" style="width:100%;"></div>
            <div style="width:10%;"><button type="submit" name="oprr" style="width:100%; display: flex; align-items:center; justify-content:center;"><i class="fa fa-send-o"></i></button></div>
            <div style="width:10%;"><button class="viewBtn" style="width:100%; display: flex; align-items:center; justify-content:center;"><i class="fa fa-comments-o"></i></button></div>
        </div>
        <div class="show-cmnt">
  <%
 
          DB.DBConnection db3 = new DB.DBConnection();
            db3.pstmt = db3.con.prepareStatement("select * from comment where notesid=? ");
            db3.pstmt.setString(1,nid);
            db3.rst = db3.pstmt.executeQuery();
            
            while(db3.rst.next()){
                System.out.println("ok"+count);
        %>
             <p>Comment <%=count %> </p>
           
            <img  class="cmtimg" alt="Profile Picture">
            <div><br><br>
                <p class="username"> Name : <%=name%></p>
                <p class="time">Date : <%=db3.rst.getString(5) %></p> 
               <p>
                    <%=db3.rst.getString(4) %>
                </p>
            </div>
               
             
              
       <%
        
            }
                %>
        
            
        </div>
        
        <%
        if(request.getParameter("oprr")!= null){
            String cmt=request.getParameter("cmt");
            DB.DBConnection db = new DB.DBConnection();
            db.pstmt = db.con.prepareStatement("insert into comment values(?,?,?,?,curdate())  where noteid=?");
            db.pstmt.setString(1,id);
            db.pstmt.setString(2, name);
            db.pstmt.setString(3, nid);
            db.pstmt.setString(4, cmt);
            
            int i =db.pstmt.executeUpdate();
            if(i>0){
                out.println("<script>alert('Comment Added SuccessFully')</script>");
            }
        }
        %>
        
  
            
            
    </div>
        
   
        
<script>
    const viewBtns = document.querySelectorAll('.viewBtn');
    viewBtns.forEach(btn => {
        btn.addEventListener('click', function() {
            const commentBox = this.nextElementSibling;
            commentBox.style.display = (commentBox.style.display === 'none' || commentBox.style.display === '') ? 'block' : 'none';
        });
    });
</script>
 

<% 
count++;
        }
            %>
             </div>
</body>
</html>