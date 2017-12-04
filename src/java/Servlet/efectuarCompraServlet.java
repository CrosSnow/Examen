/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.Carretera;
import Model.Cliente;
import Model.ClienteHelper;
import Model.Compra;
import Model.CompraHelper;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author CrosSnow
 */
public class efectuarCompraServlet extends HttpServlet {

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
        HttpSession sesion = request.getSession(false);
        
        String nombreEmpresa = request.getParameter("nombreEmpresa").trim();
        String rutTXT = request.getParameter("rut").trim();
        String nombreComprador = request.getParameter("nombreComprador").trim();
        String direccion = request.getParameter("direccion").trim();
        String opPago = request.getParameter("optPago");
        String opRetiro = request.getParameter("optRetiro");
        List<Carretera> lista = (List<Carretera>)sesion.getAttribute("listaCarreteras");
        int[] cantidades = new int[lista.size()];
        String totalTXT = request.getParameter("total");
        List<String> mensajes = new ArrayList<>();
        
        if (nombreComprador.isEmpty()||
                nombreEmpresa.isEmpty()||
                rutTXT.isEmpty()||
                direccion.isEmpty()) {
            mensajes.add("Los campos no pueden estar vacios");
        }
        int cont = 0;
        if (!lista.isEmpty()) {
            for (Carretera item : lista) {
                String cantidad = request.getParameter("cantidad"+item.getIdCarretera());
                if (cantidad.equals("0")) {
                    mensajes.add("Falto agregar una cantidad en: "+item.getNombreCarretera());
                }
                cantidades[cont] = Integer.parseInt(cantidad);
                cont++;
            }
        }else{
            mensajes.add("Debe seleccionar al menos una carretera");
        }
        int rut = 0, opP, opR;
        try {
            rut = Integer.parseInt(rutTXT);
        } catch (NumberFormatException e) {
            mensajes.add("Rut debe ser un número");
        }
        switch (opPago) {
            case "transferencia":
                opP=1;
                break;
            case "pagoLinea":
                opP = 2;
                break;
            default:
                opP = 3;
                break;
        }
        switch (opRetiro) {
            case "oficina":
                opR=1;
                break;
            default:
                opR = 2;
                break;
        }

        ClienteHelper clientHelp = new ClienteHelper();
        Cliente oldCliente = clientHelp.getClientePorRut(rut);
        if (oldCliente==null) {
            if (mensajes.isEmpty()) {
                Cliente newCliente = new Cliente(rut, nombreEmpresa, direccion);
                ClienteHelper clientHelpAux = new ClienteHelper();
                clientHelpAux.AgregarCliente(newCliente);
                cont = 0;
                int numeroPedido = Math.round((float)Math.random()*10000);
                for (Carretera item : lista) {
                    Compra newCompra = new Compra(item, newCliente, numeroPedido, cantidades[cont], item.getPrecioPeaje(), nombreComprador, opP, opR);
                    CompraHelper comHelp = new CompraHelper();
                    comHelp.agregarCompra(newCompra);
                    cont++;
                }
                CompraHelper comHelp = new CompraHelper();
                List<Compra> listaCompra = comHelp.obtenerListaPorNumPedido(numeroPedido);
                int total = Integer.parseInt(totalTXT);
                request.setAttribute("total", total);
                request.setAttribute("nroPedido", numeroPedido);
                request.setAttribute("listaCompra", listaCompra);
                request.setAttribute("opcionEnvio", opRetiro);
                request.getRequestDispatcher("Voucher.jsp").forward(request, response);
            }else{
                request.setAttribute("mensajes", mensajes);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        }else{
            if (mensajes.isEmpty()) {
                cont = 0;
                int numeroPedido = Math.round((float)Math.random()*10000);
                for (Carretera item : lista) {
                    Compra newCompra = new Compra(item, oldCliente, numeroPedido, cantidades[cont], item.getPrecioPeaje(), nombreComprador, opP, opR);
                    CompraHelper comHelp = new CompraHelper();
                    comHelp.agregarCompra(newCompra);
                }
                CompraHelper comHelp = new CompraHelper();
                List<Compra> listaCompra = comHelp.obtenerListaPorNumPedido(numeroPedido);
                int total = Integer.parseInt(totalTXT);
                request.setAttribute("total", total);
                request.setAttribute("nroPedido", numeroPedido);
                request.setAttribute("listaCompra", listaCompra);
                request.setAttribute("opcionEnvio", opRetiro);
                request.getRequestDispatcher("Voucher.jsp").forward(request, response);
            }else{
                request.setAttribute("mensajes", mensajes);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
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
