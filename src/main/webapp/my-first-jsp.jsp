<%--
  Created by IntelliJ IDEA.
  User: neogeo
  Date: 10/14/21
  Time: 11:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String myName = "George";
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>My first name is: <span class="my-name"><%= myName %></span></h1>
<%@ include file="my-first-fragment.html"%>
</body>
</html>
