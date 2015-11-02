package com.springsource.petclinic.domain;
import org.gvnix.addon.jpa.annotations.audit.GvNIXJpaAuditListener;

@GvNIXJpaAuditListener(entity = Visit.class)
public class VisitAuditListener {
}
