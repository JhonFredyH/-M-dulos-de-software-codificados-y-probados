
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Datos Estudiante Recibidos!!!</title>
     <link rel="stylesheet" href="css/DateStudent.css" type="text/css"/>
</head>
<body>

    <div class="container">
        <h2>Datos  Estudiante Recibidos!!!!</h2>
        <ul class="data-list">
            <li><label>Nombre: </label><span><%= request.getParameter("name") %></span></li>
            <li><label>Apellido: </label><span><%= request.getParameter("lastname") %></span></li>
            <li><label>Email: </label><span><%= request.getParameter("email") %></span></li>
            <li><label>Teléfono: </label><span><%= request.getParameter("phone") %></span></li>
            <li><label>Dirección: </label><span><%= request.getParameter("address") %></span></li>
            <li><label>Fecha de Nacimiento: </label><span><%= request.getParameter("birthdate") %></span></li>
            <li><label>Grado: </label><span><%= request.getParameter("grade") %></span></li>
        </ul>
    </div>
</body>
</html>
