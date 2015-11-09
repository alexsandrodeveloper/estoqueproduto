package br.com.estoque.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.estoque.bean.Produto;
import br.com.estoque.dao.ProdutoImplementacaoDAO;

@Controller
@RequestMapping("/produto")
public class EstoqueController {

	private ProdutoImplementacaoDAO dao = new ProdutoImplementacaoDAO();

	public void setProdutoImplementacaoDAO(ProdutoImplementacaoDAO dao) {

		this.dao = dao;
	}

	@RequestMapping("/buscar")
	public ModelAndView buscar() {
		return new ModelAndView("buscar-produto");
	}

	@RequestMapping(value = "/buscar-produto", method = RequestMethod.GET)
	public ModelAndView buscarProdutoPorCodigo(
			@RequestParam(value = "codigoProduto", required = true) String codigoProduto) {

		ModelAndView mv = new ModelAndView();

		int cp = Integer.parseInt(codigoProduto);
		Produto prod = dao.buscarPorCodigo(cp);

		mv.setViewName("buscar-produto");
		mv.addObject("produto", prod);
		mv.addObject("verificador", 1);
		return mv;
	}

	@RequestMapping("/listar")
	public ModelAndView listar() {
		return new ModelAndView("listar-produto");
	}

	@RequestMapping("/adicionar")
	public ModelAndView adicionar() {
		return new ModelAndView("adicionar-produto");
	}

	@RequestMapping("/adicionar-produto")
	public ModelAndView adicionarProduto() {
		return new ModelAndView("adicionar-produto");
	}

	@RequestMapping("/deletar")
	public ModelAndView deletar() {
		return new ModelAndView("deletar-produto");
	}

	@RequestMapping("/alterar")
	public ModelAndView alterar() {
		return new ModelAndView("alterar-produto");
	}
}
