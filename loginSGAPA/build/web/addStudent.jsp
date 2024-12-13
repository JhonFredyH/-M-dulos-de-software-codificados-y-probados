
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Agregar Estudiante</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="css/addStudent.css" type="text/css"/>
</head>
<body>
   
    <form action="AddStudentServlet" method="GET">
         <h3>Registrar Estudiante</h3>
        <label for="name">Nombre:</label>
        <input type="text" id="name" name="name" required><br><br>

        <label for="lastname">Apellido:</label>
        <input type="text" id="lastname" name="lastname" required><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>

        <label for="phone">Teléfono:</label>
        <input type="text" id="phone" name="phone" required><br><br>

        <label for="address">Dirección:</label>
        <input type="text" id="address" name="address" required><br><br>

        <label for="birthdate">Fecha de Nacimiento:</label>
        <input type="date" id="birthdate" name="birthdate" required><br><br>

        <label for="grade">Grado:</label>
        <select id="grade" name="grade" required>
            <option value="seleccionar">Seleccionar</option>
            <option value="0">Prescolar</option>
            <option value="1">Primero</option>
            <option value="2">Segundo</option>
            <option value="3">Tercero</option>
            <option value="4">Cuarto</option>
            <option value="5">Quinto</option>
            <option value="6">Sexto</option>
            <option value="7">Septimo</option>
            <option value="8">Octavo</option>
            <option value="9">Noveno</option>
            <option value="10">Decimo</option>
            <option value="11">Undecimo</option>
        </select><br><br>

        <button type="submit">Registrar</button>
    </form>
</body>
</html>
