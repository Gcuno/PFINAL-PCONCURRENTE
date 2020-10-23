/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;
import Clases.Producto;
import Modelo.ModeloProducto;
import Modelo.ModeloProducto_adidas;
import Modelo.ModeloProducto_converse;
import Modelo.ModeloProducto_nike;
import Modelo.ModeloProducto_h_casual;
import Modelo.ModeloProducto_h_deportivas;
import Modelo.ModeloProducto_h_vestir;
import Modelo.ModeloProducto_h_zandalias;
import Modelo.ModeloProducto_m_casual;
import Modelo.ModeloProducto_m_deportivas;
import Modelo.ModeloProducto_m_tacones;
import Modelo.ModeloProducto_niñas;
import Modelo.ModeloProducto_niños;
import Modelo.ModeloProducto_puma;

/**
 *
 * @author wali
 */
public class ControladorProducto {
    public String getProductos(){
        ModeloProducto mp = new ModeloProducto();
        String htmlcode = "";
        for(Producto producto : mp.getAllProductos()){
            htmlcode += "<div class=\"col-sm-4\">                          \n" +
"                                        <div class=\"producto-imagen-wrapper\">                          \n" +
"                                            <div class=\"productos-solo\">                          \n" +
"                                                <div class=\"productoinfo text-center\">                           \n" +
"                                                    <img src=\""+producto.getImg()+"\" alt=\"\" />\n" +
"                                                    <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                    <p>"+producto.getNombre()+"</p>\n" +
"                                                                                                   \n" +
"                                                </div>                                               \n" +
"                                                <div class=\"producto-overlay\">\n" +
"                                                        <div class=\"contenido-overlay\">\n" +
                                                            "<img src=\""+producto.getImg()+"\" class=\"imgdentro\" alt=\"\" />\n" +
"                                                                <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                                <p>"+producto.getNombre()+"</p>\n" +
"                                                                \n" +
                                                                 
                                     
"                                                        </div>\n" +
"                                                     <img src=\"imagenes/Inicio/venta.png\" class=\"new\" alt=\"\" />\n" +
"                                                </div>\n" +
"                                        </div>\n" +
"                                        <div class=\"escoger\">\n" +
"                                                <ul class=\"nav nav-pills nav-justified\">\n" +
"                                                        <li><a href=\"producto-detalles.jsp?id="+producto.getId()+"\"><i class=\"fa fa-shopping-cart\" aria-hidden=\"true\"></i>Añadir al carrito</a></li>\n" +
"\n" +
"                                                </ul>\n" +
"                                        </div>\n" +
"                                </div>\n" +
"                        </div>";
        }        
        return htmlcode;        
    }
    
    
    public Producto getProducto(int id){
        return new ModeloProducto().getProducto(id);
    }
    
    public String getProductos_nike(){
        ModeloProducto_nike mp = new ModeloProducto_nike();
        String htmlcode = "";
        for(Producto producto : mp.getAllProductos()){
            htmlcode += "<div class=\"col-sm-4\">                          \n" +
"                                        <div class=\"producto-imagen-wrapper\">                          \n" +
"                                            <div class=\"productos-solo\">                          \n" +
"                                                <div class=\"productoinfo text-center\">                           \n" +
"                                                    <img src=\""+producto.getImg()+"\" alt=\"\" />\n" +
"                                                    <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                    <p>"+producto.getNombre()+"</p>\n" +
"                                                                                               \n" +
"                                                </div>                                               \n" +
"                                                <div class=\"producto-overlay\">\n" +
"                                                        <div class=\"contenido-overlay\">\n" +
                                                            "<img src=\""+producto.getImg()+"\" class=\"imgdentro\" alt=\"\" />\n" +
"                                                                <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                                <p>"+producto.getNombre()+"</p>\n" +
"                                                              \n" +
                                                                 
                                     
"                                                        </div>\n" +
"                                                     <img src=\"../../imagenes/Inicio/venta.png\" class=\"new\" alt=\"\" />\n" +
"                                                </div>\n" +
"                                        </div>\n" +
"                                        <div class=\"escoger\">\n" +
"                                                <ul class=\"nav nav-pills nav-justified\">\n" +
"                                                        <li><a href=\"../../producto-detalles.jsp?id="+producto.getId()+"\"><i class=\"fa fa-shopping-cart\" aria-hidden=\"true\"></i>Añadir al carrito</a></li>\n" +
"\n" +
"                                                </ul>\n" +
"                                        </div>\n" +
"                                </div>\n" +
"                        </div>";
        }        
        return htmlcode;        
    }
    
    
    public Producto getProducto_nike(int id){
        return new ModeloProducto().getProducto_nike(id);
    }
    public String getProductos_adidas(){
        ModeloProducto_adidas mp = new ModeloProducto_adidas();
        String htmlcode = "";
        for(Producto producto : mp.getAllProductos()){
            htmlcode += "<div class=\"col-sm-4\">                          \n" +
"                                        <div class=\"producto-imagen-wrapper\">                          \n" +
"                                            <div class=\"productos-solo\">                          \n" +
"                                                <div class=\"productoinfo text-center\">                           \n" +
"                                                    <img src=\""+producto.getImg()+"\" alt=\"\" />\n" +
"                                                    <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                    <p>"+producto.getNombre()+"</p>\n" +
"                                                                                       \n" +
"                                                </div>                                               \n" +
"                                                <div class=\"producto-overlay\">\n" +
"                                                        <div class=\"contenido-overlay\">\n" +
                                                                 "<img src=\""+producto.getImg()+"\" class=\"imgdentro\" alt=\"\" />\n" +
"                                                                <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                                <p>"+producto.getNombre()+"</p>\n" +
"                                                                 \n" +
                                                                 
                                     
"                                                        </div>\n" +
"                                                     <img src=\"../../imagenes/Inicio/venta.png\" class=\"new\" alt=\"\" />\n" +
"                                                </div>\n" +
"                                        </div>\n" +
"                                        <div class=\"escoger\">\n" +
"                                                <ul class=\"nav nav-pills nav-justified\">\n" +
"                                                        <li><a href=\"../../producto-detalles.jsp?id="+producto.getId()+"\"><i class=\"fa fa-shopping-cart\" aria-hidden=\"true\"></i>Añadir al carrito</a></li>\n" +
"\n" +
"                                                </ul>\n" +
"                                        </div>\n" +
"                                </div>\n" +
"                        </div>";
        }        
        return htmlcode;        
    }
    
    
    public Producto getProducto_adidas(int id){
        return new ModeloProducto().getProducto(id);
    }
    
    public String getProductos_puma(){
        ModeloProducto_puma mp = new ModeloProducto_puma();
        String htmlcode = "";
        for(Producto producto : mp.getAllProductos()){
            htmlcode += "<div class=\"col-sm-4\">                          \n" +
"                                        <div class=\"producto-imagen-wrapper\">                          \n" +
"                                            <div class=\"productos-solo\">                          \n" +
"                                                <div class=\"productoinfo text-center\">                           \n" +
"                                                    <img src=\""+producto.getImg()+"\" alt=\"\" />\n" +
"                                                    <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                    <p>"+producto.getNombre()+"</p>\n" +
"                                                                                                   \n" +
"                                                </div>                                               \n" +
"                                                <div class=\"producto-overlay\">\n" +
"                                                        <div class=\"contenido-overlay\">\n" +
                                                             "<img src=\""+producto.getImg()+"\" class=\"imgdentro\" alt=\"\" />\n" +
"                                                                <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                                <p>"+producto.getNombre()+"</p>\n" +
"                                                                \n" +
                                                                 
                                     
"                                                        </div>\n" +
"                                                     <img src=\"../../imagenes/Inicio/venta.png\" class=\"new\" alt=\"\" />\n" +
"                                                </div>\n" +
"                                        </div>\n" +
"                                        <div class=\"escoger\">\n" +
"                                                <ul class=\"nav nav-pills nav-justified\">\n" +
"                                                        <li><a href=\"../../producto-detalles.jsp?id="+producto.getId()+"\"><i class=\"fa fa-shopping-cart\" aria-hidden=\"true\"></i>Añadir al carrito</a></li>\n" +
"\n" +
"                                                </ul>\n" +
"                                        </div>\n" +
"                                </div>\n" +
"                        </div>";
        }        
        return htmlcode;        
    }
    
    
    public Producto getProducto_puma(int id){
        return new ModeloProducto().getProducto(id);
    }
    public String getProductos_converse(){
        ModeloProducto_converse mp = new ModeloProducto_converse();
        String htmlcode = "";
        for(Producto producto : mp.getAllProductos()){
            htmlcode += "<div class=\"col-sm-4\">                          \n" +
"                                        <div class=\"producto-imagen-wrapper\">                          \n" +
"                                            <div class=\"productos-solo\">                          \n" +
"                                                <div class=\"productoinfo text-center\">                           \n" +
"                                                    <img src=\""+producto.getImg()+"\" alt=\"\" />\n" +
"                                                    <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                    <p>"+producto.getNombre()+"</p>\n" +
"                                                                                                   \n" +
"                                                </div>                                               \n" +
"                                                <div class=\"producto-overlay\">\n" +
"                                                        <div class=\"contenido-overlay\">\n" +
                                                    "<img src=\""+producto.getImg()+"\" class=\"imgdentro\" alt=\"\" />\n" +
"                                                                <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                                <p>"+producto.getNombre()+"</p>\n" +
"                                                                \n" +
                                                                 
                                     
"                                                        </div>\n" +
"                                                     <img src=\"../../imagenes/Inicio/venta.png\" class=\"new\" alt=\"\" />\n" +
"                                                </div>\n" +
"                                        </div>\n" +
"                                        <div class=\"escoger\">\n" +
"                                                <ul class=\"nav nav-pills nav-justified\">\n" +
"                                                        <li><a href=\"../../producto-detalles.jsp?id="+producto.getId()+"\"><i class=\"fa fa-shopping-cart\" aria-hidden=\"true\"></i>Añadir al carrito</a></li>\n" +
"\n" +
"                                                </ul>\n" +
"                                        </div>\n" +
"                                </div>\n" +
"                        </div>";
        }        
        return htmlcode;        
    }
    
    
    public Producto getProducto_converse(int id){
        return new ModeloProducto().getProducto(id);
    }
    public String getProductos_h_casual(){
        ModeloProducto_h_casual mp = new ModeloProducto_h_casual();
        String htmlcode = "";
        for(Producto producto : mp.getAllProductos()){
            htmlcode += "<div class=\"col-sm-4\">                          \n" +
"                                        <div class=\"producto-imagen-wrapper\">                          \n" +
"                                            <div class=\"productos-solo\">                          \n" +
"                                                <div class=\"productoinfo text-center\">                           \n" +
"                                                    <img src=\""+producto.getImg()+"\" alt=\"\" />\n" +
"                                                    <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                    <p>"+producto.getNombre()+"</p>\n" +
"                                                                                              \n" +
"                                                </div>                                               \n" +
"                                                <div class=\"producto-overlay\">\n" +
"                                                        <div class=\"contenido-overlay\">\n" +
                                                             "<img src=\""+producto.getImg()+"\" class=\"imgdentro\" alt=\"\" />\n" +
"                                                                <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                                <p>"+producto.getNombre()+"</p>\n" +
"                                                                \n" +
                                                                 
                                     
"                                                        </div>\n" +
"                                                     <img src=\"../../imagenes/Inicio/venta.png\" class=\"new\" alt=\"\" />\n" +
"                                                </div>\n" +
"                                        </div>\n" +
"                                        <div class=\"escoger\">\n" +
"                                                <ul class=\"nav nav-pills nav-justified\">\n" +
"                                                        <li><a href=\"../../producto-detalles.jsp?id="+producto.getId()+"\"><i class=\"fa fa-shopping-cart\" aria-hidden=\"true\"></i>Añadir al carrito</a></li>\n" +
"\n" +
"                                                </ul>\n" +
"                                        </div>\n" +
"                                </div>\n" +
"                        </div>";
        }        
        return htmlcode;        
    }
    
    
    public Producto getProducto_h_casual(int id){
        return new ModeloProducto().getProducto(id);
    }
    
    public String getProductos_h_deportivas(){
        ModeloProducto_h_deportivas mp = new ModeloProducto_h_deportivas();
        String htmlcode = "";
        for(Producto producto : mp.getAllProductos()){
            htmlcode += "<div class=\"col-sm-4\">                          \n" +
"                                        <div class=\"producto-imagen-wrapper\">                          \n" +
"                                            <div class=\"productos-solo\">                          \n" +
"                                                <div class=\"productoinfo text-center\">                           \n" +
"                                                    <img src=\""+producto.getImg()+"\" alt=\"\" />\n" +
"                                                    <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                    <p>"+producto.getNombre()+"</p>\n" +
"                                                       \n" +
"                                                </div>                                               \n" +
"                                                <div class=\"producto-overlay\">\n" +
"                                                        <div class=\"contenido-overlay\">\n" +
                                                         "<img src=\""+producto.getImg()+"\" class=\"imgdentro\" alt=\"\" />\n" +
"                                                                <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                                <p>"+producto.getNombre()+"</p>\n" +
"                                                                \n" +
                                                                 
                                     
"                                                        </div>\n" +
"                                                     <img src=\"../../imagenes/Inicio/venta.png\" class=\"new\" alt=\"\" />\n" +
"                                                </div>\n" +
"                                        </div>\n" +
"                                        <div class=\"escoger\">\n" +
"                                                <ul class=\"nav nav-pills nav-justified\">\n" +
"                                                        <li><a href=\"../../producto-detalles.jsp?id="+producto.getId()+"\"><i class=\"fa fa-shopping-cart\" aria-hidden=\"true\"></i>Añadir al carrito</a></li>\n" +
"\n" +
"                                                </ul>\n" +
"                                        </div>\n" +
"                                </div>\n" +
"                        </div>";
        }        
        return htmlcode;        
    }
    
    
    public Producto getProducto_h_deportivas(int id){
        return new ModeloProducto().getProducto(id);
    }
    
    public String getProductos_h_zandalias(){
        ModeloProducto_h_zandalias mp = new ModeloProducto_h_zandalias();
        String htmlcode = "";
        for(Producto producto : mp.getAllProductos()){
            htmlcode += "<div class=\"col-sm-4\">                          \n" +
"                                        <div class=\"producto-imagen-wrapper\">                          \n" +
"                                            <div class=\"productos-solo\">                          \n" +
"                                                <div class=\"productoinfo text-center\">                           \n" +
"                                                    <img src=\""+producto.getImg()+"\" alt=\"\" />\n" +
"                                                    <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                    <p>"+producto.getNombre()+"</p>\n" +
"                                                                                                \n" +
"                                                </div>                                               \n" +
"                                                <div class=\"producto-overlay\">\n" +
"                                                        <div class=\"contenido-overlay\">\n" +
                                                             "<img src=\""+producto.getImg()+"\" class=\"imgdentro\" alt=\"\" />\n" +
"                                                                <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                                <p>"+producto.getNombre()+"</p>\n" +
"                                                               \n" +
                                                                 
                                     
"                                                        </div>\n" +
"                                                     <img src=\"../../imagenes/Inicio/venta.png\" class=\"new\" alt=\"\" />\n" +
"                                                </div>\n" +
"                                        </div>\n" +
"                                        <div class=\"escoger\">\n" +
"                                                <ul class=\"nav nav-pills nav-justified\">\n" +
"                                                        <li><a href=\"../../producto-detalles.jsp?id="+producto.getId()+"\"><i class=\"fa fa-shopping-cart\" aria-hidden=\"true\"></i>Añadir al carrito</a></li>\n" +
"\n" +
"                                                </ul>\n" +
"                                        </div>\n" +
"                                </div>\n" +
"                        </div>";
        }        
        return htmlcode;        
    }
    
    
    public Producto getProducto_h_zandalias(int id){
        return new ModeloProducto().getProducto(id);
    }
    
    public String getProductos_h_vestir(){
        ModeloProducto_h_vestir mp = new ModeloProducto_h_vestir();
        String htmlcode = "";
        for(Producto producto : mp.getAllProductos()){
            htmlcode += "<div class=\"col-sm-4\">                          \n" +
"                                        <div class=\"producto-imagen-wrapper\">                          \n" +
"                                            <div class=\"productos-solo\">                          \n" +
"                                                <div class=\"productoinfo text-center\">                           \n" +
"                                                    <img src=\""+producto.getImg()+"\" alt=\"\" />\n" +
"                                                    <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                    <p>"+producto.getNombre()+"</p>\n" +
"                                                                                                   \n" +
"                                                </div>                                               \n" +
"                                                <div class=\"producto-overlay\">\n" +
"                                                        <div class=\"contenido-overlay\">\n" +
                                                             "<img src=\""+producto.getImg()+"\" class=\"imgdentro\" alt=\"\" />\n" +
"                                                                <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                                <p>"+producto.getNombre()+"</p>\n" +
"                                                               \n" +
                                                                 
                                     
"                                                        </div>\n" +
"                                                     <img src=\"../../imagenes/Inicio/venta.png\" class=\"new\" alt=\"\" />\n" +
"                                                </div>\n" +
"                                        </div>\n" +
"                                        <div class=\"escoger\">\n" +
"                                                <ul class=\"nav nav-pills nav-justified\">\n" +
"                                                        <li><a href=\"../../producto-detalles.jsp?id="+producto.getId()+"\"><i class=\"fa fa-shopping-cart\" aria-hidden=\"true\"></i>Añadir al carrito</a></li>\n" +
"\n" +
"                                                </ul>\n" +
"                                        </div>\n" +
"                                </div>\n" +
"                        </div>";
        }        
        return htmlcode;        
    }
    
    
    public Producto getProducto_h_vestir(int id){
        return new ModeloProducto().getProducto(id);
    }
    
    public String getProductos_m_casual(){
        ModeloProducto_m_casual mp = new ModeloProducto_m_casual();
        String htmlcode = "";
        for(Producto producto : mp.getAllProductos()){
            htmlcode += "<div class=\"col-sm-4\">                          \n" +
"                                        <div class=\"producto-imagen-wrapper\">                          \n" +
"                                            <div class=\"productos-solo\">                          \n" +
"                                                <div class=\"productoinfo text-center\">                           \n" +
"                                                    <img src=\""+producto.getImg()+"\" alt=\"\" />\n" +
"                                                    <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                    <p>"+producto.getNombre()+"</p>\n" +
"                                                            \n" +
"                                                </div>                                               \n" +
"                                                <div class=\"producto-overlay\">\n" +
"                                                        <div class=\"contenido-overlay\">\n" +
                                                             "<img src=\""+producto.getImg()+"\" class=\"imgdentro\" alt=\"\" />\n" +
"                                                                <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                                <p>"+producto.getNombre()+"</p>\n" +
"                                                               \n" +
                                                                 
                                     
"                                                        </div>\n" +
"                                                     <img src=\"../../imagenes/Inicio/venta.png\" class=\"new\" alt=\"\" />\n" +
"                                                </div>\n" +
"                                        </div>\n" +
"                                        <div class=\"escoger\">\n" +
"                                                <ul class=\"nav nav-pills nav-justified\">\n" +
"                                                        <li><a href=\"../../producto-detalles.jsp?id="+producto.getId()+"\"><i class=\"fa fa-shopping-cart\" aria-hidden=\"true\"></i>Añadir al carrito</a></li>\n" +
"\n" +
"                                                </ul>\n" +
"                                        </div>\n" +
"                                </div>\n" +
"                        </div>";
        }        
        return htmlcode;        
    }
    
    
    public Producto getProducto_m_casual(int id){
        return new ModeloProducto().getProducto(id);
    }
    
        public String getProductos_m_tacones(){
        ModeloProducto_m_tacones mp = new ModeloProducto_m_tacones();
        String htmlcode = "";
        for(Producto producto : mp.getAllProductos()){
            htmlcode += "<div class=\"col-sm-4\">                          \n" +
"                                        <div class=\"producto-imagen-wrapper\">                          \n" +
"                                            <div class=\"productos-solo\">                          \n" +
"                                                <div class=\"productoinfo text-center\">                           \n" +
"                                                    <img src=\""+producto.getImg()+"\" alt=\"\" />\n" +
"                                                    <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                    <p>"+producto.getNombre()+"</p>\n" +
"                                                                                                   \n" +
"                                                </div>                                               \n" +
"                                                <div class=\"producto-overlay\">\n" +
"                                                        <div class=\"contenido-overlay\">\n" +
                                                             "<img src=\""+producto.getImg()+"\" class=\"imgdentro\" alt=\"\" />\n" +
"                                                                <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                                <p>"+producto.getNombre()+"</p>\n" +
"                                                                \n" +
                                                                 
                                     
"                                                        </div>\n" +
"                                                     <img src=\"../../imagenes/Inicio/venta.png\" class=\"new\" alt=\"\" />\n" +
"                                                </div>\n" +
"                                        </div>\n" +
"                                        <div class=\"escoger\">\n" +
"                                                <ul class=\"nav nav-pills nav-justified\">\n" +
"                                                        <li><a href=\"../../producto-detalles.jsp?id="+producto.getId()+"\"><i class=\"fa fa-shopping-cart\" aria-hidden=\"true\"></i>Añadir al carrito</a></li>\n" +
"\n" +
"                                                </ul>\n" +
"                                        </div>\n" +
"                                </div>\n" +
"                        </div>";
        }        
        return htmlcode;        
    }
    
    
    public Producto getProducto_m_tacones(int id){
        return new ModeloProducto().getProducto(id);
    }
    public String getProductos_m_deportivas(){
        ModeloProducto_m_deportivas mp = new ModeloProducto_m_deportivas();
        String htmlcode = "";
        for(Producto producto : mp.getAllProductos()){
            htmlcode += "<div class=\"col-sm-4\">                          \n" +
"                                        <div class=\"producto-imagen-wrapper\">                          \n" +
"                                            <div class=\"productos-solo\">                          \n" +
"                                                <div class=\"productoinfo text-center\">                           \n" +
"                                                    <img src=\""+producto.getImg()+"\" alt=\"\" />\n" +
"                                                    <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                    <p>"+producto.getNombre()+"</p>\n" +
"                                                                                                  \n" +
"                                                </div>                                               \n" +
"                                                <div class=\"producto-overlay\">\n" +
"                                                        <div class=\"contenido-overlay\">\n" +
                                                                 "<img src=\""+producto.getImg()+"\" class=\"imgdentro\" alt=\"\" />\n" +
"                                                                <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                                <p>"+producto.getNombre()+"</p>\n" +
"                                                              \n" +
                                                                 
                                     
"                                                        </div>\n" +
"                                                     <img src=\"../../imagenes/Inicio/venta.png\" class=\"new\" alt=\"\" />\n" +
"                                                </div>\n" +
"                                        </div>\n" +
"                                        <div class=\"escoger\">\n" +
"                                                <ul class=\"nav nav-pills nav-justified\">\n" +
"                                                        <li><a href=\"../../producto-detalles.jsp?id="+producto.getId()+"\"><i class=\"fa fa-shopping-cart\" aria-hidden=\"true\"></i>Añadir al carrito</a></li>\n" +
"\n" +
"                                                </ul>\n" +
"                                        </div>\n" +
"                                </div>\n" +
"                        </div>";
        }        
        return htmlcode;        
    }
    
    
    public Producto getProducto_m_deportivas(int id){
        return new ModeloProducto().getProducto(id);
    }
    
    public String getProductos_niños(){
        ModeloProducto_niños mp = new ModeloProducto_niños();
        String htmlcode = "";
        for(Producto producto : mp.getAllProductos()){
            htmlcode += "<div class=\"col-sm-4\">                          \n" +
"                                        <div class=\"producto-imagen-wrapper\">                          \n" +
"                                            <div class=\"productos-solo\">                          \n" +
"                                                <div class=\"productoinfo text-center\">                           \n" +
"                                                    <img src=\""+producto.getImg()+"\" alt=\"\" />\n" +
"                                                    <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                    <p>"+producto.getNombre()+"</p>\n" +
"                                                                                                 \n" +
"                                                </div>                                               \n" +
"                                                <div class=\"producto-overlay\">\n" +
"                                                        <div class=\"contenido-overlay\">\n" +
                                                                  "<img src=\""+producto.getImg()+"\" class=\"imgdentro\" alt=\"\" />\n" +
"                                                                <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                                <p>"+producto.getNombre()+"</p>\n" +
"                                                                \n" +
                                                                 
                                     
"                                                        </div>\n" +
"                                                     <img src=\"../imagenes/Inicio/venta.png\" class=\"new\" alt=\"\" />\n" +
"                                                </div>\n" +
"                                        </div>\n" +
"                                        <div class=\"escoger\">\n" +
"                                                <ul class=\"nav nav-pills nav-justified\">\n" +
"                                                        <li><a href=\"../producto-detalles.jsp?id="+producto.getId()+"\"><i class=\"fa fa-shopping-cart\" aria-hidden=\"true\"></i>Añadir al carrito</a></li>\n" +
"\n" +
"                                                </ul>\n" +
"                                        </div>\n" +
"                                </div>\n" +
"                        </div>";
        }        
        return htmlcode;        
    }
    
    
    public Producto getProducto_niños(int id){
        return new ModeloProducto().getProducto(id);
    }
    
    public String getProductos_niñas(){
        ModeloProducto_niñas mp = new ModeloProducto_niñas();
        String htmlcode = "";
        for(Producto producto : mp.getAllProductos()){
            htmlcode += "<div class=\"col-sm-4\">                          \n" +
"                                        <div class=\"producto-imagen-wrapper\">                          \n" +
"                                            <div class=\"productos-solo\">                          \n" +
"                                                <div class=\"productoinfo text-center\">                           \n" +
"                                                    <img src=\""+producto.getImg()+"\" alt=\"\" />\n" +
"                                                    <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                    <p>"+producto.getNombre()+"</p>\n" +
"                                                                                                  \n" +
"                                                </div>                                               \n" +
"                                                <div class=\"producto-overlay\">\n" +
"                                                        <div class=\"contenido-overlay\">\n" +
                                                             "<img src=\""+producto.getImg()+"\" class=\"imgdentro\" alt=\"\" />\n" +
"                                                                <h2>S/"+producto.getPrecio()+"</h2>\n" +
"                                                                <p>"+producto.getNombre()+"</p>\n" +
"                                                               \n" +
                                                                 
                                     
"                                                        </div>\n" +
"                                                     <img src=\"../imagenes/Inicio/venta.png\" class=\"new\" alt=\"\" />\n" +
"                                                </div>\n" +
"                                        </div>\n" +
"                                        <div class=\"escoger\">\n" +
"                                                <ul class=\"nav nav-pills nav-justified\">\n" +
"                                                        <li><a href=\"../producto-detalles.jsp?id="+producto.getId()+"\"><i class=\"fa fa-shopping-cart\" aria-hidden=\"true\"></i>Añadir al carrito</a></li>\n" +
"\n" +
"                                                </ul>\n" +
"                                        </div>\n" +
"                                </div>\n" +
"                        </div>";
        }        
        return htmlcode;        
    }
    
    
    public Producto getProducto_niñas(int id){
        return new ModeloProducto().getProducto(id);
    }
}

    
    