/*
 * Copyright 2015 DiSiD Technologies S.L.L. All rights reserved.
 *
 * Project  : DiSiD petclinic
 * SVN Id   : $Id$
 */
package com.springsource.petclinic.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

public class VetRepositoryImpl implements RepositoryCustom{

    @PersistenceContext
    private EntityManager em;


    public EntityManager getEntityManager() {
      return em;
    }

}
