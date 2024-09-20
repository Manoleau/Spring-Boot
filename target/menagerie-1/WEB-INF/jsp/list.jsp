<%-- 
    Document   : listeAnimaux
    Created on : 20 sept. 2024, 10:52:22
    Author     : manolo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Liste des animaux</title>
    </head>
    <body>
        <table border="1">
            <thead>
                <tr>
                    <th>Nom</th>
                    <th>Type</th>
                    <th>Cri</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="animal" items="${animaux}">
                    <tr>
                        <td>${animal.nom}</td>
                        <td>${animal.type}</td>
                        <td>${animal.cri}</td>
                    </tr>
                </c:forEach>

            </tbody>
        </table>

    </body>
</html>
