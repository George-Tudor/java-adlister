<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Pizza Order"/>
    </jsp:include>

    <%
        System.out.println(request.getParameter("size"));
        System.out.println(request.getParameter("crust"));
        System.out.println(request.getParameter("sauce"));
        System.out.println(request.getParameter("toppings"));
        System.out.println(request.getParameter("address"));
    %>


</head>
<body>
<form action="/pizza-order.jsp" method="POST">
    <div>
        <label for="size">Select Pizza Size</label>
        <select id="size" name="size">
            <option>Extra Large</option>
            <option>Large</option>
            <option>Medium</option>
            <option>Small</option>
        </select>
    </div>
    <div>
        <label for="crust">Select Crust Type</label>
        <select id="crust" name="crust">
            <option>Thin Crust</option>
            <option>Hand Tossed</option>
            <option>Deep Dish</option>
        </select>
    </div>
    <div>
        <label for="sauce">Select Sauce Type</label>
        <select id="sauce" name="sauce">
            <option>Tomato Sauce</option>
            <option>Alfredo Sauce</option>
            <option>BBQ Sauce</option>
        </select>
    </div>
    <div>
        <h4>Select Toppings</h4>
        <label for="pepperoni">Pepperoni</label>
        <input type="checkbox" id="pepperoni" name="toppings">
        <label for="Ham">Ham</label>
        <input type="checkbox" id="Ham" name="toppings">
        <label for="sausage">Sausage</label>
        <input type="checkbox" id="sausage" name="toppings">
        <label for="mushrooms">Mushrooms</label>
        <input type="checkbox" id="mushrooms" name="toppings">
        <label for="green-peppers">Green peppers</label>
        <input type="checkbox" id="green-peppers" name="toppings">
        <label for="onions">Onions</label>
        <input type="checkbox" id="onions" name="toppings">
        <label for="olives">Olives</label>
        <input type="checkbox" id="olives" name="toppings">
        <label for="pineapple">Pineapple</label>
        <input type="checkbox" id="pineapple" name="toppings">
    </div>
    <div>
        <label for="address">Delivery Address</label><br>
        <textarea id="address" name="address" rows="5"></textarea>
    </div>
    <input type="submit" value="Submit">
</form>

</body>
</html>
