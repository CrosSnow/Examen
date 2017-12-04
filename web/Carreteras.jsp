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
                    <div class="btn-group-vertical">
                        <a href="actualizarInicio.do" class="btn btn-success">Inicio</a>
                        <a href="busqueda.do" class="btn btn-success">Ver Pedidos</a>
                        <a href="#aiiuuudaaa" class="btn btn-success">Ayuda</a>
                    </div>                    
                </div>
                <div class="col-sm-8">
                    <div style="text-align: center"><h3 class="alert alert-success">Buscar Carreteras</h3></div>                  
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
                    <a href="Carreteras.jsp" class="btn btn-success">Ver Carreteras</a><br><br><br><br>
                    <div class="btn-group-vertical">
                        <a href="#" onclick="Ruta68()" class="btn" style="background-color: #dc3545; color: white">Ruta 68</a>
                        <a href="#" onclick="AutopistaDelSol()" class="btn" style="background-color: #dc3545; color: white">Autopista del Sol</a>
                        <a href="#" onclick="Ruta5()" class="btn" style="background-color: #dc3545; color: white">Ruta 5</a>
                        <a href="#" onclick="AutopistaLosLibertadores()" class="btn" style="background-color: #dc3545; color: white">Autopista los Libertadores</a>
                    </div> 
                </div>
            </div>
        </div>
    </body>
</html>
