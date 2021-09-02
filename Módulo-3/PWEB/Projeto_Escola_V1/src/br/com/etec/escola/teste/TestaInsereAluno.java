package br.com.etec.escola.teste;

import javax.persistence.EntityManager;

import br.com.etec.escola.dao.AlunoDAO;
import br.com.etec.escola.infra.JPAUtil;
import br.com.etec.escola.modelo.Aluno;

public class TestaInsereAluno {

	public static void main(String[] args) {
		EntityManager em = new JPAUtil().getEntityManager();
		em.getTransaction().begin();
		
		AlunoDAO dao = new AlunoDAO(em);
		Aluno aluno = new Aluno();

		aluno.setNome("JOANINHA SILVEIRA");
		aluno.setTelefone("9999-9999");
		aluno.setEmail("joaninha@xxx.com");

		dao.insere(aluno);

		/*em.persist(aluno);*/
		em.getTransaction().commit();
		em.close();

		System.out.println("Aluno gravado com sucesso");
	}
}
