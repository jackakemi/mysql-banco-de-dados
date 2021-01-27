package com.crud.farmacia.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table (name = "produto")
public class Produto {
	
	@Id //chama primaria
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@NotNull
	@Size(min=2, max = 100) //definição de tamanho
	private String nome;
	
	@NotNull
	@Digits(integer = 5, fraction = 2) //para variaveis do tipo decimal, definição de tamanho
	private double preco;
	
	@NotNull
	private long qtd_estoque;
	
	
	//Getters and Setters
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public double getPreco() {
		return preco;
	}
	public void setPreco(double preco) {
		this.preco = preco;
	}
	public long getQtd_estoque() {
		return qtd_estoque;
	}
	public void setQtd_estoque(long qtd_estoque) {
		this.qtd_estoque = qtd_estoque;
	}

}
