<%-- 
    Document   : producto-detalles
    Created on : 18-jul-2020, 23:24:51
    Author     : wali
--%>

<%@page import="Controlador.ControladorProducto"%>
<%@page import="Clases.Producto"%>

<%
        int id = Integer.parseInt(request.getParameter("id"));
        Producto producto = new Controlador.ControladorProducto().getProducto(id);
%>
<%
    HttpSession objsesion = request.getSession(true);
    String usuario = (String)objsesion.getAttribute("usuario");
    if(usuario.equals("")){
        response.sendRedirect("index.jsp");
    }
  %>
<!DOCTYPE html>
<html lang="en">
<head>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/jquery.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/bootstrap.min.js"></script>   
    <script src="js/main.js"></script>    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/estilos.css" rel="stylesheet">
    <title>Detalles del Producto | Daoko</title>    
</head>

<body>
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
                    <li><a href="index.jsp"><i class="fa fa-lock"></i> Login</a></li></ul>
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
	
	<section>
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
                        <li><a href="categorias/Marcas/marcas-puma.jsp">Puma</a></li></ul></div>
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
                        <div class="panel panel-default"><!--Seccion de ni�os--> 
                            <div class="panel-cabeza">
                            <h4 class="panel-titulo"><a href="categorias/ni�os.jsp">Ni�os</a></h4></div>
                                </div> 
                        <div class="panel panel-default"><!--Seccion de ni�as--> 
                            <div class="panel-cabeza">
                            <h4 class="panel-titulo"><a href="categorias/ni�as.jsp">Ni�as</a></h4></div>
                                </div>                            
                            </div>											
                
                        <div class="shipping text-center"><!--Imagen debajo de categoria--> 
                            <img src="imagenes/Inicio/23.jpg" alt=""/></div>
                                </div>
                                        </div>
				
				<div class="col-sm-9 padding-right">
					<div class="producto-detalles">
						<div class="col-sm-5">
							<div class="imagen-producto">
                                                            <img src="<%= producto.getImg() %>" alt="" />								
							</div>							

						</div>
						<div class="col-sm-7">
							<div class="informacion-producto">
								<img src="imagenes/Detalles-Producto/nuevo.jpg" class="newarrival" alt="" />
								<h2><%= producto.getNombre()%></h2>
								<p>Codigo del Producto : <%= producto.getId()%></p>								
                                                                <form action="agregarproducto" method="post">
								<span>
									<span>S/<%= producto.getPrecio()%></span>
									<label>Cantidad:</label>
                                                                        <input type="hidden" value="<%= producto.getId()%>" name="idproducto">
                                                                        <input type="text" value="1" id="txt-cantidad" name="cantidad"/>
									<button type="submit" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										A�adir al Carrito
									</button>
								</span>
                                                                </form>
								<p><b>Disponible:</b>En Stock</p>
								<p><b>Condicion:</b>Nuevo</p>
								<p><b>Marca:</b> Daoko</p>
								
							</div>
						</div>
					</div>                                                                       																	
				</div>
			</div>
		</div>
	</section>
	
	<footer id="footer"><!--Comienza todo lo que es el pie de pagina-->          
            <div class="contenedor-todo">
                <div class="contenedor-cuerpo">
                    <div class="colum1">
                        <h1>Mas informacion de la Tienda</h1>
                        <p>El 2 de agosto de 2010, a la edad de 11, Yui Mizuno, al mismo tiempo que Moa Kikuchi, 
                            se uni� a Sakura Gakuin, un grupo idol dirigido por la agencia de talento Amuse, Inc. 
                            El grupo todav�a no hab�a lanzado su �lbum de debut.</p>
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
                    <a href="categorias/Conocenos.jsp">  Informacion Tienda |</a>
                    <a href="TerminosCondiciones.jsp">  Terminos y Condiciones </a>
                </div>
                </div>     
            </div>          
    	</footer>
    <script src="js/jquery.js"></script>	
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
