/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author wali
 */
public class Pago extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
       String numerotarjeta ,mescaducidad,añocaducidad,codigoseguridad,nombretitular,apellidostitular,documentos,direccion;
       numerotarjeta=request.getParameter("numerotarjeta");
       mescaducidad=request.getParameter("mescaducidad");
         añocaducidad=request.getParameter("añocaducidad");
          codigoseguridad=request.getParameter("codigoseguridad");
           nombretitular=request.getParameter("nombretitular");
            apellidostitular=request.getParameter("apellidostitular");
             documentos=request.getParameter("documentos");
              direccion=request.getParameter("direccion");
              
            request.setAttribute("direccion", request.getParameter("direccion"));
             request.setAttribute("dni", request.getParameter("documentos"));
              request.setAttribute("apellidos", request.getParameter("apellidostitular"));
               request.setAttribute("nombre", request.getParameter("nombretitular"));
                request.setAttribute("codigo", request.getParameter("codigoseguridad"));
                 request.setAttribute("año",request.getParameter("añocaducidad"));
                  request.setAttribute("mes", request.getParameter("mescaducidad"));
                  request.setAttribute("numero", request.getParameter("numerotarjeta"));
                  
                  
              request.getRequestDispatcher("/pago.jsp").forward(request, response);
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
