/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author wali
 */
public class Consultas extends Conexion {
    
    public boolean autenticacion(String usuario,String contraseña){
        PreparedStatement pst=null;
        ResultSet rs=null;    
        
        try{
            String consulta ="select * from usuarios where usuario = ? and contraseña = ?";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1,usuario);
            pst.setString(2,contraseña);                                         
            rs = pst.executeQuery();
            
            if(rs.absolute(1)){
                return true;
            }
            
        }catch (Exception e){
            
            System.err.println("Error"+e);
        }finally{
            try{
                if(getConexion() != null) getConexion().close();
                if(pst != null) pst.close();
                if(rs !=null) rs.close();
            }catch (Exception e){
                
            System.err.println("Error"+e);

            }
        }
        
        
        return false;
    }  
        public boolean registrar(String nombre , String apellidos , String usuario , String email , String contraseña){
                
            PreparedStatement pst =null;
            try{
                String consulta ="insert into usuarios(nombre,apellidos,usuario,email,contraseña,nivel)values(?,?,?,?,?,2)";
                    pst =getConexion().prepareStatement(consulta);
                    pst.setString(1, nombre);
                    pst.setString(2, apellidos);
                    pst.setString(3, usuario);
                    pst.setString(4, email);
                    pst.setString(5, contraseña);
                    
                    if(pst.executeUpdate()==1){
                        return true;
                    }
                            
                
            }catch(Exception ex){
                System.err.println("Error" + ex);
            }finally{
                try{
                    if(getConexion() != null) getConexion().close();
                    if(pst != null) pst.close();
                }catch (Exception e){
                    System.err.println("Error" + e);
                }
            }
            
            return false;
        } 
            
        public int loguear(String us,String contra){
            Connection conn;
            PreparedStatement pst;
            ResultSet rs;         
            int nivel=0;
            String sql="select nivel from usuarios where usuario='"+us+"' and contraseña='"+contra+"'";
            try{
                Class.forName(this.CLASSNAME);
                 conn= DriverManager.getConnection(this.URL,this.USERNAME,this.PASSWORD);     
                 pst =conn.prepareStatement(sql);
                 rs= pst.executeQuery();
                 
                 while(rs.next()){
                     nivel=rs.getInt(1);                     
                 }
                 conn.close();
            }catch (ClassNotFoundException | SQLException e){
                
            }
            return nivel;          
        }
            
}
