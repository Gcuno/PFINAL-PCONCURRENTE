package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author wali
 */
public class Conexion {
                
         String USERNAME = "root";
         String PASSWORD = "izAnT8t3p2";
         private String HOST ="node232611-env-9755009.j.layershift.co.uk";
         private String PORT="3306";
         private String DATABASE="BD-Tienda";
         String CLASSNAME="com.mysql.cj.jdbc.Driver";
         String URL="jdbc:mysql://"+HOST+":"+PORT+"/"+DATABASE+"?serverTimezone=UTC";
         Connection con;
         
         public Conexion(){
             
             try{
                 Class.forName(CLASSNAME);
                 this.con= DriverManager.getConnection(URL,USERNAME,PASSWORD);
             }catch (ClassNotFoundException e){
                 System.err.println("ERROR"+e);
             }
             catch (Exception e){
                 
                 System.err.println("Error"+e);
             }                            
         }
         
         public Connection getConexion(){
             return con;
         }
         
         public static void main(String[] args){
             
             Conexion con =new Conexion();
         }
             public Connection getConnection(){
             
             return this.con;
         }    
}
