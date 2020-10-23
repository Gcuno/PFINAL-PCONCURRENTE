<%-- 
    Document   : registro
    Created on : 02-jul-2020, 1:53:19
    Author     : wali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Registro-Daoko</title>
    <link rel="stylesheet" href="css/login-estilo.css">
    <script src="js/login.js"></script>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>

<body>

    <div class="container-all">

        <div class="ctn-form">
            <img src="imagenes/Inicio/Daoko2.PNG" alt="" class="logo">
            <h1 class="title">Registrarse</h1>

            <form action="nuevousuario" onsubmit='enviarRegistro' >
                
                <label>Nombre</label>
                <input type="text" name="nombre"  id="nombrer">
                <label>Apellidos</label>
                <input type="text" name="apellidos" id="apellidosr">
                <label>Nombre de Usuario</label>
                <input type="text" name="usuario" id="usuarior">
                <label>Email</label>
                <input type="text" name="email"  id="emailr">               
                <label>Contraseña</label>
                <input type="password" name="contraseña" id="contraseñar" >
                <input type="submit" value="Registrarse"  >                                
            </form>  
            <div id ="error"></div>
            <span class="text-footer">¿Ya te has registrado?
                <a href="index.jsp">Iniciar Sesión</a>
            </span>
        </div>

        <div class="ctn-text">
            <div class="capa"></div>
            <h1 class="title-description">Daoko</h1>
            <p class="text-description">"¿Cómo puedes llegar a lo más alto en la vida si no llevas los zapatos más altos?"</p>
            <p class="text-description">...........Sonia Rykiel...........</p>                                           
        </div>

        
    </div>

</body>
<script src="js/login.js"></script>
</html>