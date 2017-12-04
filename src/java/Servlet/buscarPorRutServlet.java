/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.Cliente;
import Model.ClienteHelper;
import Model.Compra;
import Model.CompraHelper;
import Model.PedidoCliente;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author CrosSnow
 */
public class buscarPorRutServlet extends HttpServlet {

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
        int rut = Integer.parseInt(request.getParameter("rut"));
        String pedido = "";
        int total = 0;
        List<PedidoCliente> listaCompra = null;
        List<Cliente> listaCliente = null;
        List<Compra> listaPedido = null;
        ClienteHelper cliHelp = new ClienteHelper();
        listaCliente = cliHelp.getAll();
        CompraHelper comHelp = new CompraHelper();
        listaPedido = comHelp.obtenerListaPorRut(rut);
        List<Integer> numPedido = new ArrayList<>();
        int cont = 0;
        for (Compra item : listaPedido) {
            if (numPedido.isEmpty()) {
                numPedido.add(item.getNumeroPedido());
            }else if (numPedido.get(cont)!=item.getNumeroPedido()) {
                numPedido.add(item.getNumeroPedido());
                cont++;
            }
        }
        cont = 0;
        for (Compra item : listaPedido) {
            if (numPedido.get(cont)==item.getNumeroPedido()) {
                pedido = pedido+item.getCarretera().getNombreCarretera()+"-";
                total = (item.getCantidad()*item.getPrecioUnitario())+total;
            }else{
                PedidoCliente newPedido = new PedidoCliente(total, pedido);
                listaCompra.add(newPedido);
                cont++;
                pedido = "";
                total = 0;
                pedido = pedido+item.getCarretera().getNombreCarretera()+"-";
                total = (item.getCantidad()*item.getPrecioUnitario())+total;
            }
        }
        PedidoCliente newPedido = new PedidoCliente(total, pedido);
        listaCompra.add(newPedido);
        
        request.setAttribute("listaCompra", listaCompra);
        request.setAttribute("listaCliente", listaCliente);
        request.getRequestDispatcher("busqueda.jsp").forward(request, response);
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
