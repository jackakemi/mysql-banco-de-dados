package com.crud.farmacia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.crud.farmacia.model.Produto;
import com.crud.farmacia.repository.produtoRepository;

@RestController    	//informa que esta classe é um controller
@RequestMapping("/produtos") 	//indica qual uri deve percorrer
@CrossOrigin("*")		//aceita requisições de qualquer origem
public class ProdutoController {
	
	@Autowired	//independência
	private produtoRepository repository;
	
	@GetMapping
	public ResponseEntity<List<Produto>> GetAll(){
		return ResponseEntity.ok(repository.findAll());		//método findAll: mostra todos os dados inseridos no banco
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<Produto> GetById(@PathVariable long id){
		return repository.findById(id)								//método findById: encontra o dado pelo id
				.map(resp -> ResponseEntity.ok(resp))
				.orElse(ResponseEntity.notFound().build());
	}
	
	@GetMapping("/nome/{nome}")
		public ResponseEntity<List<Produto>> GetByNome(@PathVariable String nome){
			return ResponseEntity
				.ok(repository.findAllByNomeContainingIgnoreCase(nome));		//método findBy(nome var): encontra dado pelo nome da var
			
	}
	
	@PostMapping
	public ResponseEntity<Produto> post(@RequestBody Produto produto){		//método post: para adicionar dados
		return ResponseEntity.status(HttpStatus.CREATED)
				.body(repository.save(produto));
	}
	
	@PutMapping
	public ResponseEntity<Produto> put(@RequestBody Produto produto){		//método put: para atualizar dados
		return ResponseEntity.ok(repository.save(produto));
	}
	
	@DeleteMapping("/{id}")
	public void delete(@PathVariable long id) {			//método delete: para deletar dados
		repository.deleteById(id);
	}


}
