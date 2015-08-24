<%-- 
    Document   : Contactenos
    Created on : 23-ago-2015, 20:13:04
    Author     : Alex Pabón
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/Stylesheet.css">
        <link rel="stylesheet" type="text/css" href="css/StyleContactenos.css">
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
                            <li><a href="Promociones.html"><strong><em>Promociones</em></strong></a>
                            <li><a href="Contactenos.jsp"><strong><em>Contáctenos </em></strong></a></li>
                        </ul>
                    </nav>
                </header>
                <div id="Informacion">
                    <h2>Información de Contácto</h2>
                    <label>Telefono: </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(+57) 444-15-18 <br> <br>
                    <label>Dirección: </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Calle 38# 30-15 <br> <br>
                    <label>Correo: </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="email">almacenelhueco@gmail.com</a> <br> <br>
                    <label>Pagina web: </label> &nbsp;<a href="web">www.almacenelhueco.com</a> <br> <br>
                    <label>Ubicación: </label> &nbsp;&nbsp;&nbsp; <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.188063773984!2d-75.57239129999996!3d6.2389265000000105!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e442852973b1d2d%3A0x4827b7877f3d2b66!2sCl.+38+%2350-30%2C+Medell%C3%ADn%2C+Antioquia%2C+Colombia!5e0!3m2!1ses-419!2s!4v1440390524407" width="250" height="200" frameborder="0" style="border:0" allowfullscreen></iframe>
                    <div id="rutas">
                        <label>Siguenos en:</label><br>
                        <br>
                        <a href="https://www.facebook.com/huecoppi"><img src="Imagenes/facebook.png" height="46" width="50"></a><br>
                        <a href="www.twitter.com"><img src="Imagenes/twitter.png" height="46" width="50"></a><br>
                        <a href="https://www.youtube.com/channel/UCuVeyaTO3P-iob3tr0ssmHA/feed"><img src="Imagenes/youtube.png" height="46" width="50"></a>
                    </div>
                </div>
                <div id="MensajeContacto">
                    <h2>Contáctenos</h2>
                    <label>Nombre completo: </label> &nbsp;&nbsp;&nbsp;&nbsp; <input type="text" id="NombreCompleto" name="NombreCompleto" placeholder=" "/> <br>
                    <label>Correo: </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="email" id="Correo" name="Correo" placeholder=" "/> <br>
                    <label>Asunto: </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select class="form-control" id="Asunto" name="Asunto">
                        <option value> Seleccione </option>
                        <option value> Solicitud</option>
                        <option value> Queja o Reclamo</option>
                        <option value> Felicitación</option>
                        <option value> Sugerencia</option>
                    </select>&nbsp;&nbsp; <br>
                    <label>Mensaje: </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <textarea class="form-control" name="Mensaje" id="MensajeTexarea"> </textarea> <br><br>
                    <label>Calificación: </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0<input type="range" name="points" min="0" max="5">5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
                    <button type="submit">Enviar</button>
                </div>
            </div>
            <div id="footer">
                <footer><em> <small>Copyright &copy;2015.Todos los derechos reservados. Almacen "El hueco"</small> </em> </footer>
            </div>
        </div>
    </body>
</html>
