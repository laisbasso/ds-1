package br.com.etec.jfs.mb;

import javax.faces.bean.ManagedBean;

import br.com.etec.model.Aluno;

@ManagedBean
public class AlunoBean {

	private Aluno aluno = new Aluno();
	private String resultado;

	public Aluno getAluno() {
		return aluno;
	}

	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}

	public String getResultado() {
		return resultado;
	}

	public void setResultado(String resultado) {
		this.resultado = resultado;
	}

	public void Gravar() {
		resultado = "Cadastrado com sucesso!";
	}
}
