<%-- 
    Document   : PaginaPrincipal
    Created on : 23-ago-2015, 16:02:42
    Author     : Alex Pabón
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <link rel="stylesheet" type="text/css" href="css/Stylesheet.css">
        <link rel="stylesheet" type="text/css" href="css/StylePaginaPrincipal.css">
        <link rel="stylesheet" type="text/css" href="css/StyleSlider.css">
        <link rel="icon" href="Imagenes/LogoIcono.ico" type="image/x.icon">
        <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js' type='text/javascript'/>
        <script></script>
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
                <section>
                    <div id="TextoPrincipal">
                        
                        <script>
                                $(function(){
                                    $('#slider a:gt(0)').hide();
                                    var interval = setInterval(changeDiv, 3000);
                                    function changeDiv(){
                                        $('#slider a:first-child').fadeOut(1000).next('a').fadeIn(1000).end().appendTo('#slider');
                                    };
                                    $('.mas').click(function(){
                                        changeDiv();
                                        clearInterval(interval);
                                        interval = setInterval(changeDiv, 3000);
                                    });
                                    $('.menos').click(function(){
                                        $('#slider a:first-child').fadeOut(1000);
                                        $('#slider a:last-child').fadeIn(1000).prependTo('#slider');
                                        clearInterval(interval);
                                        interval = setInterval(changeDiv, 3000);
                                    });
                                });
                            </script>
                            
                        <div id="slider-wrapper">
                            <div id="slider">
                                <a href="URL_ENLACE1" id="imag"><img src="Imagenes/almacen1.jpg"/></a>
                                <a href="URL_ENLACE2" id="imag"><img src="Imagenes/almacen2.jpg"/></a>
                                <a href="URL_ENLACE3" id="imag"><img src="Imagenes/almacen3.jpg"/></a>
                            </div>
                            <a href="javascript:void();" class="mas">&rsaquo;</a>
                            <a href="javascript:void();" class="menos">&lsaquo;</a>
                        </div>                        
                    </div>
                    <div id="InicioSesion">
                        <article>
                            <hgroup>
                                <h1>Inicio de sesión</h1>
                            </hgroup>
                            <form method="get" action="accion.html">
                                <label>Usuario: </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" id="idUsuario" name="idUsuario" placeholder="Usuario"/>
                                <label>Contraseña: </label> &nbsp;&nbsp; <input type="password" id="clave" name="clave" placeholder="Contraseña"/><br>
                                <br>
                                <a href="RecordarClave.jsp">¿Olvido su contraseña?</a> <br>
                                <button type="submit"><a id="link" href="Menus.jsp">Ingresar</a></button> <button type="submit"><a id="link" href="Clientes.jsp"> Registrarse</a></button>
                            </form>
                        </article>
                    </div>
                    <br>
                    <div id="Siguenos">
                        <article>
                            <hgroup>
                                <h1>Síguenos en:</h1>
                            </hgroup>
                            <a href="https://www.facebook.com/huecoppi"><img src="Imagenes/facebook.png" height="46" width="50"></a>
                            <a href="www.twitter.com"><img src="Imagenes/twitter.png" height="46" width="50"></a>
                            <a href="https://www.youtube.com/channel/UCuVeyaTO3P-iob3tr0ssmHA/feed"><img src="Imagenes/youtube.png" height="46" width="50"></a>
                        </article>
                    </div>
                </section>
            </div>
            <div id="footer">
                <footer><em> <small>Copyright &copy;2015.Todos los derechos reservados. Almacen "El hueco"</small> </em> </footer>
            </div>
        </div>
    </body>
</html>
