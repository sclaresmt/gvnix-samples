package com.springsource.petclinic.repository;
import com.springsource.petclinic.domain.Pet;

import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Pet.class)
public interface PetRepository extends RepositoryCustom {
}
