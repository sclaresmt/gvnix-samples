package com.springsource.petclinic.domain;
import org.gvnix.addon.jpa.annotations.audit.GvNIXJpaAuditListener;

@GvNIXJpaAuditListener(entity = Owner.class)
public class OwnerAuditListener {
}
