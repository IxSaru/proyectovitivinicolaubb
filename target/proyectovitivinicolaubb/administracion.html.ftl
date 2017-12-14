<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/estilo.css"/>
  	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
  	<script type="text/javascript" src="js/cambiarPestanna.js"></script>
</head>
<body onload="miF()">
	<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
	<div class="contenedor">
		<div class="titulo">Seccion de Administracion de la Aplicacion</div> 
		<img src ="http://4.bp.blogspot.com/-cJ0yeWTqqJI/U5RpoazD90I/AAAAAAAAQKg/TK2N57bhRCc/s1600/conoce_banner.png" width ="1000" height ="200" alt ="admin">
		<div id="pestanas">
                <ul id="lista">
                    <li id="pestana1"><a href='javascript:cambiarPestanna(pestanas,pestana1);'>Ingresar Noticia</a></li>
                    <li id="pestana2"><a href='javascript:cambiarPestanna(pestanas,pestana2);'>Modificar Noticia</a></li>
                    <li id="pestana3"><a href='javascript:cambiarPestanna(pestanas,pestana3);'>Eliminar Noticia</a></li>
                    <li id="pestana4"><a href='javascript:cambiarPestanna(pestanas,pestana4);'>Ingresar Indicador</a></li>
                    <li id="pestana5"><a href='javascript:cambiarPestanna(pestanas,pestana5);'>Modificar Indicador</a></li>
                    <li id="pestana6"><a href='javascript:cambiarPestanna(pestanas,pestana6);'>Eliminar Indicador</a></li>
                </ul>
        </div> 
        <div id="contenidopestanas">
        
        	<div id="cpestana1">  
        	|<form  action="./noticias/insertarnoticia.xml" method="POST">
        		<p>prueba: <span  id="prueba"></span></p>
        		<tr> 
        			<td>ID:</td>  <br>
        			
					<td><input type='number' name="id_noticia" id="id_noticia" value='' /></td> <br>
				</tr>   
				<tr> 
					<td>TITULO:</td><br>
					<td><input type='text' name="titulo" id="titulo" value='' /></td> <br> 
				</tr>  
				<tr> 
					<td>FUENTE:</td><br>
					<td><input type='text' name="fuente" id="fuente" value='' /></td> <br> 
				</tr>  
				<tr> 
					<td>AUTOR:</td><br>
					<td><input type='text' name="nombre_autor" id="autor" value='' /></td> <br> 
				</tr> 
				<tr>  
				<tr> 
					<td>FECHA PUBLICACION:</td><br>
					<td><input type='date' id="fecha" value='' /></td> <br> 
				</tr> 
					<td>CUERPO:</td><br>
					<textarea name="cuerpo" id="cuerpo" rows="20" cols="40"></textarea><br>
				</tr>  
				<tr> 
					<td>TAG1:</td><br>
					<td><input type='text' id="tag1" value='' /></td> <br> 
				</tr>  
				<tr> 
					<td>TAG2:</td><br>
					<td><input type='text' id="tag2" value='' /></td> <br> 
				</tr>  
				<tr> 
					<td>TAG3:</td><br>
					<td><input type='text' id="tag3" value='' /></td> <br> <br> 
				</tr> 
				<tr>
						<td colspan='2'><input id="enviari" type="submit"></td>
				</tr> 
			  </form> 		
            </div> 
           
            <div id="cpestana2"> 
				<tr> 
        			<td>ID de la noticia que se modificara:</td>  <br>
        			
					<td><input type='number' id="idm" value='' /></td> <br>
				</tr>   
				<tr> 
					<td>TITULO:</td><br>
					<td><input type='text' id="titulom" value='' /></td> <br> 
				</tr>  
				<tr> 
					<td>FUENTE:</td><br>
					<td><input type='text' id="fuentem" value='' /></td> <br> 
				</tr>  
				<tr> 
					<td>AUTOR:</td><br>
					<td><input type='text' id="autorm" value='' /></td> <br> 
				</tr> 
				<tr> 
					<td>FECHA PUBLICACION:</td><br>
					<td><input type='date' id="fecham" value='' /></td> <br> 
				</tr>  
				<tr> 
					<td>CUERPO:</td><br>
					<textarea id="cuerpom" rows="20" cols="40"></textarea><br>
				</tr>   
				<tr> 
					<td>TAG1:</td><br>
					<td><input type='text' id="tag1m" value='' /></td> <br> 
				</tr>  
				<tr> 
					<td>TAG2:</td><br>
					<td><input type='text' id="tag2m" value='' /></td> <br> 
				</tr>  
				<tr> 
					<td>TAG3:</td><br>
					<td><input type='text' id="tag3m" value='' /></td> <br> <br> 
				</tr> 
				<tr>
						<td colspan='2'><input id="enviarm" type="submit"></td>
				</tr> 
            </div>
            <div id="cpestana3">
               	<tr> 
        			<td>ID:</td>  <br>
        			
					<td><input type='number' id="ide" value='' /></td> <br>
				</tr>   
				<tr> 
					<td>TITULO:</td><br>
					<td><input type='text' id="tituloe" value='' /></td> <br><br> 
				</tr>  
				<tr>
						<td colspan='2'><input id="enviare" type="submit" value = "Eliminar"></td>
				</tr>   
				
            </div>
            <div id="cpestana4">
                <tr> 
					<td>ID INDICADOR:</td><br>
					<td><input type='number' id="idii" value='' /></td> <br> 
				</tr>  
				<tr> 
					<td>NOMBRE INDICADOR:</td><br>
					<td><input type='text' id="nombreii" value='' /></td> <br> 
				</tr>  
				<tr> 
					<td>VALOR NUMERICO:</td><br>
					<td><input type='number' id="valorii" value='' /></td> <br><br> 
				</tr>  
				<tr>
						<td colspan='2'><input id="enviarii" type="submit"></td>
				</tr>   
            </div>
            <div id="cpestana5">
                <tr> 
					<td>ID INDICADOR que se modificara:</td><br>
					<td><input type='number' id="idim" value='' /></td> <br> 
				</tr>  
				<tr> 
					<td>NOMBRE INDICADOR:</td><br>
					<td><input type='text' id="nombreim" value='' /></td> <br> 
				</tr>  
				<tr> 
					<td>VALOR NUMERICO:</td><br>
					<td><input type='number' id="valorim" value='' /></td> <br><br> 
				</tr>  
				<tr>
						<td colspan='2'><input id="enviarim" type="submit"></td>
				</tr>   
            </div>
            <div id="cpestana6">
            	<tr> 
					<td>ID INDICADOR:</td><br>
					<td><input type='number' id="idie" value='' /></td> <br> 
				</tr>  
				<tr> 
					<td>NOMBRE INDICADOR:</td><br>
					<td><input type='text' id="nombreie" value='' /></td> <br><br> 
				</tr>  
				<tr>
						<td colspan='2'><input id="enviarie" type="submit"></td>
				</tr>    
            </div>
        </div>
	</div>
	<a href="logout.html">Cerrar sesion</a>
</body>
</html>