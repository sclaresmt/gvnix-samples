package com.springsource.petclinic.repository;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

public interface RepositoryCustom {

  public abstract EntityManager getEntityManager();
}
