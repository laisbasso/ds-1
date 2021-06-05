package com.etec.empresa.controller;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.etec.empresa.controller.dto.FuncionarioDTO;
import com.etec.empresa.model.Departamento;
import com.etec.empresa.model.Funcionario;
import com.etec.empresa.repository.DepartamentoRepository;
import com.etec.empresa.repository.FuncionarioRepository;

@RestController
@RequestMapping("/funcionarios")
public class FuncionarioController {
	
	@Autowired
	private FuncionarioRepository funcionarioRepository;
	
	@Autowired
	private DepartamentoRepository departamentoRepository;
	
	@PostMapping
	public ResponseEntity<FuncionarioDTO> post(@Valid @RequestBody FuncionarioDTO dto){
		Optional<Departamento> existe = departamentoRepository.findById(dto.getDepartamento());
		if (existe.isEmpty())
			throw new EntityNotFoundException("ID inexistente para departemento");
		
		Funcionario funcionario = dto.converter(existe.get());
		funcionarioRepository.save(funcionario);
		return ResponseEntity.ok(dto);
	}
	
	@GetMapping
	public ResponseEntity<List<FuncionarioDTO>> getAll(){
		List<Funcionario> funcionarios = funcionarioRepository.findAll();
		List<FuncionarioDTO> dto = funcionarios.stream().map(f -> f.converter()).collect(Collectors.toList());
		return ResponseEntity.ok(dto);
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<FuncionarioDTO> getOne(@PathVariable Long id){		
		Optional<Funcionario> existe = funcionarioRepository.findById(id);		
		if (existe.isEmpty())
			throw new EntityNotFoundException("ID inexistente para funcionário");
		
		return ResponseEntity.ok(existe.get().converter());
	}
	
	@PutMapping("/{id}")
	public ResponseEntity<FuncionarioDTO> update(@PathVariable Long id, @Valid @RequestBody FuncionarioDTO dto){
		Optional<Funcionario> existe = funcionarioRepository.findById(id);		
		if (existe.isEmpty())
			throw new EntityNotFoundException("ID inexistente para funcionário");		

		Optional<Departamento> existeDep = departamentoRepository.findById(dto.getDepartamento());
		
		Funcionario funcionario = dto.converter(existeDep.get());
		funcionarioRepository.save(funcionario);
		return ResponseEntity.ok(dto);
	}
	
	@DeleteMapping("/{id}")
	public void delete(@PathVariable Long id){	
		Optional<Funcionario> existe = funcionarioRepository.findById(id);		
		if (existe.isEmpty())
			throw new EntityNotFoundException("ID inexistente para funcionário");
		funcionarioRepository.deleteById(id);	
	}

}
