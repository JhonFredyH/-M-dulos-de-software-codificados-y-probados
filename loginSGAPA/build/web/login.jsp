

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro SGAPA</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        
    </head>
    <body>
         <div class="container">
        <div class="logo">
        </div>
        <form action="RegisterServlet" class="form" method="post">
            <div class="title">
                <h2>Bienvenido(a)</h2>
            </div>
            <div class="input_group">
                <label for="username">Usuario</label>
                <div class="input_wrapper">
                    <i class="material-icons icon_left">person</i>
                    <input type="text" name="name" id="name">
                </div>
            </div>
            <div class="input_group">
                <label for="password">Contraseña</label>
                <div class="input_wrapper">
                    <i class="material-icons icon_left">lock_open</i>
                    <input type="password" name="password" id="password">
                    <i class="material-icons icon_right">visibility_off</i>
                </div>
            </div>
            <div class="input_check">
                <div class="check">
                    <input type="checkbox" name="checkbox" id="checkbox" placeholder="Recordar">
                    <p>Recordar</p>
                </div>
                <a href="#">
                    <h4>¿Olvido la contraseña?</h4>
                </a>
            </div>
            <div class="input_btn">
                <input type="submit" class="btn" value="Ingresar">
            </div>
        </form>
        <div class="social_icon">
            <p>¡Síguenos en nuestras redes sociales!</p>
            <ul class="icons">
                <li>
                    <a href="#">
                        <img src="img/facebook.png" alt="facebook">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="img/instagram.png" alt="instagram">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="img/youtube.png" alt="youtube">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="img/tiktok.png" alt="tiktok">
                    </a>
                </li>
            </ul>
        </div>
    </div>  
    </body>
</html>
