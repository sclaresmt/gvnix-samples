package org.gvnix.geo.component.web;
import org.gvnix.geo.component.domain.Owner;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.gvnix.addon.web.mvc.jquery.GvNIXWebJQuery;
import org.gvnix.addon.datatables.GvNIXDatatables;
import org.gvnix.addon.web.mvc.batch.GvNIXWebJpaBatch;
import org.gvnix.geo.component.domain.OwnerBatchService;
import org.gvnix.addon.geo.GvNIXWebEntityMapLayer;

@RequestMapping("/owners")
@Controller
@RooWebScaffold(path = "owners", formBackingObject = Owner.class)
@GvNIXWebJQuery
@GvNIXDatatables(ajax = true)
@GvNIXWebJpaBatch(service = OwnerBatchService.class)
@GvNIXWebEntityMapLayer
public class OwnerController {
}
