

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Exitoso</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="css/registrationSuccess.css" type="text/css"/>
    </head>
    <body>
        <div class="container">
        <h2>¡Registro Exitoso!</h2>
        <% 
            String message = (String) session.getAttribute("message");
            if (message != null) {
        %>
        <div class="message">
            <%= message %>
        </div>
        <% 
            session.removeAttribute("message");
            }
        %>

       
        <a href="index.jsp" class="btn">Volver al inicio</a>
    </div>
    </body>
</html>
