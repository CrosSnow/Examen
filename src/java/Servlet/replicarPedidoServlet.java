/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.Carretera;
import Model.Compra;
import Model.CompraHelper;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author CrosSnow
 */
public class replicarPedidoServlet extends HttpServlet {

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
        int numPedido = Integer.parseInt(request.getParameter("numPedido"));
        int total = 0;
        String opcionRetiro = null;
        
        List<Compra> listaCompra = null;
        CompraHelper comHelp = new CompraHelper();
        listaCompra = comHelp.obtenerListaPorNumPedido(numPedido);
        int numeroPedido = Math.round((float)Math.random()*10000);
        for (Compra compra : listaCompra) {
            total = (compra.getCantidad()*compra.getPrecioUnitario())+total;
            switch (compra.getOpcionRetiro()) {
                case 1:
                    opcionRetiro = "oficina";
                    break;
                default:
                    opcionRetiro = "envioCliente";
                    break;
            }
            Compra newCompra = new Compra(compra.getCarretera(),
                    compra.getCliente(),
                    numeroPedido,
                    compra.getCantidad(),
                    compra.getPrecioUnitario(),
                    compra.getNombreComprador(),
                    compra.getOpcionPago(),
                    compra.getOpcionRetiro());
            CompraHelper comHelpAux = new CompraHelper();
            comHelpAux.agregarCompra(newCompra);
        }
        List<Compra> listaCompraNueva = null;
        CompraHelper comHelpAux = new CompraHelper();
        listaCompraNueva = comHelpAux.obtenerListaPorNumPedido(numeroPedido);
        request.setAttribute("total", total);
        request.setAttribute("nroPedido", numeroPedido);
        request.setAttribute("listaCompra", listaCompraNueva);
        request.setAttribute("opcionEnvio", opcionRetiro);
        request.getRequestDispatcher("Voucher.jsp").forward(request, response);
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
