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
	<script type="text/javascript" src="resources/js/adicionar-produto.js"/> </script>

	<link href="<c:url value="/resources/css/adicionar-produto.css"/>" rel="stylesheet">

<title> Cadastrar Produto</title>
</head>
<body>
	<h2> Cadastrar Produto </h2>
	
	<form name="cadastrarProduto" action="produto/cadastrar-produto" method="post">
	 <table id="tbformulario">
		<thead>
			<tr> <td id="titulotabela" colspan="5"> Formulário de Cadastro  </td></tr>
		</thead>
		
		<tbody>
			<tr>
				<td id="campotb"> Código: </td>
				<td> <input type="text" name="codigo"  maxlength="5" size="10"> </td>
				
				<td id="campotb">  Descrição: </td>	
				<td> <input type="text" name="descricao"  size="20"> </td>			
			 </tr>
			 
			 <tr>
				<td id="campotb"> Quantidade: </td>
				<td> <input type="text" name="qdte"  size="5"> </td>	
				
				<td id="campotb"> Marca: </td>
				<td> <input type="text" name="marca"  size="15"> </td>				
			 </tr>
			 
			 <tr>
				<td id="campotb"> Cor: </td>
				<td> <input type="text" name="cor"  size="15"> </td>				
			 </tr>		
		</tbody> 
		
		<tfoot> 
			<tr> <td colspan="5" align="right"> <input type="submit" value="Cadastrar"> </td> </tr>
		</tfoot>	  
	 </table>
    </form>
</body>
</html>