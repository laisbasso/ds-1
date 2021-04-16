package br.com.etec.escola.controller.dto;

import br.com.etec.escola.model.Aluno;

public class AlunoDto {

	private Long id;
	private String nome;

	@Deprecated
	public AlunoDto() {
	}

	public AlunoDto(Aluno aluno) {
		this.id = aluno.getId();
		this.nome = aluno.getNome();
	}

	public Long getId() {
		return id;
	}

	public String getNome() {
		return nome;
	}

}
