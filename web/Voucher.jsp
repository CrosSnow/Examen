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
                    <div class="btn-group-vertical">
                        <a href="actualizarInicio.do" class="btn btn-success">Inicio</a>
                        <a href="Busqueda.jsp" class="btn btn-success">Ver Pedidos</a>
                        <a href="#aiiuuudaaa" class="btn btn-success">Ayuda</a>
                    </div>           
                </div>
                <br>
                <div class="col-lg-8">
                    <br><br><br>
                    <h4>Pedido Número:</h4><br>
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
                    </table><br>
                    <h3>Total a pagar:</h3><br>
                    <h5>Opción de envío:</h5><br><br>
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
