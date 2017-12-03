<%-- 
    Document   : Busqueda
    Created on : 01-12-2017, 18:34:36
    Author     : CrosSnow
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buscar Pedidos</title>
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
                <div class="col-lg-8">
                    <br><br><br>
                    <div class="dropdown"><br><br><br>
                        <input class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" value="Rut Cliente" style="width: 500px; text-align: left;">
                        <ul class="dropdown-menu"><br><br><br>
                            <li><a href="#">rut</a></li>
                        </ul>
                        <button type="submit" class="btn btn-info">Buscar</button>
                    </div><br><br><br>
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr class="alert-success">
                                <th>Pedido</th>
                                <th>Total</th>
                                <th>Pedir</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Ruta 68-Ruta del Sol-Ruta Guardia Vieja-Troncal Sur</td>
                                <td>1.500.000</td>
                                <td>[+]</td>
                            </tr>
                        </tbody>
                    </table><br>
                </div>
                <div class="col-sm-2" style="text-align: center">
                    <br>
                    <a href="Carreteras.jsp" class="btn btn-success">Ver Carreteras</a>
                </div>
            </div>
        </div>
    </body>
</html>
