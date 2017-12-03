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
                <div class="col-sm-8">
                    <h1>Buscar Carreteras</h1><br>
                    <div id="googleMap" style="width:880px;height:460px;background:gainsboro"></div>
                    <script>
                        function myMap() {
                            var mapProp= {
                                center:new google.maps.LatLng(-33.4029629,-70.7995883), zoom:10
                            };
                            var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
                            }
                        function Ruta68() {
                            var mapProp= {
                                center:new google.maps.LatLng(-33.4557939,-70.7441006), zoom:15
                            };
                            var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
                            }
                        function AutopistaDelSol() {
                            var mapProp= {
                                center:new google.maps.LatLng(-33.6692332,-71.1337503), zoom:15
                            };
                            var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
                        }
                        function Ruta5() {
                            var mapProp= {
                                center:new google.maps.LatLng(-30.7779488,-71.5567073), zoom:15
                            };
                            var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
                        }
                        function AutopistaLosLibertadores() {
                            var mapProp= {
                                center:new google.maps.LatLng(-33.0709447,-70.6970772), zoom:15
                            };
                            var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
                        }
                    </script>
                    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA5LgGM-rTUbyB7lGeNlptf5Fte8Zjk_74&callback=myMap"></script>
                </div>
                <div class="col-sm-2" style="text-align: center">
                    <br>
                    <a href="Carreteras.jsp">Ver Carreteras</a><br><br><br>
                    <a href="#" onclick="Ruta68()">Ruta 68</a><br>
                    <a href="#" onclick="AutopistaDelSol()">Autopista del Sol</a><br>
                    <a href="#" onclick="Ruta5()">Ruta 5</a><br>
                    <a href="#" onclick="AutopistaLosLibertadores()">Autopista los Libertadores</a>
                    
                </div>
            </div>
        </div>
    </body>
</html>
