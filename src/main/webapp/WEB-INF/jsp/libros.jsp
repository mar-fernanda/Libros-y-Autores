<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://jakarta.ee/jsp/jstl/core" %>
<html>
<head>
    <title>Lista de Libros</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css">
</head>
<body>
<h2>Libros disponibles</h2>
<ul>
    <c:forEach var="libro" items="${libros}">
        <li><a href="/libros/${libro}">${libro}</a></li>
    </c:forEach>
</ul>
<a href="/libros/formulario">Agregar nuevo libro</a>
</body>
</html>