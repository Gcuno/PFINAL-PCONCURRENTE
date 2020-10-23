<%
    HttpSession objsesion = request.getSession(false);
    String usuario = (String)objsesion.getAttribute("usuario");
    if(usuario.equals("")){
        response.sendRedirect("index.jsp");
    }
  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="../js/jquery.js"></script>
    <script src="../js/jquery.scrollUp.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>   
    <script src="../js/main.js"></script>    
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/font-awesome.min.css" rel="stylesheet">
    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/estilos.css" rel="stylesheet">    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conocenos</title>
        </head>
    <!--encabezado-superior( La parte en la que va el correo , numero y redes sociales)-->   
	<header id="header">
        <div class="header_superior">
	<div class="container">
	<div class="row">
	<div class="col-sm-6 ">
	<div class="contactoinfo">
	<ul class="nav nav-pills">
        <li><a href="../principal.jsp"><i class="fa fa-phone"></i> +51986713435</a></li>
        <li><a href="../contacto.jsp"><i class="fa fa-envelope"></i> malasbro11@gmail.com</a></li></ul>
	</div>
	</div>
            <div class="col-sm-6">
            <div class="social-icons pull-right">
            <ul class="nav navbar-nav">
            <li><a href="https://www.facebook.com/Daoko-105625984597675/?modal=admin_todo_tour%7D"><i class="fa fa-facebook"></i></a></li>
            <li><a href="https://twitter.com/Daoko46407886"><i class="fa fa-twitter"></i></a></li>
            </ul>
                                            </div>
                                    </div>
                        </div>
                </div>
	</div>   
            <!--cabecera media quiere decir la parte donde esta el logo principal y el nav (login , cuenta, etc) -->             
            <div class="header-abajo">
		<div class="container">
		<div class="row">
		<div class="col-sm-10">						
		<div class="mainmenu pull-left">
		<ul class="nav navbar-nav collapse navbar-collapse">
                 <li class="dropdown"><a href="#" class="active">Bienvenido <b><% out.println(usuario);%></b><i class="fa fa-angle-down"></i></a>
                <ul role="menu" class="sub-menu"> 
                <li><% out.print("<a href='../index.jsp?cerrar=true'>Cerrar Sesion</a>"); %></li>                               
                </ul>
                </li>
                </div>
                <div class="mainmenu pull-right">
                <ul class="nav navbar-nav collapse navbar-collapse">
		<li><a href="../principal.jsp">Inicio</a></li> 								                            											
                <li><a href="../contacto.jsp">Contactanos</a></li>
                </ul>
                </div>                 		
		</div>		
                      </div>
                             </div>
                                    </div>
              
         <div class="main">
            <h1>Waliii Bravo</h1>
            <hr>
            <img style="float: right;margin-left: 40px;height: 350px;width: 300px;" src="../imagenes/Inicio/Muestra/yui.gif">            
            <p style="text-align:justify; font-size: 18px; line-height: 2.0;"> Vuelve Yui :(</p> 
            <p>GENTE SOMOS FALLS GUYS EL DOMINGOOOOOOOOO !!!!</p>
                 </div>
                
                <div class="main">
                    <h1>Patrick Salvatierra</h1>
            <hr>
            <img style="float: right;margin-left: 40px;height: 350px;width:300px;" src="../imagenes/Inicio/Muestra/suzuka.jpg">            
            <p style="text-align:justify; font-size: 18px; line-height: 2.0;">Amante de las Lolis</p>
                <p>PSDT : https://www.youtube.com/watch?v=N6AaSfL4yVk</p>      
                    
                </div>
                <div class="main">
                    <h1>Gyanella Cuno</h1>
            <hr>
            <img style="float: right;margin-left: 40px;height: 300px;width: 300px;" src="../imagenes/Inicio/Muestra/Gyanella.png">            
            <p style="text-align:justify; font-size: 18px; line-height: 2.0;">........</p>      
                    
                </div>
                <div class="main">
                    <h1>Jair Fabricio </h1>
            <hr>
            <img style="float: right;margin-left: 40px;height: 350px;width: 250px;" src="../imagenes/Inicio/Muestra/Jair.png">            
            <p style="text-align:justify; font-size: 18px; line-height: 2.0;"> ....................</p>      
                    
                </div>