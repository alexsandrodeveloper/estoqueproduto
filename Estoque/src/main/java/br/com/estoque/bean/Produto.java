package br.com.estoque.bean;

public class Produto {

	private Long id;
	private int codigo;
	private String descricao;
	private int quantidade;
	private String marca;
	private String cor;

	// getters e setters
	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @return the código
	 */
	public int getCodigo() {
		return codigo;
	}

	/**
	 * @param código
	 *            the código to set
	 */
	public void setCodigo(int código) {
		this.codigo = código;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return the descricao
	 */
	public String getDescricao() {
		return descricao;
	}

	/**
	 * @param descricao
	 *            the descricao to set
	 */
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	/**
	 * @return the quantidade
	 */
	public int getQuantidade() {
		return quantidade;
	}

	/**
	 * @param quantidade
	 *            the quantidade to set
	 */
	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}

	/**
	 * @return the marca
	 */
	public String getMarca() {
		return marca;
	}

	/**
	 * @param marca
	 *            the marca to set
	 */
	public void setMarca(String marca) {
		this.marca = marca;
	}

	/**
	 * @return the cor
	 */
	public String getCor() {
		return cor;
	}

	/**
	 * @param cor
	 *            the cor to set
	 */
	public void setCor(String cor) {
		this.cor = cor;
	}

}
