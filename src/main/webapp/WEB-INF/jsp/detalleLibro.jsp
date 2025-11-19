<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://jakarta.ee/jsp/jstl/core" %>
<html>
<head>
    <title>Detalle del Libro</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css">
</head>
<body>

<c:choose>
    <c:when test="${not empty error}">
        <p><strong>${error}</strong></p>
    </c:when>
    <c:otherwise>
        <h2>${nombre}</h2>
        <p>Autor: ${autor}</p>
    </c:otherwise>
</c:choose>

<a href="/libros">Volver a la lista</a>
</body>
</html>
