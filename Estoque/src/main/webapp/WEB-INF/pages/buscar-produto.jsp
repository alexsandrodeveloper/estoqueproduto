<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />

	<link href="<c:url value="/resources/css/buscar-produto.css"/>" rel="stylesheet" type="text/css"> 
	
    <script type="text/javascript" src="resources/js/jquery-2.1.4.js"> </script>
	<script type="text/javascript" src="resources/js/jquery.validate.js"> </script>
	<script type="text/javascript" src="resources/js/jquery.easing.1.3.js"> </script>
	<script language="javascript" src="resources/js/buscar-produto.js"> </script>
	
<title>Buscar Produto</title>
</head>

<body>
	<div id="tudo">
		<div id="conteudo">
			<c:set var="context" value="${pageContext.request.contextPath}" />
		     
			<div id= "txttitulo">Buscar Produto</div>
			
			<div id="img"> <img src="../resources/imagens/buscar-produto.jpg" alt="logotipo"> </div>
			
			<form id="buscarProduto" name="buscarProduto" action="${context}/produto/buscar-produto.do" method="GET">
				<h3 id="txinformativo"> Favor informar o código do produto:  <input type="text" name="codigoProduto" size="20" maxlength="5"><input type="submit" id="submitBuscar" value="Buscar" ><input type="button" id="btvoltar" name="voltar" value="Voltar"></h3> 
			</form>
			
			<c:if test="${verificador == 1}">						
			<div id="divtbl">
				<table id="tblProduto" border="1" bgcolor="#E8E8E8" cellspacing="10" cellpadding="10" width="700px">
					<thead>
						<tr> 
							<th colspan="5" align="center" bgcolor="#CFCFCF"> <span style="font-size: 30px"> Produto </span> </th>
						</tr>
					</thead>
					
					<tbody>
						<tr style="color: red; font-size: 18px; font-weight: bold;"> 
							<td align="center"> Código </td>
							<td align="center"> Descrição </td>
							<td align="center"> Marca </td>
							<td align="center"> Cor </td>
							<td align="center"> Quantidade </td>
						</tr>
			
						<c:choose>
							<c:when test="${produto!=null}">
								<tr> 
									<td align="center"> ${produto.codigo} </td>
									<td align="center"> ${produto.descricao}  </td>
									<td align="center"> ${produto.marca} </td>
									<td align="center"> ${produto.cor} </td>
									<td align="center"> ${produto.quantidade} </td>
								</tr>
							</c:when>
					
							<c:otherwise>
								<tr> 
									<td id= "prodNaoEncontrado" colspan="5" align="center"> Produto não encontrado! </td>
								</tr>
							</c:otherwise>
						</c:choose>
					</tbody>
								
				</table>
				</c:if>
			</div>
						
			<div class="footer">
				<i>© Copyright 2015 Webnode AG. All rights reserved.</i> <b> - </b> Direitos reservados à <a href='mailto:alex.soares@sysmap.com.br'> Alex Sandro </a>
			</div>
		</div>
	</div>
</body>
</html>