package com.springsource.petclinic.web;
import com.springsource.petclinic.domain.Vet;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.gvnix.addon.web.mvc.jquery.GvNIXWebJQuery;
import org.gvnix.addon.datatables.GvNIXDatatables;
import com.springsource.petclinic.domain.VetBatchService;
import org.gvnix.addon.web.mvc.batch.GvNIXWebJpaBatch;

@RequestMapping("/vets")
@Controller
@RooWebScaffold(path = "vets", formBackingObject = Vet.class)
@GvNIXWebJQuery
@GvNIXDatatables(ajax = true, mode = "show", detailFields = { "visits" })
@GvNIXWebJpaBatch(service = VetBatchService.class)
public class VetController {
}
