package com.springsource.petclinic.repository;
import com.springsource.petclinic.domain.Pet;

import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

@RooJpaRepository(domainType = Pet.class)
public interface PetRepository extends RepositoryCustom{
}
