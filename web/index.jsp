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
            function selectACT(nombre){
                document.getElementById('btn').value=nombre;
                document.getElementById('txtnom').value=nombre;
            }
            
            function calcular(cantidad, precio, cbuffer){
                var total = 0;
                var NumPrecio = parseInt(document.getElementById(precio).value);
                var Buffer = parseInt(document.getElementById(cbuffer).value);
                var NumCantidad = parseInt(document.getElementById(cantidad).value);
                var NumTotal = parseInt(document.getElementById('totalID').value);
                if (NumTotal===0 && NumCantidad===1) {
                    total = NumPrecio;
                }else if(NumTotal>0){
                    if (Buffer<NumCantidad) {
                        total = NumPrecio+NumTotal;
                    }else{
                        total = NumTotal - NumPrecio;
                    }
                }
                document.getElementById('totalID').value=total;
                document.getElementById(cbuffer).value=NumCantidad;
            }
        </script>
    </head>
    <body>
        <br>
        <form action="efectuarCompra.do" method="POST">
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
                    <div class="col-sm-8 panel panel-group panel-info" style="background-color: white">
                        <c:if test="${not empty mensaje}">
                            <h5 class="alert alert-danger">${mensaje}</h5>
                        </c:if>
                        <div style="text-align: center">
                            <h4>Datos Empresa</h4>
                        </div>
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
                                        <input type="text" class="form-control" name="rut" maxlength="9" id="rut" style="width: 300px; height: 28px" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Nombre:
                                    </td>
                                    <td>
                                        <input type="text" class="form-control" name="nombreEmpresa" maxlength="30" id="nomEmp" style="width: 350px; height: 28px" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Direcci&oacute;n:
                                    </td>
                                    <td>
                                        <input type="text" class="form-control" name="direccion" maxlength="50" id="dir" style="width: 450px; height: 28px" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Comprado por:
                                    </td>
                                    <td>
                                        <input type="text" class="form-control" name="nombreComprador" id="nomCom" maxlength="30" style="width: 400px; height: 28px" required>
                                    </td>
                            </tbody>
                        </table>
                        <hr>
                        <p>Seleccione carretera, indique la cantidad y agregue al pedido:</p>
                        <div class="dropdown">
                            <input class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" value="Agregar Carreteras" id="btn" style="width: 500px; text-align: left;">
                            <ul class="dropdown-menu">
                                <li><a href="obtenerCarretera.do?nombreCarretera=Ruta 68">Ruta 68</a></li>
                                <li><a href="obtenerCarretera.do?nombreCarretera=Autopista Del Sol">Autopista Del Sol</a></li>
                                <li><a href="obtenerCarretera.do?nombreCarretera=Autopista Los Libertadores">Autopista Los Libertadores</a></li>
                                <li><a href="obtenerCarretera.do?nombreCarretera=Ruta 5">Ruta 5</a></li>
                            </ul>
                        </div><br>
                    </div>
                    <div class="col-sm-2" style="text-align: center">
                        <br>
                        <a href="Carreteras.jsp" class="btn btn-success">Ver Carreteras</a>
                        <br>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="container-fluid">
                    <div class="col-sm-2">
                        <div class="container">
                            <p><strong>Opciones de pago:</strong></p>                        
                            <div class="radio">
                                <label><input type="radio" name="optPago" id="optPago_1" value="transferencia" checked>Transferencia</label>
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
                            <p><strong>Opciones de Retiro:</strong></p>
                            <div class="radio">
                                <label><input type="radio" name="optRetiro" id="optRetiro_1" value="oficina" checked>Oficina</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" name="optRetiro" id="optRetiro_2" value="envioCliente">Envio Cliente</label>
                            </div>
                        </div>
                        <br><br><br>
                    </div>
                    <div class="col-sm-7">
                        <c:if test="${not empty listaCarreteras}">
                            <table class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr class="alert-success">
                                        <th>Carretera</th>
                                        <th>Cantidad</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                            <c:forEach var="item" items="${listaCarreteras}">
                                <tr>
                                    <td>${item.getNombreCarretera()}</td>
                                    <td> <input type="number" value="0" min="0" style="width: 50px; float: right" name="cantidad${item.getIdCarretera()}" id="${item.getIdCarretera()}" onchange="calcular('${item.getIdCarretera()}', 't${item.getIdCarretera()}', 'c${item.getIdCarretera()}')" contenteditable="false"> </td>
                                    <td> 
                                        <a href="eliminarDeLaLista.do?codigo=${item.getIdCarretera()}"> [ - ] </a> 
                                        <input type="text" id="t${item.getIdCarretera()}" value="${item.getPrecioPeaje()}" style="width: 0px; visibility: hidden">
                                        <input type="text" id="c${item.getIdCarretera()}" value="0" style="width: 0px; visibility: hidden">
                                    </td>
                                </tr>
                            </c:forEach>
                                </tbody>
                            </table>
                        </c:if>
                    </div>          
                    <div class="col-sm-7 row">
                        <div class="input-group">
                            <span class="input-group-addon">Total a pagar: $</span><input type="text" id="totalID" value="0" name="total" readonly class="form-control" style="width: 150px">
                            &nbsp;&nbsp;<button type="submit" class="btn btn-danger" style="width: 150px">Hacer Pedido</button>
                        </div>
                    </div>               
                </div>
            </div>
        </form>
    </body>
</html>
