package com.etec.empresa.model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotBlank;

import com.etec.empresa.controller.dto.FuncionarioDTO;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
public class Funcionario {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@NotBlank
	@Column(nullable = false)
	private String nome;
	@NotBlank
	@Column(nullable = false)
	private BigDecimal salario;
	@ManyToOne
	@JsonIgnoreProperties("funcionarios")
	private Departamento departamento;
	
	@Deprecated
	public Funcionario() {
	}

	public Funcionario(@NotBlank String nome, @NotBlank BigDecimal salario, Departamento departamento) {
		this.nome = nome;
		this.salario = salario;
		this.departamento = departamento;
	}

	public FuncionarioDTO converter() {
		return new FuncionarioDTO(nome, salario, departamento.getId());
	}

	public Long getId() {
		return id;
	}

	public String getNome() {
		return nome;
	}

	public BigDecimal getSalario() {
		return salario;
	}

	public Departamento getDepartamento() {
		return departamento;
	}

}
