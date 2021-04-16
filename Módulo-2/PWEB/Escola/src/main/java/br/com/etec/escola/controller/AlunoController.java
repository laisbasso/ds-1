package br.com.etec.escola.controller;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.etec.escola.controller.dto.AlunoDto;
import br.com.etec.escola.model.Aluno;
import br.com.etec.escola.repository.AlunoRepository;

@RestController
@RequestMapping("/alunos")
public class AlunoController {
	
	@Autowired
	private AlunoRepository alunoRepository;

	@GetMapping
	public List<AlunoDto> getAll(){
		List<Aluno> alunos = alunoRepository.findAll();
		List<AlunoDto> dto = alunos.stream().map(aluno -> aluno.convertToDto()).collect(Collectors.toList());
		return dto;
	}
	
}
