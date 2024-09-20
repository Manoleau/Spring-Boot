<%-- 
    Document   : ajoutAnimaux
    Created on : 20 sept. 2024, 10:52:35
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
        <c:if test="${not empty message}">
            <p>${message}</p>
        </c:if>
        <button><a href="${pageContext.request.contextPath}/list" style="text-decoration: none">Liste</a></button>
    
    </body>
</html>
