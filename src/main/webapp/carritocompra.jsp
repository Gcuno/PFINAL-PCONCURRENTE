<%-- 
    Document   : carritocompra
    Created on : 19-jul-2020, 16:11:57
    Author     : wali
--%>

<%@page import="Clases.Producto"%>
<%@page import="Controlador.ControladorProducto"%>
<%@page import="Clases.Articulo"%>
<%@page import="java.util.ArrayList"%>
<%
     HttpSession sesion = request.getSession(true);
     ArrayList<Articulo> articulos = sesion.getAttribute("carrito") == null ? null : (ArrayList) sesion.getAttribute("carrito");
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
    <link href="css/pago.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/Carrito.css" rel="stylesheet">
    <link href="css/estilos.css" rel="stylesheet"> 
    <title>Compra | Daoko</title>    
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
                    <ul class="nav navbar-nav">  </ul>                                                   
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
	
    <section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="#">Inicio</a></li>
				  <li class="active" style="color:black;">Carrito de Compra</li>
				</ol>
			</div>
                    
			<div class="table-responsive cart_info" id="cart-container">
                            <table class="table table-condensed" id="shop-table">
					<thead>
						<tr class="cart_menu">
							<td class="image">Producto</td>
							<td class="description"></td>
							<td class="price">Precio</td>
							<td class="quantity">Cantidad</td>
							<td class="total">Total</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
                                            
                                            
                                                <%
                                                    ControladorProducto cp = new ControladorProducto();
                                                    double total = 0;
                                                    if(articulos != null){
                                                    for(Articulo a: articulos){
                                                        Producto producto = cp.getProducto(a.getIdProducto());
                                                        total += a.getCantidad() * producto.getPrecio();
                                                        
                                                                                                            
                                                %>
                                            
						<tr>
							<td class="cart_product">
                                                            <a href=""><img src="<%= producto.getImg()%>" alt="" name="idimagen" width="120"></a>
							</td>
							<td class="cart_description">
								<h4><a href="producto-detalles.jsp?id=<%= producto.getId()%>" name="idnombre"><%= producto.getNombre()%></a></h4>
								<p name="idproducto">Codigo del Producto:  <%= producto.getId()%></p>
                                                                
                                                               
							</td>
							<td class="cart_price">
								<p name="idprecio">S/.<%= producto.getPrecio()%></p>
                                                                
							</td>
							<td class="cart_quantity">
                                                        <div class="cart_quantity_button">                           
                                                         <input type="number" id="Cantidad" name="cantidad"  value="<%= a.getCantidad()%>" class="form-control text-center" autocomplete="off" size="2" >
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price" name="idtotal">S/. <%= Math.round(producto.getPrecio()*a.getCantidad()*100.0) / 100.0%></p>
							</td>
							<td class="cart_delete">
                                                            <span id="idarticulo" style="display:none;"><%= producto.getId()%></span>
                                                            <a class="cart_quantity_delete" href="" id="borraritem"><i class="fa fa-times"></i></a>
							</td>
						</tr>
                                                
                                                <%}}%>
                                                                                                                                                                                               
                                                                                                                                              						
					</tbody>
				</table>
                                <% if (articulos == null){%>
                                <h4>No hay Articulos en el carro</h4>
                                <%}%>
                               
                            
			</div>                                                                                                  		
	</section>  
           
           <div class="contenedor">
               <a href="javascript:window.history.go(-2);" class="btn btn-success" style="border: none;background: #e7305b;">Seguir Comprando</a>
			<button id="btn-abrir-popup" class="btn-abrir-popup ">Pago</button>       
                        <div class="overlay" id="overlay">
			<div class="popup" id="popup">
				<a href="#" id="btn-cerrar-popup" class="btn-cerrar-popup"><i class="fa fa-times" aria-hidden="true"></i></a>
				<h3>Termina de Pagar</h3>
				<h4>y recibiras mas descuentos en nuestros productos</h4>
				<form method="post" action="Pago" class="credit-card-div" >
<div class="panel panel-default" >
 <div class="panel-heading">    
      <div class="row ">
              <div class="col-md-12">
                  <input type="text" class="form-control" name="numerotarjeta" placeholder="Numero de Tarjeta de Credito" />
              </div>
          </div>
     <div class="row ">
              <div class="col-md-3 col-sm-3 col-xs-3">
                  <span class="help-block text-muted small-font" > Mes de Caducidad</span>
                  <input type="text" class="form-control" name="mescaducidad" placeholder="MM" />
              </div>
         <div class="col-md-3 col-sm-3 col-xs-3">
                  <span class="help-block text-muted small-font" >Año de Caducacion</span>
                  <input type="text" class="form-control" name="añocaducidad" placeholder="YY" />
              </div>
        <div class="col-md-3 col-sm-3 col-xs-3">
                  <span class="help-block text-muted small-font" >Codigo de Seguridad</span>
                  <input type="text" class="form-control" name="codigoseguridad" placeholder="CCV" />
              </div>
         <div class="col-md-3 col-sm-3 col-xs-3">
<img src="imagenes/tarjeta.png" class="img-rounded" />
         </div>
          </div>
     <div class="row ">                   
              <div class="col-md-3 col-sm-3 col-xs-3">
                  <span class="help-block text-muted small-font" >Nombre</span>
                  <input type="text" class="form-control" name="nombretitular" placeholder="Nombre" />
              </div>
         <div class="col-md-3 col-sm-3 col-xs-3">
                  <span class="help-block text-muted small-font" >Apellidos</span>
                  <input type="text" class="form-control" name="apellidostitular"placeholder="Apellidos" />
                  
              </div>
         <div class="col-md-3 col-sm-3 col-xs-3">
                  <span class="help-block text-muted small-font" >Documento</span>
                  <input type="text" class="form-control" name="documentos" placeholder="DNI" />
              </div>
         
          <div class="col-md-12 pad-adjust">

                  <input type="text" class="form-control"  name="direccion"placeholder="Direccion de Facturacion" />
              </div>
          </div>
     <div class="row">
<div class="col-md-12 pad-adjust">
    <div class="checkbox">
    <label>
      <input type="checkbox" checked class="text-muted">Guardar datos para su proxima compra
    </label>
  </div>
</div>
     </div>
       <div class="row ">
            <div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
                <input type="submit"  class="btn btn-danger" style="background: #121212; border: none;"  value="Cancelar" />
              </div>
              <div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
                  <input type="submit"  class="btn btn-warning btn-block" style="background: #e7305b; border: none;" value="Pagar Ahora" />
              </div>
          </div>  
                   </div>
              </div>
</form>                                                                                           
			</div>
		</div>
	</div>

	<script src="js/main.js"></script>

	<section id="do_action">
		<div class="container">
			<div class="heading">
				<h3>Te gustaria comprar algo mas ?</h3>
				<p>Por los problemas que se presentaron este año del COVID-19, el delivery es gratis.</p>
			</div>
                    
			<div class="row">                      
				<div class="col-sm-6">
					<div class="total_area">
						<ul>
                                                    
                                                    <li>Cargo del producto <span id="txt-subtotal">S/.<%= Math.round(total*100.0)/100.0%></span></li>							
							<li>Costo de Envio <span>Gratis</span></li>
                                                        <li>Total <span id="txt-total">S/.<%= Math.round(total*100.0)/100.0%></span></li>
						</ul>
							
                                                
					</div>
				</div>
                                               
			</div>
                                                
		</div>
        
	</section><!--/#do_action-->

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
                        <label>Lurin</label>
                    </div> 
                     <div class="row2">
                        <i class="fa fa-phone fa-2x" aria-hidden="true"></i>

                        <label>986102989</label>
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
                    <a href="">  Terminos y Condiciones </a>
                </div>
                </div>     
            </div>          
    	</footer>	
    
    
    
    <script src="js/carrito.js"></script>
</body>
</html>