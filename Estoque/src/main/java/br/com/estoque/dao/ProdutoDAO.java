package br.com.estoque.dao;

import java.util.List;

import br.com.estoque.bean.Produto;

public interface ProdutoDAO {
	public void salvar(Produto produto);

	public void alterar(Produto produto);

	public List<Produto> listar();

	public Produto buscarPorCodigo(int codigo);

	public boolean deletar(int id);
}
