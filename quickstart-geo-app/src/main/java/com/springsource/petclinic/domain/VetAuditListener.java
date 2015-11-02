package com.springsource.petclinic.domain;
import org.gvnix.addon.jpa.annotations.audit.GvNIXJpaAuditListener;

@GvNIXJpaAuditListener(entity = Vet.class)
public class VetAuditListener {
}
