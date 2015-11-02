package com.springsource.petclinic.domain;
import org.gvnix.addon.jpa.annotations.audit.GvNIXJpaAuditListener;

@GvNIXJpaAuditListener(entity = AbstractPerson.class)
public class AbstractPersonAuditListener {
}
