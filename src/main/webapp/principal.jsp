
<%@page import="Controlador.ControladorProducto"%>
<%
   ControladorProducto cp = new ControladorProducto();
%>

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
    <title>Bienvenido | Daoko</title>
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
            <!--cabecera media quiere decir la parte donde esta el logo principal y el nav (login , cuenta, etc) --> 
    <div class="header-medio">
		<div class="container">
                <div class="row">
		<div class="col-sm-4">
                <div class="logoprincipal">
		<a href="principal.jsp"><img src="imagenes/Inicio/Daoko2.PNG" alt="" /></a></div>
                <div class="btn-group pull-right"></div>
		</div>
		
             <div class="col-sm-8">
		<div class="shop-menu pull-right">                  
                    <ul class="nav navbar-nav">                                                        
                    <li><a href="carritocompra.jsp"><i class="fa fa-shopping-cart"></i> Carrito</a></li>                               
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
                </ul>
                </div>                 		
		</div>		
                      </div>
                             </div>
                                    </div>
                                   
	</header>
                    <!--Aca es la imagen que va despues de la cabecera--> 
	<section id="slogan"><!Slogan  de ofertas-->
		<div class="container">
                <img src="imagenes/Inicio/descarga.jpg" alt="" /></div>
	</section>
                    <!--el banner de los zapatos que se ve ahi--> 
	<section id="banner">
            <img src="imagenes/Inicio/fondo1.jpeg">
            <div class="contenedor">
            <h2>Zapatos y Calzados </h2>
            <p>Tu estilo preferido lo encontrara aqui</p>           
            </div>                      
        </section>
                    <!--esto es la parte en la que dice nacio todo--> 
        <div class="main">
            <h1>COMO NACIO TODO</h1>
            <hr>
            <img class="imagendere" src="imagenes/Inicio/fondologin.jpg">            
            <p style="text-align:justify; font-size: 18px; line-height: 2.5;"> La tienda de zapato Daoko se creó en 2000, con la intención de ofrecer lo mejor de lo mejor en moda en Ciudad de Lima . 
                        El grupo vago del 6 fundó la tienda, inspirándose en las tendencias de alta costura y en las del día a día.
                        En Daoko podrás encontrar una gran variedad de productos a precios accesibles. 
                        Nuestros clientes nos prefieren gracias a nuestra amplia selección de Zapatos, Tacones y mucho más.
                        Daoko pone a tu alcance los artículos ideales para dar ese toque especial a tu estilo. 
                        Conoce nuestra tienda y nuestra colección Primavera.</p>      
                 </div>
                    <!--Apartir de aqui viene lo que seria las secciones--> 
               <section>
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
                        <li><a href="categorias/Marcas/marcas-nike.jsp">Nike </a></li>
                        <li><a href="categorias/Marcas/marcas-converse.jsp">Converse</a></li>
                        <li><a href="categorias/Marcas/marcas-adidas.jsp">Adidas </a></li>
                        </ul>
                        </div>
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
                           <li><a href="categorias/Hombre/H-deportivas.jsp">Deportivas</a></li>
                           <li><a href="categorias/Hombre/H-vestir.jsp">Vestir</a></li>
                           <li><a href="categorias/Hombre/H-casual.jsp">Casual</a></li>
                           <li><a href="categorias/Hombre/H-zandalias.jsp">Zandalias</a></li>							
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
                            <li><a href="categorias/Mujer/M-deportivas.jsp">Deportivas Mujer</a></li>
                            <li><a href="categorias/Mujer/M-casual.jsp">Casual</a></li>
                            <li><a href="categorias/Mujer/M-tacones.jsp">Tacones</a></li>
                            </ul>
                                   </div>
                                           </div>
                                                   </div>
                        <div class="panel panel-default"><!--Seccion de niños--> 
                            <div class="panel-cabeza">
                            <h4 class="panel-titulo"><a href="categorias/niños.jsp">Niños</a></h4></div>
                                </div>  

                                <div class="panel panel-default"><!--Seccion de niñas--> 
                            <div class="panel-cabeza">
                            <h4 class="panel-titulo"><a href="categorias/niñas.jsp">Niñas</a></h4></div>
                                </div>
                            </div>											
                
                        <div class="shipping text-center"><!--Imagen debajo de categoria--> 
                            <img src="imagenes/Inicio/23.jpg" alt=""/></div>
                                </div>
                                        </div>                                         
                            
                            <div class="col-sm-9 padding-right">       <!--La seccion de los productos que esta al lado derecho decategoria-->                                                 
                                <div class="productos-recomendados">                           
                                    <h2 class="titulo text-center">Productos Recomendados</h2>                           
                                    
                                    <%= cp.getProductos()%>
                                    
                                     
                                    

                                                
                                        </div>
                                </div>                                    											
                        </div>
                </div>
                       
                               

        </section>  
                    <!--Las imagenes que salen de hombre,mujer,niño--> 
                   <div class="eleccion">                 
                       <a href="categorias/Hombre/H-casual.jsp"><img href="" src="imagenes/Inicio/hombre.PNG"></a>               
                       <a href="categorias/Mujer/M-casual.jsp"><img href="" src="imagenes/Inicio/mujer.PNG"></a>           
                       <a href="categorias/niños.jsp"><img href="" src="imagenes/Inicio/niño.PNG"></a>
                   </div>
    <div class="ubicanos"><!--el iframe de google con la ubicacion-->
            <h1><br>ENCUENTRANOS</h1>
    	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3901.440457917265!2d-77.03785578578726!3d-12.081970145844478!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105b87cadc92349%3A0xc94c84a19b68830d!2sCentro%20Comercial%20Arenales!5e0!3m2!1ses-419!2spe!4v1593032528172!5m2!1ses-419!2spe" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>			
        
        </div>                
            <div class="cuadrodetexto2"><!--el formulario de contacto-->           
                <form action="">
                    <h2>Contacto</h2>
                    <input type="text" id="names" placeholder="Nombre">
                    <input type="text" id="email" placeholder="Correo">
                    <input type="text" id="phone" placeholder="Telefono">
                    <textarea id="mensaje" placeholder="Escriba aqui su mensaje"></textarea>
                    <input type="button" value="ENVIAR" id="btnSend">
                </form>            	       
                </div> 
	
	<footer id="footer"><!--Comienza todo lo que es el pie de pagina-->          
            <div class="contenedor-todo">
                <div class="contenedor-cuerpo">
                    <div class="colum1">
                        <h1>Mas informacion de la Tienda</h1>
                        <p>El 2 de agosto de 2010, a la edad de 11, Yui Mizuno, al mismo tiempo que Moa Kikuchi, 
                            se unió a Sakura Gakuin, un grupo idol dirigido por la agencia de talento Amuse, Inc. 
                            El grupo todavía no había lanzado su álbum de debut.</p>
                </div>
                <div class="colum2">
                    <h1>Redes Sociales</h1>
                    <div class="row">
                    <i class="fa fa-facebook-square fa-2x" aria-hidden="true"></i>
                        <label>Siguenos en Facebook</label>
                    </div>
                     <div class="row">
                      <i class="fa fa-twitter-square fa-2x" aria-hidden="true"></i>
                        <label>Siguenos en Twitter</label>
                    </div>
                     <div class="row">
                        <i class="fa fa-instagram fa-2x" aria-hidden="true"></i>
                        <label>Siguenos en Instragram</label>
                    </div>
                     <div class="row">
                        <i class="fa fa-envelope-o fa-2x" aria-hidden="true"></i>
                        <label>Escribenos a nuestro correo</label>
                    </div>                  
                </div>
                <div class="colum3">
                    <h1>Informacion Contactos</h1>
                    <div class="row2">
                        <i class="fa fa-home fa-2x" aria-hidden="true"></i>
                        <label>Lince (Direccion)</label>
                    </div> 
                     <div class="row2">
                        <i class="fa fa-phone fa-2x" aria-hidden="true"></i>

                        <label>99-97854-158</label>
                    </div> 
                     <div class="row2">
                        <i class="fa fa-envelope-o fa-2x" aria-hidden="true"></i>
                        <label>malasbro11@gmail.com</label>
                    </div> 
                </div>               
       </div>
          </div> 
                <div class="contenedor-pie">
                 <div class="footer">
                <div class="copyright">
                     @ 2020 Todos los Derechos Reservados
                     <a href="">Daoko</a>
            </div>
                <div class="informacion">
                    <a href="categorias/Conocenos.jsp">  Creadores| Conocenos</a>
                    <a href="TerminosCondiciones.jsp"> | Terminos y Condiciones </a>
                </div>
                </div>     
            </div>          
    	</footer>			
</body>
</html>
