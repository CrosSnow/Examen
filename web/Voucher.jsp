<%-- 
    Document   : Voucher
    Created on : 01-12-2017, 18:34:11
    Author     : CrosSnow
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Voucher</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <br>
        <div class="row">
            <div class="container-fluid">
                <div class="col-sm-2" style="text-align: center">
                    <br>
                    <img src="img/cuadro.png" alt="Logo" style="width: 100px; height: 100px"><br><br>
                    <div class="btn-group-vertical">
                        <a href="actualizarInicio.do" class="btn btn-success">Inicio</a>
                        <a href="busqueda.do" class="btn btn-success">Ver Pedidos</a>
                        <a href="#aiiuuudaaa" class="btn btn-success">Ayuda</a>
                    </div>           
                </div>
                <br>
                <div class="col-lg-8">
                    <br><br><br>
                    <h4>Pedido Número: ${nroPedido}</h4><br>
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr class="alert-success">
                                <th>Carretera</th>
                                <th>Cantidad</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="item" items="${listaCompra}">
                                <tr>
                                    <td>${item.getCarretera().getNombreCarretera()}</td>
                                    <td>${item.getCantidad()}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table><br>
                    <h3>Total a pagar: ${total}</h3><br>
                    <h5>Opción de envío: ${opcionEnvio}</h5><br><br>
                    <div style="text-align: center">
                        <br>
                        <h6>Muchas gacias por preferirnos</h6>
                    </div>
                    
                </div>
                <div class="col-sm-2" style="text-align: center">
                    <a href="Carreteras.jsp" class="btn btn-success">Ver Carreteras</a>
                </div>
            </div>
        </div>
    </body>
</html>
