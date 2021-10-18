<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<html>--%>
<%--<head>--%>

<%--&lt;%&ndash;<%   <jsp:include page="partials/head.jsp">&ndash;%&gt;--%>
<%--&lt;%&ndash;     <jsp:param name="title" value="Pizza Order"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;    </jsp:include>&ndash;%&gt;&ndash;%&gt;--%>

<%--<%--%>
<%--    System.out.println(request.getParameter("size"));--%>
<%--    System.out.println(request.getParameter("crust"));--%>
<%--    System.out.println(request.getParameter("sauce"));--%>
<%--    System.out.println(request.getParameter("toppings"));--%>
<%--    System.out.println(request.getParameter("address"));--%>
<%--%>--%>


<%--</head>--%>
<%--<body>--%>
<%--<form id="pizza-form" method="POST">--%>
<%--    <div>--%>
<%--        <label for="size">Select Pizza Size</label>--%>
<%--        <select id="size" name="size" form="pizza-form">--%>
<%--            <option>Extra Large</option>--%>
<%--            <option>Large</option>--%>
<%--            <option>Medium</option>--%>
<%--            <option>Small</option>--%>
<%--        </select>--%>
<%--    </div>--%>
<%--    <div>--%>
<%--        <label for="crust">Select Crust Type</label>--%>
<%--        <select id="crust" name="crust" form="pizza-form">--%>
<%--            <option>Thin Crust</option>--%>
<%--            <option>Hand Tossed</option>--%>
<%--            <option>Deep Dish</option>--%>
<%--        </select>--%>
<%--    </div>--%>
<%--    <div>--%>
<%--        <label for="sauce">Select Sauce Type</label>--%>
<%--        <select id="sauce" name="sauce" form="pizza-form">--%>
<%--            <option>Tomato Sauce</option>--%>
<%--            <option>Alfredo Sauce</option>--%>
<%--            <option>BBQ Sauce</option>--%>
<%--        </select>--%>
<%--    </div>--%>
<%--    <div>--%>
<%--        <h4>Select Toppings</h4>--%>
<%--        <label for="pepperoni">Pepperoni</label>--%>
<%--        <input type="checkbox" id="pepperoni" name="toppings">--%>
<%--        <label for="Ham">Ham</label>--%>
<%--        <input type="checkbox" id="Ham" name="toppings">--%>
<%--        <label for="sausage">Sausage</label>--%>
<%--        <input type="checkbox" id="sausage" name="toppings">--%>
<%--        <label for="mushrooms">Mushrooms</label>--%>
<%--        <input type="checkbox" id="mushrooms" name="toppings">--%>
<%--        <label for="green-peppers">Green peppers</label>--%>
<%--        <input type="checkbox" id="green-peppers" name="toppings">--%>
<%--        <label for="onions">Onions</label>--%>
<%--        <input type="checkbox" id="onions" name="toppings">--%>
<%--        <label for="olives">Olives</label>--%>
<%--        <input type="checkbox" id="olives" name="toppings">--%>
<%--        <label for="pineapple">Pineapple</label>--%>
<%--        <input type="checkbox" id="pineapple" name="toppings">--%>
<%--    </div>--%>
<%--    <div>--%>
<%--        <label for="address">Delivery Address</label><br>--%>
<%--        <textarea id="address" name="address" rows="5" form="pizza-form"></textarea>--%>
<%--    </div>--%>
<%--    <input type="submit" value="Submit"/>--%>
<%--</form>--%>

<%--</body>--%>
<%--</html>--%>

<%--
  Created by IntelliJ IDEA.
  User: bash
  Date: 10/15/21
  Time: 4:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza Order</title>
</head>
<body>
<form id="pizza-form" method="POST">

    <label for="crust-type">Crust type</label>
    <select name="crust-type" id="crust-type" form="pizza-form">
        <option value="hand-tossed">Hand-tossed</option>
        <option value="stuffed">Stuffed</option>
        <option value="garlic">Garlic</option>
        <option value="thin">Thin</option>
    </select>

    <br>

    <label for="sauce-type">Sauce</label>
    <select name="sauce-type" id="sauce-type" form="pizza-form">
        <option value="marinara">Marinara</option>
        <option value="white">White</option>
        <option value="no-sauce">No sauce</option>
    </select>

    <br>

    <label for="size">Size</label>
    <select name="size" id="size" form="pizza-form">
        <option value="small">Small</option>
        <option value="medium">Medium</option>
        <option value="large">Large</option>
        <option value="extra-large">Extra large</option>
    </select>

    <br>
    <br>

    <label for="toppings">Toppings</label>
    <div id="toppings">
        <input type="checkbox" id="topping1" name="topping1" value="pepperoni">
        <label for="topping1"> Pepperoni</label><br>
        <input type="checkbox" id="topping2" name="topping2" value="mushrooms">
        <label for="topping2"> Mushrooms</label><br>
        <input type="checkbox" id="topping3" name="topping3" value="black-olives">
        <label for="topping3"> Black olives</label><br><br>
    </div>


    <label for="address">Address</label><br>
    <input type="text" id="address" name="address"><br>

    <input type="submit" value="Submit"/>

</form>

</body>
</html>
