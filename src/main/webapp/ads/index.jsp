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

<c:forEach var="ads" items="${ads}">
    <div>
        <p>Seller Id: ${ads.id}</p>
        <p>Seller: ${ads.userId}</p>
        <p>Title: ${ads.title}</p>
        <p>Description: ${ads.description}</p>
    </div>
</c:forEach>

</body>
</html>
