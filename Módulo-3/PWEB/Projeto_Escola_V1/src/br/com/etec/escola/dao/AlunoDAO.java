package br.com.etec.escola.dao;

import java.util.List;

import javax.persistence.EntityManager;

import br.com.etec.escola.modelo.Aluno;



public class AlunoDAO{

	
	private final DAO<Aluno> dao;
	
	
	public AlunoDAO(EntityManager em) {
		dao = new DAO<Aluno>(em, Aluno.class);
	}

	
	public void insere(Aluno o) {
		dao.insere(o);
	
	}

	public void remove(Aluno t) {
		dao.remove(t);
	}

	public void altera(Aluno t) {
		dao.altera(t);
	}

	public Aluno buscaPorId(Integer id) {
		return dao.buscaPorId(id);
	}

	public List<Aluno> getLista() {
		return dao.getLista();
	}

	

}
