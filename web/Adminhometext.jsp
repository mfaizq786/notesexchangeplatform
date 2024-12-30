
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="AdminHome.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
             String name =session.getAttribute("name").toString();
            %>
            <h1 style="color: white; margin-top: 20px;">&nbsp;&nbsp;&nbsp;Welcome <%=name %>!!! </h1>
            
    </body>
</html>
