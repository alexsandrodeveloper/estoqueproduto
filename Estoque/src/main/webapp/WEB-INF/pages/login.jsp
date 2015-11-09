<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Autenticação</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"> </script>  -->
<!-- <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"> </script>-->

<script type="text/javascript" src="resources/js/jquery-2.1.4.js"> </script>
<script type="text/javascript" src="resources/js/jquery.validate.js"/> </script>

<link href="<c:url value="/resources/css/login.css"/>" rel="stylesheet"> 

<script type="text/javascript">

$(document).ready( function() {
	
	$("input").blur(function(){
	     if($(this).val() == "")
	         {
	             $(this).css({"border-color" : "#F00", "padding": "2px"});
	         }
	    });
		
	
	  $("#autenticacao").validate({
	    // Define as regras
	    rules:{
	      login:{
	        // Campo login será obrigatório (required) e terá tamanho mínimo (minLength)
	        required: true,
	        minlength: 2
	      },
	      senha:{
	        // Campo senha será obrigatório (required) e precisará ser um e-mail válido (email)
	        required: true,
	        minlength: 5
	      }
	    },
	    // Define as mensagens de erro para cada regra
	    messages:{
	      login:{
	        required:"Digite o seu login", minLength:"2"
	      },
	      senha:{
	        required:"Digite sua senha", minLength:"5"
	      }
	    },
	  });
	});
</script>
</head>

<body>
<div class="geral">
	<div id="img"> </div>
	<c:set var="context" value="${pageContext.request.contextPath}" />
	<form id="autenticacao" name="autenticacao" action="${context}/autenticacao/logado.do" method="POST" >
		<table id="tabela" border="1">
	
			<thead> 
				<tr>
					<th colspan="2"> Autenticação </th>
				</tr>
			</thead>
	
			<tbody> 
				<tr> 
					<td id="ls">Login: </td>
					<td id="input"> <input type="text" id="login" maxlength="10" name="login" size="50px"> </td>
	    		</tr> 
	
				<tr> 
					<td id="ls">Senha: </td>
					<td id="input"> <input type="password" id="senha" maxlength="8" name="senha" size="50px"> </td>			
				</tr>
		
				<tr> 
					<td colspan="2" id="tdbotao"> <input class= "submit" type="submit" value="Logar"> </td>
				</tr>
			</tbody>
		</table>
	</form>

	<div class="footer">
		<i>© Copyright 2015 Webnode AG. All rights reserved.</i> <b> - </b> Direitos reservados à <a href='mailto:alex.soares@sysmap.com.br'> Alex Sandro </a>
	</div>
</div>
</body>
</html>