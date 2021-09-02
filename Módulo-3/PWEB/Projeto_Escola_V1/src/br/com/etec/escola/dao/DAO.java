package br.com.etec.escola.dao;

import java.util.List;
import javax.persistence.EntityManager;

public class DAO<T>{
	private final EntityManager em;
	private final Class<T> classe;

	public DAO(EntityManager em, Class<T> classe) {
		this.em = em;
		this.classe = classe;
	}
 
	public void insere(T o) {
		this.em.persist(o);
	}

	public void remove(T t) {
		this.em.remove(t);
	}
	
	public void altera (T t){
		this.em.merge(t);
	}
	
	public T buscaPorId(Integer id) {
		return em.getReference(classe, id);
	}
		
	@SuppressWarnings("unchecked")
	// tirar o warning
	public List<T> getLista() {
		return em.createNamedQuery("select e from " + 
	     classe.getName() + " e").getResultList();
	}

}
