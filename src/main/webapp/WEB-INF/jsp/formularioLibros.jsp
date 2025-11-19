<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Agregar Libro</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css">
</head>
<body>
<h2>Formulario para agregar libro</h2>

<form action="/procesa/libro" method="post">
    <label>Nombre del libro:</label><br>
    <input type="text" name="nombreLibro" required><br>

    <label>Autor:</label><br>
    <input type="text" name="nombreAutor" required><br><br>

    <input type="submit" value="Agregar">
</form>

<a href="/libros">Volver a la lista</a>
</body>
</html>
