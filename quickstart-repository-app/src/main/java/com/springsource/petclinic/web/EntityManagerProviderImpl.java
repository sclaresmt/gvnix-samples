/*
 * Copyright 2015 DiSiD Technologies S.L.L. All rights reserved.
 *
 * Project  : DiSiD petclinic
 * SVN Id   : $Id$
 */
package com.springsource.petclinic.web;

import java.lang.reflect.Method;

import javax.persistence.EntityManager;

import org.gvnix.web.datatables.util.EntityManagerProvider;
import org.springframework.beans.factory.ListableBeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.support.Repositories;

public class EntityManagerProviderImpl implements EntityManagerProvider {

    private @Autowired ListableBeanFactory listableBeanFactory;

    public EntityManager getEntityManager(Class klass) {

        try {
          Repositories repositories = new Repositories(listableBeanFactory);
          Object r = repositories.getRepositoryFor(klass);
          Method[] methods = r.getClass().getDeclaredMethods();

            for (Method method : methods) {
                    if (method.getReturnType() == EntityManager.class) {
                        method.setAccessible(true);
                        return (EntityManager) method.invoke(r, null);
                    }
            }
        }
        catch (Exception e) {
            throw new IllegalStateException(
                    "Error getting entity manager for domain class: ".concat(klass
                            .getName()), e);
        }
        throw new IllegalStateException(
                "Cannot get entity manager for domain class: ".concat(klass
                        .getName()));
    }

}
