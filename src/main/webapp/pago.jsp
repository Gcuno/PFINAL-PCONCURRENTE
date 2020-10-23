<%-- 
    Document   : pago
    Created on : 21-ago-2020, 17:05:46
    Author     : wali
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <%
    HttpSession objsesion = request.getSession(true);
    String usuario = (String)objsesion.getAttribute("usuario");
    if(usuario.equals("")){
        response.sendRedirect("index.jsp");
    }
  %>

<!DOCTYPE html>
<html> 
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/jquery.js"></script>
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/scriptcontacto.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/bootstrap.min.js"></script>   
    <script src="js/main.js"></script>    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/estilos.css" rel="stylesheet"> 


    <title>Compra | Daoko</title>
</head>

        <!--Para que no se confundan uwu-->
        <!--les dejare comentarios asi -->
<body>
        <!--encabezado-superior( La parte en la que va el correo , numero y redes sociales)-->   
	<header id="header">
        <div class="header_superior">
	<div class="container">
	<div class="row">
	<div class="col-sm-6 ">
	<div class="contactoinfo">
	<ul class="nav nav-pills">
        <li><a href="principal.jsp"><i class="fa fa-phone"></i> +51986713435</a></li>
        <li><a href="contacto.jsp"><i class="fa fa-envelope"></i> malasbro11@gmail.com</a></li></ul>
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
                                    <!--menu desplegable la parte de abajo de la cabecera--> 
		<div class="header-abajo">
		<div class="container">
		<div class="row">
		<div class="col-sm-10">						
		<div class="mainmenu pull-left">
		<ul class="nav navbar-nav collapse navbar-collapse">
                 <li class="dropdown"><a href="#" class="active">Bienvenido <b><% out.println(usuario);%></b><i class="fa fa-angle-down"></i></a>
                <ul role="menu" class="sub-menu">                
                <li><% out.print("<a href='index.jsp?cerrar=true'>Cerrar Sesion</a>"); %></li>                               
                </ul>
                </li>
                </div>
                <div class="mainmenu pull-right">
                <ul class="nav navbar-nav collapse navbar-collapse">
		<li><a href="principal.jsp">Inicio</a></li>		 								                            											
                <li><a href="contacto.jsp">Contactanos</a></li>
                 <li><a href="carritocompra.jsp"><i class="fa fa-shopping-cart"></i> Carrito</a></li>
                </ul>
                </div>                 		
		</div>		
                      </div>
                             </div>
                                    </div>                                 
	</header>          	         
        <form  class="credit-card-div"  style="width: 800px;margin: 0 auto; align-content: center;">
<div class="panel panel-default" >
 <div class="panel-heading">  
     <div class="row "> 
         <div class="col-md-12 pad-adjust">
              <span class="help-block text-muted small-font" > Nombres y Apellidos del Titular</span>
                  <input type="text" class="form-control"  name="nombrecompleto" placeholder="${nombre}  ${apellidos}  " disabled />
              </div>              
         <div class="col-md-3 col-sm-3 col-xs-3">
                  <span class="help-block text-muted small-font" >Documento</span>
                  <input type="text" class="form-control" name="documentos" value="${dni}" disabled />
              </div>
               <div class="col-md-8 col-sm-8 col-xs-8">
                  <span class="help-block text-muted small-font" >Direccion</span>
                  <input type="text" class="form-control" name="Direccion" placeholder="${direccion}" value="${direccion}"/>
              </div>  
          </div>
      <div class="row ">
              <div class="col-md-12">
                   <span class="help-block text-muted small-font" >Numero de Tarjeta</span>
                   <input type="password" class="form-control" name="numerotarjeta" value="${numero}" disabled=""/>
              </div>
          </div>
     <div class="row ">
              <div class="col-md-3 col-sm-3 col-xs-3">                 
                  <input type="hidden" class="form-control" name="mescaducidad" value="${mes}" disabled />
              </div>
         <div class="col-md-3 col-sm-3 col-xs-3">                
                  <input type="hidden" class="form-control" name="añocaducidad" value="${año}" disabled/>
              </div>
        <div class="col-md-3 col-sm-3 col-xs-3">                
                  <input type="hidden" class="form-control" name="codigoseguridad" value="${codigo}" disabled />
              </div>
         <div class="col-md-3 col-sm-3 col-xs-3">
<img src="imagenes/tarjeta.png" class="img-rounded" />
         </div>
          </div>             
          </div>  
                   </div>              
</form>
                    <input type="button" id="btn-abrir-popup" class="btn btn-warning btn-block" style="background: #e7305b; border: none;" value="Confirmar Pago">                     
                   <a href="carritocompra.jsp"><input type="button" class="btn btn-warning btn-block" style="background: #e7305b; border: none; " value="Atras"></a>
             <div class="row">
              <div class="col-md-2 col-sm-6 col-xs-6 pad-adjust">
               <div class="overlay" id="overlay">
			<div class="popup" id="popup">
				<a href="#" id="btn-cerrar-popup" class="btn-cerrar-popup"><i class="fa fa-times" aria-hidden="true"></i></a>
				<h3>Pago Realizado</h3>
				<h4>Gracias por su compra <b><% out.println(usuario);%></b></h4>
                                <h4></h4>
				<form class="credit-card-div" >
                    <div class="panel panel-default" > 
                        <img src="imagenes/listo.png">                        
              </div>
                <div class="row ">         
              <div class="col-md-12 col-sm-8 col-xs-6 pad-adjust">
                  <a href="principal.jsp"><input type="button" class="btn btn-warning " style="background: #e7305b; border: none;" value="Volver a la Pantalla Principal"></a>
              </div>
          </div>
</form>                                                                                           
			</div>
		</div>
	</div>
             </div>             
    </body>
     <script src="js/main.js"></script> 
</html>
