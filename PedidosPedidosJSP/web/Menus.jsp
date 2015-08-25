<%-- 
    Document   : Menus
    Created on : 25-ago-2015, 11:53:35
    Author     : Alex Pabón
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/Stylesheet.css">
        <link rel="stylesheet" type="text/css" href="css/StyleMenus.css">
        <link rel="stylesheet" type="text/css" href="css/Style-menu-izqbody.css">
        <link rel="icon" href="Imagenes/LogoIcono.ico" type="image/x.icon">
        <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
        <script src="scripts/script-menu-izqbody.js"></script>
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
                <div id="principal">
                    <br>
                    <br>
                    <br>
                    <br>
                    <center>
                        <button type="submit" id="menus"><a id="link" href="MenuAdministrador.jsp">Menú Administrador</a></button> <br>
                        <button type="submit" id="menus"><a id="link" href="MenuEmpleado.jsp">Menú Empleado</a></button> <br>
                        <button type="submit" id="menus"><a id="link" href="MenuCliente.jsp">Menú Cliente</a></button>
                    </center>                    
                </div>
            </div>
            <div id="footer">
                <footer><em> <small>Copyright &copy;2015.Todos los derechos reservados. Almacen "El hueco"</small> </em> </footer>
            </div>
        </div>
    </body>
</html>
