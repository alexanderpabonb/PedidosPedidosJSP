<%-- 
    Document   : RecordarClave
    Created on : 23-ago-2015, 20:30:39
    Author     : Alex Pabón
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <link rel="stylesheet" type="text/css" href="css/Stylesheet.css">
        <link rel="stylesheet" type="text/css" href="css/StyleRecordarClave.css">
        <link rel="icon" href="Imagenes/LogoIcono.ico" type="image/x.icon">
        <title>Pedidos más Pedidos</title>
    </head>
    <body>
        <div id="SuperCuadro">
            <div id="Contenido">
                <header>
                    <img id="logo" src="Imagenes/Logoo3.png"  width="250" height="200">
                    <nav>
                        <ul id="menu">
                            <li><a href="PaginaPrincipal.jsp"><strong><em>Inicio</em></strong></a></li>
                            <li><a href="#"><strong><em>Nuestra compañia</em></strong></a>
                                <ul id="sub-menu">
                                    <li><a href="MisionVision.jsp">Misión y Visión</a></li>
                                    <li><a href="Historia.jsp">Historia</a></li>
                                </ul>
                            </li>
                            <li><a href="#"><strong><em>Catálogo</em></strong></a>
                                <ul id="sub-menu">
                                    <li><a href="#">Alcoba</a></li>
                                    <li><a href="#">Cocina</a></li>
                                    <li><a href="#">Escolar</a></li>
                                    <li><a href="#">Hogar</a></li>
                                    <li><a href="#">Otros</a></li>
                                </ul>
                            <li><a href="#"><strong><em>Promociones</em></strong></a>
                            <li><a href="Contactenos.jsp"><strong><em>Contáctenos </em></strong></a></li>
                        </ul>
                    </nav>
                </header>
                <div id="RecordarClave">
                    <center><h2>Recordar contraseña:</h2></center>
                    <p>Ingrese su correo personal y a continuacion le será enviada la nueva contraseña.</p>
                    <center><label>Correo:</label> <input type="email" name="Correo" id="Correo"> </center> <br>
                    <center> <button type="submit" value="Enviar">Enviar</button> <button type="reset" > Limpiar</button> </center>
                </div>
            </div>
            <div id="footer">
                <footer><em> <small>Copyright &copy;2015.Todos los derechos reservados. Almacen "El hueco"</small> </em> </footer>
            </div>
        </div>
    </body>
</html>
