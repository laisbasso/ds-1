package com.etec.empresa.controller.dto;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotBlank;

import com.etec.empresa.model.Departamento;
import com.etec.empresa.model.Funcionario;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

public class DepartamentoDTO {

	@NotBlank
	private String descricao;
	@OneToMany(mappedBy = "departamento", cascade = CascadeType.PERSIST)
	@JsonIgnoreProperties("departamento")
	private List<Funcionario> funcionarios;

	@Deprecated
	public DepartamentoDTO() {
	}

	public DepartamentoDTO(@NotBlank String descricao) {
		this.descricao = descricao;
	}

	public Departamento converter() {
		return new Departamento(descricao);
	}

	public String getDescricao() {
		return descricao;
	}

	public List<Funcionario> getFuncionarios() {
		return funcionarios;
	}

}
