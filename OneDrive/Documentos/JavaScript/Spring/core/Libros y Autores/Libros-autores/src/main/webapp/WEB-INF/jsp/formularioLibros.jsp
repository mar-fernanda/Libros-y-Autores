<!DOCTYPE html>
<html>
<head><title>Agregar Libro</title>
<link rel="stylesheet" href="/css/estilos.css">
</head>
<body>

<h2>Agregar Nuevo Libro</h2>

<form action="/procesa/libro" method="POST">
    <label>Nombre del Libro:</label>
    <input type="text" name="nombreLibro" required><br><br>

    <label>Autor:</label>
    <input type="text" name="nombreAutor" required><br><br>

    <button type="submit">Guardar</button>
</form>

<a href="/libros">Volver a la lista</a>

</body>
</html>
