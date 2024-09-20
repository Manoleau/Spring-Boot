<%-- 
    Document   : Hello
    Created on : 20 sept. 2024, 10:45:47
    Author     : manolo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="${pageContext.request.contextPath}/ajout" method="post">
            <input type="text" id="nom" name="nom" required/>

            <select id="type" name="type" required>
                <c:forEach var="type" items="${typeAnimaux}">
                    <option value="${type}">${type}</option>
                </c:forEach>
            </select>
            <input type="submit" value="Ajouter"/>
        </form><br/>
        <button><a href="${pageContext.request.contextPath}/list" style="text-decoration: none">Liste</a></button>
    </body>
</html>
