<%-- 
    Document   : contacto
    Created on : 23-jul-2020, 16:47:18
    Author     : wali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilo-contacto.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <script src="js/jquery-3.2.1.js"></script>
        <script src="js/scriptcontacto.js"></script>
        <title>Pagina de Contacto</title>
    </head>
    <body>

    <section class="form_wrap">

        <section class="cantact_info">
            <section class="info_title">
                <span class="fa fa-user-circle-o" aria-hidden="true"></span>
                <h2>INFORMACION<br>DE CONTACTO</h2>
            </section>
            <section class="info_items">
                <p><span class="fa fa-envelope"></span> malasbro11@gmail.com   </p>
                <p><span class="fa fa-mobile"></span> +51 986-102-989</p>
            </section>
        </section>

        <form action="" class="form_contact">
            <h2>Envia un mensaje</h2>
            <div class="user_info">
                <label for="names">Nombres *</label>
                <input type="text" id="names" required>

                <label for="phone">Telefono / Celular</label>
                <input type="text" id="phone" required >

                <label for="email">Correo electronico *</label>
                <input type="text" id="email" required>

                <label for="mensaje">Mensaje *</label>
                <textarea id="mensaje"  required ></textarea>               
                <input type="button" value="Enviar Mensaje" id="btnSend">
                <a href="principal.jsp"><input type="button" value="Atras"></a>
            </div>
        </form>

    </section>

</body>
</html>
