<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>model.Ads</title>
    <style>
        div {
            border: 2px solid black;
            margin: 2px;
        }
    </style>
</head>
<body>

<h1>Items for Sale</h1>

<c:forEach var="ad" items="${ads}">
    <div>

        <h3>Title: ${ad.title}</h3>
        <p>Description: ${ad.description}</p>
    </div>
</c:forEach>

</body>
</html>
