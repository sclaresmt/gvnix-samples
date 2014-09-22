package org.gvnix.geo.component.web;
import org.gvnix.geo.component.domain.Vet;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.gvnix.addon.web.mvc.jquery.GvNIXWebJQuery;
import org.gvnix.addon.datatables.GvNIXDatatables;
import org.gvnix.addon.web.mvc.batch.GvNIXWebJpaBatch;
import org.gvnix.geo.component.domain.VetBatchService;

@RequestMapping("/vets")
@Controller
@RooWebScaffold(path = "vets", formBackingObject = Vet.class)
@GvNIXWebJQuery
@GvNIXDatatables(ajax = true)
@GvNIXWebJpaBatch(service = VetBatchService.class)
public class VetController {
}
