<%-- 
    Document   : register
    Created on : Mar 2, 2021, 12:40:02 PM
    Author     : 735815
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>

    <body>
        <h1>Shopping list</h1>
        <form action="<c:url value='/shoppingList'/>" method="post">
            <label> Username: </label>
            <input type="text" name="username"/>
            <input type="submit" value="Register name"/>
            <br>
            ${message}


        </form>
    </body>
</html>
