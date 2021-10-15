
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.util.Objects" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if (Objects.equals(request.getParameter("username"), "admin") && Objects.equals(request.getParameter("password"), "password")) {
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
        response.sendRedirect("/profile.jsp");
    }
%>
<html>


<%@ include file="partials/head.jsp"%>
<body>
<%@ include file="partials/navbar.jsp"%>

<h1>Login Form</h1>
<form method="POST">
    <label for="username">Username</label>
    <br>
    <input id="username" type="text" placeholder="Enter username" name="username">
    <br>
    <br>
    <label for="password">Password</label>
    <br>
    <input type="password" name="password" id="password" placeholder="Enter password" cols="30" rows="10">
    <br>
    <br>
    <button>Submit</button>
</form>


<%@ include file="partials/footer.jsp"%>
</body>
</html>
