<%-- 
    Document   : Carreteras
    Created on : 01-12-2017, 18:34:28
    Author     : CrosSnow
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ver Carreteras</title>
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
                <div class="col-lg-8">
                    <h1>Buscar Carreteras</h1><br>
                    <div id="googleMap" style="width:800px;height:400px;background:gainsboro"></div>
                    <script>
                        function myMap() {
                            var mapProp= {
                                center:new google.maps.LatLng(51.508742,-0.120850), zoom:5
                            };
                            var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
                            }
                    </script>
                    <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY&callback=myMap"></script>
                </div>
                <div class="col-sm-2" style="text-align: center">
                    <br>
                    <a href="Carreteras.jsp">Ver Carreteras</a>
                </div>
            </div>
        </div>
    </body>
</html>
