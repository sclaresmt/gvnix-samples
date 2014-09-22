package org.gvnix.geo.component.domain;
import org.gvnix.addon.jpa.batch.GvNIXJpaBatch;
import org.springframework.stereotype.Service;

@Service
@GvNIXJpaBatch(entity = Owner.class)
public class OwnerBatchService {
}
