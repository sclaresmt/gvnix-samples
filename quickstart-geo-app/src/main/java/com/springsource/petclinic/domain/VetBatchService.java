package com.springsource.petclinic.domain;
import org.gvnix.addon.jpa.addon.batch.GvNIXJpaBatch;
import org.springframework.stereotype.Service;

@Service
@GvNIXJpaBatch(entity = Vet.class)
public class VetBatchService {
}
