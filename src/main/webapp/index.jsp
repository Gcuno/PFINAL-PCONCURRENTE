
<%@page import="Controlador.Consultas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Ingreso-Daoko</title>
    <link rel="stylesheet" href="css/login-estilo.css">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <script src="js/main.js"></script>
</head>

<body>

    <div class="container-all">

        <div class="ctn-form">
            <img src="imagenes/Inicio/Daoko2.PNG" alt="" class="logo">
            <h1 class="title">Iniciar Sesión</h1>

            <form action="Iniciar" id="forminicio">

                <label>Usuario</label>
                <input  type="text" name="usuario" id="txtusuario" required>
                <span class="msg-error"></span>
                <label>Contraseña</label>
                <input type="password" name="contraseña" id="txtcontraseña" required>
                <span class="msg-error"></span>

                <input type="submit" value="Iniciar" name="accion" id="btniniciar">

            </form>

            <span class="text-footer">¿Aún no te has registrado?
                <a href="registro.jsp">Registrate</a>
            </span>
        </div>

        <div class="ctn-text">
            <div class="capa"></div>
            <h1 class="title-description">Daoko</h1>
            <p class="text-description">"Dale a una mujer los zapatos adecuados y conquistará el mundo".
                <p class="text-description">Marilyn Monroe.

</p>
        </div>

    </div>

</body>

<%
      if(request.getParameter("cerrar")!=null){
          session.invalidate();
      }

    %>

</html>