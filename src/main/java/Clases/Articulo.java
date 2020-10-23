/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author wali
 */
public class Articulo {
    
    private int idProducto;
    private int cantidad;
    private String idnombre;
    private String idimagen;
    private String idprecio;
    private String idtotal;

    public Articulo(int idProducto, int cantidad) {
        this.idProducto = idProducto;
        this.cantidad = cantidad;
    }

    public Articulo(String idnombre, String idimagen, String idprecio, String idtotal) {
        this.idnombre = idnombre;
        this.idimagen = idimagen;
        this.idprecio = idprecio;
        this.idtotal = idtotal;
    }

    /**
     * @return the idProducto
     */
    public int getIdProducto() {
        return idProducto;
    }

    /**
     * @param idProducto the idProducto to set
     */
    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    /**
     * @return the cantidad
     */
    public int getCantidad() {
        return cantidad;
    }

    /**
     * @param cantidad the cantidad to set
     */
    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    /**
     * @return the idnombre
     */
    public String getIdnombre() {
        return idnombre;
    }

    /**
     * @param idnombre the idnombre to set
     */
    public void setIdnombre(String idnombre) {
        this.idnombre = idnombre;
    }

    /**
     * @return the idimagen
     */
    public String getIdimagen() {
        return idimagen;
    }

    /**
     * @param idimagen the idimagen to set
     */
    public void setIdimagen(String idimagen) {
        this.idimagen = idimagen;
    }

    /**
     * @return the idprecio
     */
    public String getIdprecio() {
        return idprecio;
    }

    /**
     * @param idprecio the idprecio to set
     */
    public void setIdprecio(String idprecio) {
        this.idprecio = idprecio;
    }

    /**
     * @return the idtotal
     */
    public String getIdtotal() {
        return idtotal;
    }

    /**
     * @param idtotal the idtotal to set
     */
    public void setIdtotal(String idtotal) {
        this.idtotal = idtotal;
    }
    
    
}
