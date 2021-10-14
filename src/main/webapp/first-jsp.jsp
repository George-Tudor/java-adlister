<%--
  Created by IntelliJ IDEA.
  User: neogeo
  Date: 10/14/21
  Time: 10:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String name = "George Tudor";
    String firstname = name.substring(0,7);
%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>My First JSP</h1>
<h1>My first name is: <%= firstname %></h1>
<script>
    alert("Hello!");
</script>
</body>
</html>
