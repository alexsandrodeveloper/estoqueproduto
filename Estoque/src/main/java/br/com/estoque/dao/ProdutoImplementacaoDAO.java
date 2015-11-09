package br.com.estoque.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import br.com.estoque.bean.Produto;

/**
 * @author Alex.Soares
 * 
 */
@Component
public class ProdutoImplementacaoDAO implements ProdutoDAO {

	private List<Produto> produtos = new ArrayList<Produto>();

	public Produto getProduto() {

		Produto prod = new Produto();
		prod.setCodigo(12345);
		prod.setDescricao("Geladeira");
		prod.setMarca("Brastemp");
		prod.setCor("Beje");
		prod.setQuantidade(5);
		return prod;
	}

	public ProdutoImplementacaoDAO() {

	}

	public List<Produto> listar() {
		return produtos;
	}

	public void salvar(Produto produto) {

	}

	public Produto buscarPorCodigo(int codigo) {

		if (codigo == getProduto().getCodigo()) {
			return getProduto();
		}
		return null;
	}

	public void alterar(Produto produto) {
		// ainda não implementado
	}

	@Override
	public boolean deletar(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
