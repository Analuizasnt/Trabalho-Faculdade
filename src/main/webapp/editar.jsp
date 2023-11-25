<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Agenda de contatos - Editar</title>
<link rel="icon" href="imagens/favicon.png">
<link rel="stylesheet" href="Newpast.css">

</head>
<body>
	<h1 class="editar">Editar contato</h1>
	<div class="formulario">
	<form name="frmContato"  action="update">
		<table>
			<tr>
				<td><input type="text" name="idcon" id="caixa3" readonly
					value="<%out.print(request.getAttribute("idcon"));%>"></td>
			</tr>
			<tr>
				<td><input type="text" name="nome" class="Caixa1"
					value="<%out.print(request.getAttribute("nome"));%>"></td>
			</tr>
			<tr>
				<td><input type="text" name="fone" class="Caixa2"
					value="<%out.print(request.getAttribute("fone"));%>"></td>
			</tr>
			<tr>
				<td><input type="text" name="email" class="Caixa1"
					value="<%out.print(request.getAttribute("email"));%>"></td>
			</tr>
		</table> <br>
		<input type="button" value="Salvar" class="salvarbtn" onclick="validar()">
	</form>
	</div>

	<script src="scripts/validador.js"></script>
</body>
</html>