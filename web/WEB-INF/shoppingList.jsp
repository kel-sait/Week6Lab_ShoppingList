<%-- 
    Document   : shoppingList
    Created on : Mar 2, 2021, 12:40:43 PM
    Author     : 735815
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List Page</title>
    </head>

    <body>
        <h1>Shopping List Page</h1>       

        <p> Hello <c:url value="${username}"/>
            <a href="<c:url value='/shoppingList?action=logout'/>">logout</a>
        </p>

        <h3>Shopping List</h3>
        <form action="<c:url value='/shoppingList'/>" method="post">
            <input type="hidden" name="action" value="add"/>
            <label> Add item: </label>
            <input type="text" name="addItem"/>
            <input type="submit" value="Add"/>                    
        </form>

        <br>
        <br>

        <c:if test="${itemList.size() > 0}">

            <form action="<c:url value='/shoppingList'/>" method="post">

                <c:forEach var='item' items="${itemList}">
                    ${item}
                    <input type="radio" name="delItem" value="${item}"/>
                    <br>
                    <br>                                         
                </c:forEach>

                <input type="submit" value="Delete"/>
                <input type="hidden" value="delete" name="action"/>

            </form>              
        </c:if>        
    </body>
</html>
