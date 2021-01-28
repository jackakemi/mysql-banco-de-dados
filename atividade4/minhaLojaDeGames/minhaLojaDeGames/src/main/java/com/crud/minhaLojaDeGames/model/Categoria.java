package com.crud.minhaLojaDeGames.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "categoria")
public class Categoria {
		
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
		
	@NotNull
	@Size(min = 2, max = 50)
	private String tema_jogo;

	@NotNull
	@Size(min = 2, max = 50)
	private String tipo_console;

	@NotNull
	@Size(min = 2, max = 50)
	private String fabricante;

	@OneToMany(mappedBy = "categoria", cascade = CascadeType.ALL)  	//mappedBy = mapeia qual atributo está mapeando
	@JsonIgnoreProperties("categoria")								//cascadeTypeAll = altera todos os dados desta categoria
	private List<Produto> produto;

	// Getters and Setters
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTema_jogo() {
		return tema_jogo;
	}

	public void setTema_jogo(String tema_jogo) {
		this.tema_jogo = tema_jogo;
	}

	public String getTipo_console() {
		return tipo_console;
	}

	public void setTipo_console(String tipo_console) {
		this.tipo_console = tipo_console;
	}

	public String getFabricante() {
		return fabricante;
	}

	public void setFabricante(String fabricante) {
		this.fabricante = fabricante;
	}

	public List<Produto> getProduto() {
		return produto;
	}

	public void setProduto(List<Produto> produto) {
		this.produto = produto;
	}

}

