<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

	<script type="text/javascript" src="resources/js/jquery-2.1.4.js"> </script>
	<script type="text/javascript" src="resources/js/jquery.validate.js"/> </script>
	<script type="text/javascript" src="resources/js/jquery.easing.1.3.js"/> </script>

	<link href="<c:url value="/resources/css/home.css"/>" rel="stylesheet"> 

	<title> Home </title>
</head>

<body>
	<div class="textobv">Seja bem vindo, Sr/a. ${usuario.login}!!</div>
						
	<div class="texotEstoqueProdutos"> Estoque de Produtos </div>  
	
	<div id="menu">
	<c:set var="context" value="${pageContext.request.contextPath}" />
		<ul>
		    <li id="textoMenu">Menu</li>
		    <li><a href="${context}/produto/adicionar.do">Adicionar</a></li>
			<li><a href="${context}/produto/buscar.do">Buscar</a></li>
			<li><a href="${context}/produto/listar.do">Listar</a></li>
			<li><a href="${context}/produto/deletar.do">Deletar</a></li>
			<li><a href="${context}/produto/alterar.do">Alterar</a></li>
		</ul>
	</div>

	<img id="imgFundo" alt="Mega Estoque" src="resources/imagens/armazem.jpg">

<div class="footer">
	<i>© Copyright 2015 Webnode AG. All rights reserved.</i> <b> - </b> Direitos reservados à <a href='mailto:alex.soares@sysmap.com.br'> Alex Sandro </a>
</div>
</body>
</html>