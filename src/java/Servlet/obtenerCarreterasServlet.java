/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.Carretera;
import Model.CarreteraHelper;
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
 * @author CrosSnow
 */
@WebServlet(name = "obtenerCarreterasServlet", urlPatterns = {"/obtenerCarretera.do"})
public class obtenerCarreterasServlet extends HttpServlet {
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion = request.getSession(false);
        if (sesion==null) {
            sesion = request.getSession(true);
        }
        String nombre = request.getParameter("nombreCarretera");
        List<Carretera> lista = (List<Carretera>)sesion.getAttribute("listaCarreteras");
        if (lista==null) {
            lista = new ArrayList<>();
        }
        boolean esta = false;
        
        Carretera car = null;
        CarreteraHelper carHelp = new CarreteraHelper();
        car = carHelp.obtenerCarreteraPorNombre(nombre);
        for (Carretera item : lista) {
            if (item.getIdCarretera().equals(car.getIdCarretera())) {
                esta = true;
            }
        }
        if (!esta) {
            lista.add(car);
        }
        sesion.setAttribute("listaCarreteras", lista);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

}
