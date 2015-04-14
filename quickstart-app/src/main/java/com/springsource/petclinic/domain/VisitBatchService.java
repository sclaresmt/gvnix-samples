package com.springsource.petclinic.domain;
import org.gvnix.addon.jpa.addon.batch.GvNIXJpaBatch;
import org.springframework.stereotype.Service;

@Service
@GvNIXJpaBatch(entity = Visit.class)
public class VisitBatchService {
}
