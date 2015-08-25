<%-- 
    Document   : UsuariosNuevos
    Created on : 24-ago-2015, 22:58:14
    Author     : Alex Pabón
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/Stylesheet.css">
        <link rel="stylesheet" type="text/css" href="css/StyleUsuariosNuevos.css">
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
                            <li><a href="Promociones.html"><strong><em>Promociones</em></strong></a>
                            <li><a href="Contactenos.jsp"><strong><em>Contáctenos </em></strong></a></li>
                        </ul>
                    </nav>
                </header>
                <div id="principal">
                    <div id="menuprin">
                        <div id="menu-izqbody" class="btn-group-vertical" role="group" aria-label="...">
                            <ul>
                                <li><a href="MenuAdministrador.jsp"><strong><em>Inicio</em></strong></a></li>
                                <li><a href="#"><strong><em>Archivo</em></strong></a>
                                    <ul id="menu-izqlist">
                                        <li><a href="#">Usuarios Nuevos</a></li>
                                        <li><a href="#">Registrar Usuarios</a></li>
                                        <li><a href="#">Clientes</a></li>
                                        <li><a href="Empleados.jsp">Empleados</a></li>
                                        <li><a href="#">Proveedores</a></li>
                                        <li><a href="#">Productos</a></li>
                                        <li><a href="#">Insumos</a></li>
                                    </ul> </li>       
                                <li><a href="#"><strong><em>Maestro</em></strong></a>
                                    <ul id="menu-izqlist">
                                        <li><a href="#">Municipios</a></li>
                                        <li><a href="#">Departamentos</a></li>
                                        <li><a href="#">Marcas</a></li>
                                        <li><a href="#">Categorias</a></li>
                                    </ul> </li>
                                <li><a href="#"><strong><em>Movimientos</em></strong></a>
                                    <ul id="menu-izqlist">
                                        <li><a href="#">Pedidos</a></li>
                                        <li><a href="#">Facturas</a></li>
                                    </ul>
                                <li><a href="Promociones.html"><strong><em>Reportes</em></strong></a>
                                    <ul id="menu-izqlist">
                                        <li><a href="#">Usuarios Nuevos</a></li>
                                        <li><a href="#">Registrar Usuarios</a></li>
                                        <li><a href="#">Clientes</a></li>
                                        <li><a href="#">Empleados</a></li>
                                        <li><a href="#">Proveedores</a></li>
                                        <li><a href="#">Productos</a></li>
                                        <li><a href="#">Insumos</a></li>
                                        <li><a href="#">Pedidos</a></li>
                                        <li><a href="#">Facturas</a></li>
                                    </ul> </li>
                                <li><a href="#"><strong><em>Ayuda </em></strong></a>
                                    <ul id="menu-izqlist">
                                        <li><a href="#">Manual de Usuario</a></li>
                                        <li><a href="#">Preguntas Frecuentes</a></li>
                                    </ul> </li>
                            </ul>
                        </div>
                        <div id="menu-izqbottom"></div>
                    </div>
                    <div id="UsuariosNuevos">

                    </div>                    
                </div>
            </div>
            <div id="footer">
                <footer><em> <small>Copyright &copy;2015.Todos los derechos reservados. Almacen "El hueco"</small> </em> </footer>
            </div>
        </div>
    </body>
</html>
