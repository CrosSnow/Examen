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
    </head>
    <body >
        <div class="row">
            <div class="container-fluid">
                <div class="col-sm-2 panel panel-info">
                    <img src="img/cuadro.png" alt="Logo"><br>
                    <a href="index.jsp">Inicio</a><br>
                    <a href="Busqueda.jsp">Ver Pedidos</a><br>
                    <a href="#aiiuuudaaa">Ayuda</a><br>
                </div>
                <div class="col-sm-8 panel panel-info">
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
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="col-sm-2 panel panel-info">
                    <a href="Carreteras.jsp">Ver Carreteras</a>
                    <br>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="container-fluid">
                <div class="col-sm-4 panel panel-info">
                    <br>
                    <br>
                </div>
                <div class="col-sm-8 panel panel-info">
                    <br>
                </div>
                <div class="col-sm-8 panel panel-info">
                    <br>
                </div>                
            </div>
        </div>
    </body>
</html>
