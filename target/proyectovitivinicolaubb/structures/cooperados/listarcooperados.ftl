[#include "../common.ftl" /] [@structure]
<h1>Listar Cooperados</h1>
<table>
	<tr>
		<td>#</td>
		<td>Rut</td>
		<td>Nombre</td>
		<td>Vigente</td>
		<td>IdDireccion</td>
	</tr>
	[#list cooperados as cooperado]
	<tr>
		<td>${cooperado_index+1}</td>
		<td>${cooperado.rut}</td>
		<td>${cooperado.Nombre}</td>
		<td>${cooperado.Vigente}</td>
		<td>${cooperado.idDireccion?c}</td>
	</tr>
	[/#list]
</table>
[/@structure]