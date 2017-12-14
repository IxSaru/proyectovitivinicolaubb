 [#include "common.ftl" /] [@structure]
 
 <!--
<h1>Inicio</h1>
<p>Esta es la pagina inicio del Proyecto Vitivin&iacute;cola UBB</p>
<ul>
	<li><a href="usuarios/listar.xml"> Listar Usuario </a></li>
	<li><a href="usuarios/ver.xml"> Ver Usuario </a></li>
	<li><a href="cooperados/addcooperado.xml"> Agregar Cooperado </a></li>
	<li><a href="cooperados/listarcooperados.xml"> Listar Cooperados </a></li>
</ul>
-->




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilo.css"/>
        <script type="text/javascript" src="js/cambiarPestanna.js"></script>
        <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
        <title></title>
    </head>
    <body>
        <div class="contenedor">
            <div Align="center" class="titulo">Cooperativa de Vitivinicolas</div>
              <!-- -->
              
              <!-- -->
            <div id="pestanas">
                <ul id=lista>
                    <li id="pestana1"><a href='javascript:cambiarPestanna(pestanas,pestana1);'>Inicio</a></li>
                    <li id="pestana2"><a href='javascript:cambiarPestanna(pestanas,pestana2);'>Productores</a></li>
                    <li id="pestana3"><a href='javascript:cambiarPestanna(pestanas,pestana3);'>Nosotros</a></li>
                    <li id="pestana4"><a href='javascript:cambiarPestanna(pestanas,pestana4);'>Registro</a></li>
                    <li id="pestana5"><a href='javascript:cambiarPestanna(pestanas,pestana5);'>Ingresar Información</a></li>
                </ul>
            </div>

            <body onload="javascript:cambiarPestanna(pestanas,pestana1);">

            <div id="contenidopestanas">
                <div id="cpestana1">
                  Publicidad o alguna información relevante.
                </div>
                <div id="cpestana2">
                  <li><a href="usuarios/ver.xml"> Ver Usuario </a></li>
                </div>
                <div id="cpestana3">
                  Información de la Cooperativa
                </div>
                <div id="cpestana4">
                  <b><h3 id="camposDI">Campos de Informacion</h3></b>
                  <!-- Colocar Formulario -->

                  <form name="i" action="addcooperado.xml" method="POST">
                    <table>
                      <tr>
                        <td>Nombre:</td>
                        <td><input type='text' placeholder="Ingrese su Nombre" name="nombre" required/></td>
                      </tr>
                      <tr>
                        <td>Run:</td>
                        <td><input type='text' placeholder="ej: 12345678-9" id="rut" name="rut" required oninput="checkRut(this)"/></td>
                      </tr>
                     
                      
                      <tr>
                       <td>Vigencia:</td>
                       <td><input type='text' placeholder="Ingrese su contraseña" name="vigente" required></td>
                     </tr>
                     
                     <tr>
                      <td><input type="submit" id="validaRut" value="Registrar"></td>
                      <td><input type="Reset" value="Borrar"></td>
                     </tr>
                    </table>
                  </form>
                  <!-- -->
                </div>


                <div id="cpestana5">
                  <b><h3 id="camposDI">Campos de Informacion</h3></b>
                  <!-- Colocar Formulario -->

                  <b><h4>Información Adicional Usuario</h4></b>
                  <form name="f" method="POST">
                    <table>
                      <tr>
                        <td>Telefono Privado:</td>
                        <td><input type='number' min="944444444" max="999999999" name="tel" placeholder="987654321" required></td>
                      </tr>
                     <tr>
                      <td><input type="submit" value="Enviar información"></td>
                      <td><input type="Reset" value="Borrar"></td>
                     </tr>
                    </table>
                  </form>

                  <b><h4>Dirección</h4></b>
                  <form name="f" method="POST">
                    <table>
                      <tr>
                        <td>Calle o Avenida:</td>
                        <td><input type='text' placeholder="ej. calle uno" required/></td>
                      </tr>
                      <tr>
                        <td>Número:</td>
                        <td><input type='number' placeholder="ingrese el número" required/></td>
                      </tr>
                      <tr>
                        <td>Ciudad:</td>
                        <td><input type='text' placeholder="ej: Chillán" required/></td>
                      </tr>
                     <tr>
                      <td><input type="submit" value="Enviar información"></td>
                      <td><input type="Reset" value="Borrar"></td>
                     </tr>
                    </table>
                  </form>

                  <!-- Viña -->

                  <b><h4>Viña</h4></b>
                  <form name="f" method="POST">
                    <table>
                      <tr>
                        <td>Nombre:</td>
                        <td><input type='text' name="nombreV" placeholder="Ingrese el nombre de la viña" required/></td>
                      </tr>
                      <tr>
                        <td>Rut:</td>
                        <td><input type='text' name="rutV" placeholder="12345678-9" required oninput="checkRut(this)"/></td>
                      </tr>
                      <tr>
                        <td>Telefono Viña:</td>
                        <td><input type='number' name="tel" placeholder="987654321" required min="944444444" max="999999999"/></td>
                      </tr>
                     <tr>
                      <td><input type="submit" value="Enviar información"></td>
                      <td><input type="Reset" value="Borrar"></td>
                     </tr>
                    </table>
                  </form>

                  <b><h4>Premios</h4></b>
                  <form name="f" method="POST">
                    <table>
                      <tr>
                          <select name="Premios">
                           <option value="1">Premio 1</option>
                           <option value="2">Premio 2</option>
                           <option value="3">Premio 3</option>
                           <option value="10">Premio 4</option>
                           <option value="11">Premio 5</option>
                           <option value="12">Premio 6</option>
                        </select>
                      </tr>
                     <tr>
                      <td><input type="submit" value="Enviar información"></td>
                      <td><input type="Reset" value="Borrar"></td>
                     </tr>
                    </table>
                  </form>

                  <!-- -->
                </div>
            </div>
        </div>
    </body>
</html>



[/@structure]
