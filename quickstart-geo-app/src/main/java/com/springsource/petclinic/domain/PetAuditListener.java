package com.springsource.petclinic.domain;
import org.gvnix.addon.jpa.annotations.audit.GvNIXJpaAuditListener;

@GvNIXJpaAuditListener(entity = Pet.class)
public class PetAuditListener {
}
