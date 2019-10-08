package com.example.algamoney.api.repository.filter;

public class PessoaFilter {
	
	private String nome;
	private String cidade;
	private String estado;
	private String ativo;
	

	public String getAtivo() {
		return ativo;
	}

	public void setAtivo (String ativo) {
		this.ativo = ativo;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getCidade() {
		return cidade;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
	
}
