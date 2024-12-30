<%@include file="ServiceStructure.jsp" %>
<br><br>
 <br><br
 <!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        width: 350px;
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
        border-radius: 50%;
        width: 100px;
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
        height: 200px;
          width: 200px;
       
        background: white;
        color: black;
       overflow-y: scroll;
        border: 1px solid #ccc;
        border-radius: 5px;
        padding: 10px;
        margin-top: 10px;
    }
     .comment-box.cmtimg {
           border-radius: 50%;
        width: 50px;
        
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
            height: 20px;
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
</style>
</head>
<body>
   

    <%
        
        DB.DBConnection  db1 = new DB.DBConnection();
        db1.pstmt  = db1.con.prepareStatement("SELECT DISTINCT * FROM notes   GROUP BY course; ");
        db1.rst = db1.pstmt.executeQuery();
        while(db1.rst.next()){
            String course = db1.rst.getString(3);
            course = course.toUpperCase();
        %>
    
<div class="ccontainer">
    <div class="block">
        <div class="details">
            <img src="assets/images/t.jpg" alt="Profile Picture">
            <div>
                <!--<h2>Course:</h2>-->
                <h2> <%=course %></h2></b><br>
            
             <%
      String idd =""+session.getAttribute("sid");
               System.out.println(idd); 
         
          out.println("<button><a href=ServiceProviderData.jsp?course="+course+"&id="+idd+" style='color: white;text-decoration: none;'>View Notes</a></button>");
        
            %> 
           
            </div>
        </div>
       
       
    </div>
</div>
 <%
       
        }
        %>
<script>
    const viewBtns = document.querySelectorAll('.viewBtn');
    viewBtns.forEach(btn => {
        btn.addEventListener('click', function() {
            const commentBox = this.nextElementSibling;
            commentBox.style.display = (commentBox.style.display === 'none' || commentBox.style.display === '') ? 'block' : 'none';
        });
    });
</script>

</body>
</html>
