<%-- 
    Document   : Voucher
    Created on : 01-12-2017, 18:34:11
    Author     : CrosSnow
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <br>
        <div class="row">
            <div class="container-fluid">
                <div class="col-sm-2" style="text-align: center">
                    <br>
                    <img src="img/cuadro.png" alt="Logo" style="width: 100px; height: 100px"><br><br>
                    <a href="index.jsp">Inicio</a><br>
                    <a href="Busqueda.jsp">Ver Pedidos</a><br>
                    <a href="#aiiuuudaaa">Ayuda</a><br>
                </div>
                <br>
                <div class="col-lg-8">
                    <br>
                    <h4>Pedido Número:</h4>
                    <br>
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr class="alert-success">
                                <th>Carretera</th>
                                <th>Cantidad</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Ruta 68</td>
                                <td>20</td>
                            </tr>
                        </tbody>
                    </table>
                    <br>
                    <h3>Total a pagar:</h3>
                    <br>
                    <h4>Opción de envío</h4>
                </div>
                <div class="col-sm-2" style="text-align: center">
                    <br>
                    <a href="Carreteras.jsp">Ver Carreteras</a>
                </div>
            </div>
        </div>
    </body>
</html>
