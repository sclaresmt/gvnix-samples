package com.springsource.petclinic.repository;
import com.springsource.petclinic.domain.Visit;

import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

@RooJpaRepository(domainType = Visit.class)
public interface VisitRepository  extends RepositoryCustom {
}
