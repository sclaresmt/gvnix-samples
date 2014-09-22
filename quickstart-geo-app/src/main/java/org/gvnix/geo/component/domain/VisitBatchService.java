package org.gvnix.geo.component.domain;
import org.gvnix.addon.jpa.batch.GvNIXJpaBatch;
import org.springframework.stereotype.Service;

@Service
@GvNIXJpaBatch(entity = Visit.class)
public class VisitBatchService {
}
