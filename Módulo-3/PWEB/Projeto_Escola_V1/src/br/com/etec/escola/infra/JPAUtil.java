package br.com.etec.escola.infra;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JPAUtil {

	private static EntityManagerFactory entityManagerFactory =
				Persistence.createEntityManagerFactory("controleescolar");
	
	public EntityManager getEntityManager() {
		return entityManagerFactory.createEntityManager();
	}
}
