<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head><title>Detalle del Libro</title>
<link rel="stylesheet" href="/css/estilos.css">
</head>
<body>

<c:choose>
    <c:when test="${not empty error}">
        <p>${error}</p>
    </c:when>
    <c:otherwise>
        <h2>${nombreLibro}</h2>
        <p>Autor: ${nombreAutor}</p>
    </c:otherwise>
</c:choose>

<a href="/libros">Volver a la lista</a>

</body>
</html>
