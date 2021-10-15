<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="entity.Person" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

//would normally go in a servlet (the list below)
<%
List<Person> people = new ArrayList<>(Arrays.asList(
new Person(1, "George", "Tudor", 39),
new Person(2, "Steve", "Rogers", 35),
new Person(3, "Peggy", "Carter", 30)
));

    request.setAttribute("people", people);

%>

<html>
<head>
    <title>Person List</title>
</head>
<body>
<table>
    <tr>
        <th>ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Age</th>
    </tr>

    <c:forEach var="person" items="${people}">
        <tr>
            <td>${person.id}</td>
            <td>${person.firstName}</td>
            <td>${person.lastName}</td>
            <td>${person.age}</td>
        </tr>
    </c:forEach>
</table>

<%@ include file="partials/display-extra-person.jsp"%>

</body>
</html>
