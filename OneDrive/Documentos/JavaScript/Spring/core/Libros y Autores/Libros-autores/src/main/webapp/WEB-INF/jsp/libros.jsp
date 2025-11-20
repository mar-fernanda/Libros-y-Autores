<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head><title>Lista de Libros</title>
<link rel="stylesheet" href="/css/estilos.css">
</head>
<body>
<h2>Lista de Libros</h2>

<ul>
    <c:forEach var="libro" items="${libros}">
        <li><a href="/libros/${libro}">${libro}</a></li>
    </c:forEach>
</ul>

<a href="/libros/formulario">Agregar nuevo libro</a>
</body>
</html>
