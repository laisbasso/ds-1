package com.etec.empresa.controller.dto;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotBlank;

import com.etec.empresa.model.Departamento;
import com.etec.empresa.model.Funcionario;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

public class FuncionarioDTO {

	@NotBlank
	@Column(nullable = false)
	private String nome;
	@NotBlank
	@Column(nullable = false)
	private BigDecimal salario;
	@ManyToOne
	@JsonIgnoreProperties("funcionarios")
	private Long departamento;

	public FuncionarioDTO(@NotBlank String nome, @NotBlank BigDecimal salario, Long departamento) {
		this.nome = nome;
		this.salario = salario;
		this.departamento = departamento;
	}

	public Funcionario converter(Departamento departamento) {
		return new Funcionario(nome, salario, departamento);
	}

	public String getNome() {
		return nome;
	}

	public BigDecimal getSalario() {
		return salario;
	}
 
	public Long getDepartamento() {
		return departamento;
	}

}
