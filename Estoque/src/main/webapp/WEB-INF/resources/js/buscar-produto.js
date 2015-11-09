$(document).ready( function() {
  $("#buscarProduto").validate({
    // Define as regras
    rules:{
    	codigoProduto:{
        // campoNome obrigatório (required), tamanho mínimo (minLength), tamanho máximo (maxlength) 
        required: true, 
        minlength: 5, 
        maxlength: 5
        }
      },
      
    // Define as mensagens de erro para cada regra
    messages:{
    	codigoProduto:{
        required: "Digite o codigo do produto",
        minLength: "O código deve conter no mínimo, 5 caracteres",
        maxlength: "O código deve conter no maxímo, 5 caracteres"
    	}
      },
    });
  
  $("#btvoltar").click(function(){
	  window.location.replace("/Estoque/home");	  
  });
  
  
});