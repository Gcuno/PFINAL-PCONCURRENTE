<%@page import="Controlador.ControladorProducto"%>
<%
   ControladorProducto niños = new ControladorProducto();
%>

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
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Niños | Daoko </title>
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
            
                                            </div>
                                    </div>
                        </div>
                </div>
	</div>   
            <!--cabecera media quiere decir la parte donde esta el logo principal y el nav (login , cuenta, etc) --> 
    <div class="header-medio">
		<div class="container">
                <div class="row">
		<div class="col-sm-4">
                <div class="logoprincipal">
		<a href="../principal.jsp"><img src="../imagenes/Inicio/Daoko2.PNG" alt="" /></a></div>
                <div class="btn-group pull-right"></div>
		</div>
		
             <div class="col-sm-8">
		<div class="shop-menu pull-right">                  
                    <ul class="nav navbar-nav">                  
                    <li><a href="../carritocompra.jsp"><i class="fa fa-shopping-cart"></i> Carrito</a></li></ul>
                    </div>
                        </div>                               
                            </div>
                                 </div>
                                    </div>
            
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
            <!--Categorias que van a la parte izquierda --> 
                            
                        <div class="container">
			<div class="row">
                        <div class="col-sm-3">
			<div class="left-sidebar">
			<h2>Categorias</h2>
                        <div class="panel-grupo categoria-productos" id="acordeon"><!--Categorias de productos-->			
                        <div class="panel panel-default"> <!--Seccion de Marcas -->
			<div class="panel-cabeza">
			<h4 class="panel-titulo">
			<a data-toggle="collapse" data-parent="#acordeon" href="#marcas">
			<span class="badge pull-right"><i class="fa fa-plus"></i></span>Marcas</a></h4>
                        </div>                                                                                           
                        <div id="marcas" class="panel-collapse collapse">
                        <div class="panel-cuerpo"><ul>
                        <li><a href="Marcas/marcas-nike.jsp">Nike </a></li>
                        <li><a href="Marcas/marcas-converse.jsp">Converse</a></li>
                        <li><a href="Marcas/marcas-adidas.jsp">Adidas </a></li>
                        <li><a href="Marcas/marcas-puma.jsp">Puma</a></li></ul></div>
                        </div>
                        </div>
                      
                       
                        
                           <div class="panel panel-default"><!--Seccion de hombres con su submenu --> 
                           <div class="panel-cabeza">
                           <h4 class="panel-titulo">
                           <a data-toggle="collapse" data-parent="#acordeon" href="#hombres">
                           <span class="badge pull-right"><i class="fa fa-plus"></i></span>Hombres</a></h4>
                           </div>
                           <div id="hombres" class="panel-collapse collapse">
                           <div class="panel-cuerpo">
                           <ul>
                           <li><a href="Hombre/H-deportivas.jsp">Deportivas</a></li>
                           <li><a href="Hombre/H-vestir.jsp">Vestir</a></li>
                           <li><a href="Hombre/H-casual.jsp">Casual</a></li>
                           <li><a href="Hombre/H-zandalias.jsp">Zandalias</a></li>							
                           </ul>
                                 </div>
                                        </div>
                                                </div>

                        <div class="panel panel-default"><!--Seccion de mujeres con su submenu --> 
                            <div class="panel-cabeza">
                            <h4 class="panel-titulo">
                            <a data-toggle="collapse" data-parent="#acordeon" href="#mujeres">
                            <span class="badge pull-right"><i class="fa fa-plus"></i></span>Mujeres</a></h4></div>
                            <div id="mujeres" class="panel-collapse collapse">
                            <div class="panel-cuerpo"> 
                            <ul>
                            <li><a href="Mujer/M-deportivas.jsp">Deportivas Mujer</a></li>
                            <li><a href="Mujer/M-casual.jsp">Casual</a></li>
                            <li><a href="Mujer/M-tacones.jsp">Tacones</a></li>
                            </ul>
                                   </div>
                                           </div>
                                                   </div>
                        <div class="panel panel-default"><!--Seccion de niños--> 
                            <div class="panel-cabeza">
                            <h4 class="panel-titulo"><a href="niños.jsp">Niños</a></h4></div>
                                </div> 
                        <div class="panel panel-default"><!--Seccion de niñas--> 
                            <div class="panel-cabeza">
                            <h4 class="panel-titulo"><a href="niñas.jsp">Niñas</a></h4></div>
                                </div>
                            </div>											
                
                        <div class="shipping text-center"><!--Imagen debajo de categoria--> 
                            <img src="../imagenes/Inicio/23.jpg" alt=""/></div>
                                </div>
                                        </div>                                         
                            
            <div class="col-sm-9 padding-right">       <!--La seccion de los productos que esta al lado derecho decategoria-->                                                 
                                <div class="productos-recomendados">                           
                                    <h2 class="titulo text-center">NIÑOS</h2>                           
                                    
                                          <%= niños.getProductos_niños()%>            
                                        </div>
                                       
                                </div>                                    											
                        </div>
                </div>                                                     
	</header>
</html>       