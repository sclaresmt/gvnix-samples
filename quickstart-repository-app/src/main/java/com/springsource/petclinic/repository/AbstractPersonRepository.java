package com.springsource.petclinic.repository;
import com.springsource.petclinic.domain.AbstractPerson;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = AbstractPerson.class)
public interface AbstractPersonRepository {
}
