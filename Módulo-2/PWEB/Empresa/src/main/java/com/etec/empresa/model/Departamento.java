package com.etec.empresa.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotBlank;

import com.etec.empresa.controller.dto.DepartamentoDTO;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
public class Departamento {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@NotBlank
	@Column(nullable = false)
	private String descricao;
	@OneToMany(mappedBy = "departamento", cascade = CascadeType.PERSIST)
	@JsonIgnoreProperties("departamento")
	private List<Funcionario> funcionarios;
	
	@Deprecated
	public Departamento() {
	}

	public Departamento(@NotBlank String descricao) {
		this.descricao = descricao;
	}

	public DepartamentoDTO converter() {
		return new DepartamentoDTO(descricao);
	}

	public Long getId() {
		return id;
	}

	public String getDescricao() {
		return descricao;
	}

	public List<Funcionario> getFuncionarios() {
		return funcionarios;
	}

}
