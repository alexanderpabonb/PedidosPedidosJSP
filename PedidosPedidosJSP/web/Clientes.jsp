<%-- 
    Document   : Clientes
    Created on : 23-ago-2015, 16:32:28
    Author     : Alex Pabón
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/Stylesheet.css">
        <link rel="stylesheet" type="text/css" href="css/StyleClientes.css">
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
                <div id="Cliente">
                    <section>
                        <center><h2>Gestionar Cliente</h2></center>
                        <p>
                            Los campos con (*) son campos obligatorios.</p>
                    </section>
                    <section>
                        <form method="POST" action='clienteController' name="clientes">
                            <label>Tipo Documento:*</label> &nbsp;&nbsp;&nbsp;&nbsp; <select class="form-control" id="TipoDocumento" name="Asunto">
                                <option value> Seleccione</option>
                                <option value> Nit</option>
                                <option value> CC</option>
                                <option value> Cedula extranjera</option>
                            </select> &nbsp;&nbsp;&nbsp;&nbsp;
                            <label>Documento:*</label> &nbsp;&nbsp;&nbsp;&nbsp; <input type="text" id="Documento" name="Documento" required/><br>
                            <div id="separador"></div>
                            <label>Nombres:*</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" id="Nombres" name="Nombres" maxlength="40" pattern="[a-zA-Z]*"/> &nbsp;&nbsp;&nbsp;
                            <label>Apellidos:*</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" id="Apellidos" name="Nombres" placeholder=" "/> <br>
                            <label>Fecha Nacimiento:*</label> &nbsp; <input type="date" id="FechaNacimiento" name="FechaNacimiento"/> &nbsp;&nbsp;&nbsp;
                            <label>Genero:</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select class="form-control" id="TipoDocumento" name="Asunto">
                                <option value> Seleccione</option>
                                <option value> Hombre</option>
                                <option value> Mujer</option>
                            </select> &nbsp;&nbsp;&nbsp;&nbsp;<br>
                            <label>Telefono:*</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" id="Telefono" name="Telefono" placeholder=" "/> &nbsp;&nbsp;&nbsp;
                            <label>Celular:</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" id="Celular" name="Celular" placeholder=" "/> <br>
                            <label>Dirección:*</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" id="Telefono" name="Telefono" placeholder=" "/> &nbsp;&nbsp;&nbsp;
                            <label>Correo:*</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="email" id="Celular" name="Celular" placeholder=" "/> <br>
                            <br>
                            <center>
                                <input type="submit" value="Guardar" name="guardar" id="guardar" class="boton" /> 
                                <input type="submit" value="Modificar" name="modificar" id="modificar" class="boton" /> 
                                <input type="submit" value="Consultar" name="consultar" id="consultar" class="boton" /> 
                                <input type="submit" value="Eliminar" name="eliminar" id="eliminar" class="boton" /> 
                                <input type="reset" value="limpiar" name="limpiar" id="limpiar" class="boton" />
                            </center>
                        </form>
                    </section>
                </div>
            </div>
            <div id="footer">
                <footer><em> <small>Copyright &copy;2015.Todos los derechos reservados. Almacen "El hueco"</small> </em> </footer>
            </div>
        </div>
    </body>
</html>
