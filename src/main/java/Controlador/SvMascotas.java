/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Caninos;
import Modelo.Felinos;
import Modelo.Mascotas;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "SvMascotas", urlPatterns = {"/SvMascotas"})
public class SvMascotas extends HttpServlet {
private static final long serialVersionUID = 1L;
List<Felinos> listaM = new ArrayList<>();
List<Caninos> listaM1 = new ArrayList<>();

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SvMascotas</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SvMascotas at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        HttpSession misesion = request.getSession();
        misesion.setAttribute("listaM", listaM);
        misesion.setAttribute("listaM1", listaM1);
        response.sendRedirect("Mascotas.jsp");
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
        
        String action = request.getParameter("action");
        if ("agregar".equals(action)) {
        int codigo = Integer.parseInt(request.getParameter("codigoF"));
        String tipo = request.getParameter("tipoF");
        String nombre = request.getParameter("nombreF");
        String raza = request.getParameter("razaF");
        String color = request.getParameter("colorF");
        int edad = Integer.parseInt(request.getParameter("edadF"));
        String toxoplasmosis = request.getParameter("toxoplasmosis");
        Felinos mascota = new Felinos(codigo,tipo,nombre,raza,color,edad,toxoplasmosis);
        listaM.add(mascota);
        } 
        else if("agregar1".equals(action)){
        int codigo = Integer.parseInt(request.getParameter("codigoC"));
        String tipo = request.getParameter("tipoC");
        String nombre = request.getParameter("nombreC");
        String raza = request.getParameter("razaC");
        String color = request.getParameter("colorC");
        int edad = Integer.parseInt(request.getParameter("edadC"));
        int nivel = Integer.parseInt(request.getParameter("entrenamiento"));
        Caninos mascota1 = new Caninos(codigo,tipo,nombre,raza,color,edad,nivel);
        listaM1.add(mascota1);
        }
        else if("eliminar".equals(action)){
        String idString = request.getParameter("eliminarF");
        if(idString != null){
            int id = Integer.parseInt(idString);
            for (Felinos mas : listaM){
                if (mas.getCodigo() == id){
                    listaM.remove(mas);
                    request.getRequestDispatcher("Mascotas.jsp").forward(request, response);
                    break;
                }
            }
        }
        }
        else if("eliminar1".equals(action)){
        String idString = request.getParameter("eliminarC");
        if(idString != null){
            int id = Integer.parseInt(idString);
            for (Caninos mas1 : listaM1){
                if (mas1.getCodigo() == id){
                    listaM1.remove(mas1);
                    request.getRequestDispatcher("Mascotas.jsp").forward(request, response);
                    break;
                    
                }
            }
        }
        }
        request.getRequestDispatcher("index.jsp").forward(request, response);
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
