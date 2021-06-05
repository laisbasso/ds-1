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

import com.etec.empresa.controller.dto.DepartamentoDTO;
import com.etec.empresa.model.Departamento;
import com.etec.empresa.repository.DepartamentoRepository;

@RestController
@RequestMapping("/departamentos")
public class DepartamentoController {
	
	@Autowired
	private DepartamentoRepository departamentoRepository;
	
	@PostMapping
	public ResponseEntity<DepartamentoDTO> post(@Valid @RequestBody DepartamentoDTO dto){
		Departamento departamento = dto.converter();
		departamentoRepository.save(departamento);
		return ResponseEntity.ok(dto);
	}
	
	@GetMapping
	public ResponseEntity<List<DepartamentoDTO>> getAll(){
		List<Departamento> departamentos = departamentoRepository.findAll();
		List<DepartamentoDTO> dto = departamentos.stream().map(d -> d.converter()).collect(Collectors.toList());
		return ResponseEntity.ok(dto);
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<DepartamentoDTO> getOne(@PathVariable Long id){		
		Optional<Departamento> existe = departamentoRepository.findById(id);		
		if (existe.isEmpty())
			throw new EntityNotFoundException("ID inexistente para departamento");
		
		return ResponseEntity.ok(existe.get().converter());
	}
	
	@PutMapping("/{id}")
	public ResponseEntity<DepartamentoDTO> update(@PathVariable Long id, @Valid @RequestBody DepartamentoDTO dto){
		Optional<Departamento> existe = departamentoRepository.findById(id);		
		if (existe.isEmpty())
			throw new EntityNotFoundException("ID inexistente para departamento");
		
		Departamento departamento = dto.converter();
		departamentoRepository.save(departamento);
		return ResponseEntity.ok(dto);
	}
	
	@DeleteMapping("/{id}")
	public void delete(@PathVariable Long id){	
		Optional<Departamento> existe = departamentoRepository.findById(id);		
		if (existe.isEmpty())
			throw new EntityNotFoundException("ID inexistente para departamento");
		departamentoRepository.deleteById(id);	
	}

}
