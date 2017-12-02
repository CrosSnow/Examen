<%-- 
    Document   : index
    Created on : 29-11-2017, 13:44:48
    Author     : CrosSnow
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina Principal</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/_common.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script>
            function cambiarSelect(opcion){
                document.getElementById("btn").value="opcion";
            }
        </script>
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
                <div class="col-sm-8 panel panel-group panel-info" style="background-color: white">
                    <h4>Datos Empresa</h4>
                    
                    <table class="tableC table-condensed">
                        <thead>
                            <tr>
                                <th style="width: 110px"></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    Rut:
                                </td>
                                <td>
                                    <input type="text" class="form-control" style="width: 300px; height: 25px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Nombre:
                                </td>
                                <td>
                                    <input type="text" class="form-control" style="width: 350px; height: 25px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Direcci&oacute;n:
                                </td>
                                <td>
                                    <input type="text" class="form-control" style="width: 450px; height: 25px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Comprado por:
                                </td>
                                <td>
                                    <input type="text" class="form-control" style="width: 400px; height: 25px">
                                </td>
                        </tbody>
                    </table>
                    <hr>
                    <p>Seleccione carretera, indique la cantidad y agregue al pedido:</p>
                    <div class="dropdown">
                        <input class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" value="Carreteras" id="btn" style="width: 500px; text-align: left;">
                        <ul class="dropdown-menu">
                          <li><a href="#" onclick="document.getElementById('btn').value='Ruta 68'">Ruta 68</a></li>
                          <li><a href="#" onclick="document.getElementById('btn').value='Del Sol'">Del Sol</a></li>
                          <li><a href="#" onclick="document.getElementById('btn').value='Guardia Vieja'">Guardia Vieja</a></li>
                          <li><a href="#" onclick="document.getElementById('btn').value='Troncal Sur'">Troncal Sur</a></li>
                        </ul>
                        <button type="submit" class="btn btn-info">Agregar</button>
                    </div><br>
                </div>
                <div class="col-sm-2" style="text-align: center">
                    <br>
                    <a href="Carreteras.jsp">Ver Carreteras</a>
                    <br>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="container-fluid">
                <div class="col-sm-2">
                    <div class="container">
                        <p>Opciones de pago: </p>
                        <div class="radio">
                            <label><input type="radio" name="optPago" id="optPago_1" value="transferencia">Transferencia</label>
                        </div>
                        <div class="radio">
                            <label><input type="radio" name="optPago" id="optPago_2" value="pagoLinea">Pago en Linea</label>
                        </div>
                        <div class="radio">
                            <label><input type="radio" name="optPago" id="optPago_3" value="ordenCompra">Orden de Compra</label>
                        </div>
                    </div>
                    <br>
                    <div class="container">
                        <p>Opciones de Retiro: </p>
                        <div class="radio">
                            <label><input type="radio" name="optRetiro" id="optRetiro_1" value="oficina">Oficina</label>
                        </div>
                        <div class="radio">
                            <label><input type="radio" name="optRetiro" id="optRetiro_2" value="envioCliente">Envio Cliente</label>
                        </div>
                    </div>
                    <br><br><br>
                </div>
                <div class="col-sm-7 panel panel-info">
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr class="alert-success">
                                <th>Carretera</th>
                                <th>Cantidad</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr id="ruta68" style="visibility: hidden">
                                <td>Ruta 68</td>
                                <td> <input type="number" value="1"  style="width: 50px; float: right"> </td>
                                <td> <a href="#"> [-] </a> </td>
                            </tr>
                            <tr id="rutaSol" style="visibility: hidden">
                                <td>Ruta Del Sol</td>
                                <td> <input type="number" value="1"  style="width: 50px; float: right"> </td>
                                <td> <a href="#"> [-] </a> </td>
                            </tr>
                            <tr id="guardiaVieja" style="visibility: hidden">
                                <td>Ruta Guardia Vieja</td>
                                <td> <input type="number" value="1"  style="width: 50px; float: right"> </td>
                                <td> <a href="#"> [-] </a> </td>
                            </tr>
                            <tr id="troncalSur" style="visibility: hidden">
                                <td>Troncal Sur</td>
                                <td> <input type="number" value="1"  style="width: 50px; float: right"> </td>
                                <td> <a href="#"> [-] </a> </td>
                            </tr>
                        </tbody>
                    </table>
                </div>             
                <div class="col-sm-7 panel panel-info">
                    <div class="container">
                        <strong>Total a Pagar: </strong>$1.500.000  
                        <button type="submit" class="btn btn-info">Hacer Pedido</button>
                    </div>
                </div>               
            </div>
        </div>
    </body>
</html>
