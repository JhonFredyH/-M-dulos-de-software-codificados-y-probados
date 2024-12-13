

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro SGAPA</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="css/style.css" type="text/css"/>
    </head>
    <body>
         <div class="container">            
        <div class="logo"></div>        
        <form action="RegisterServlet" class="form" method="post" onsubmit="return validateForm()">
            <div class="title">
                <h2>Registrar Docente</h2>
            </div>
            <div class="input_group">
                <label for="name">Nombre:</label>
                <div class="input_wrapper">                    
                    <input type="text" name="name" id="name">
                </div>
            </div>
            <div class="input_group">
                <label for="lastname">Apellidos:</label>
                <div class="input_wrapper">                    
                    <input type="text" name="lastname" id="lastname">
                </div>
            </div>
            <div class="input_group">
                <label for="email">Email:</label>
                <div class="input_wrapper">                    
                    <input type="email" name="email" id="email">
                </div>
            </div>
            <div class="input_group">
                <label for="password">Contraseña:</label>
                <div class="input_wrapper">                   
                    <input type="password" name="password" id="password">                    
                </div>
            </div>  
             <% 
        
                String message = (String) session.getAttribute("message");        
                if (message != null) {

                %>
                <div class="<%= message.contains("Error") ? "error" : "message" %>">
                    <%= message %>
                </div>
                <%             
                    session.removeAttribute("message");
                }
              %>
            <div class="input_btn">
                <input type="submit" class="btn" value="Registrar">
            </div>
        </form>        
    </div> 
            <script>
                function validateForm() {
                var name = document.getElementById("name").value;
                var lastname = document.getElementById("lastname").value;
                var email = document.getElementById("email").value;
                var password = document.getElementById("password").value;

                if (name == "" || lastname == "" || email == "" || password == "") {
                    alert("Por favor, complete todos los campos.");
                    return false;
                }

                return true; 
                }                
                
            </script>    
            
    </body>
</html>
