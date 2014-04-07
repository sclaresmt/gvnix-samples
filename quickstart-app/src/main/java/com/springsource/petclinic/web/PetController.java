package com.springsource.petclinic.web;
import com.springsource.petclinic.domain.Pet;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;
import org.gvnix.addon.web.mvc.jquery.GvNIXWebJQuery;
import org.gvnix.addon.datatables.GvNIXDatatables;
import com.springsource.petclinic.domain.PetBatchService;
import org.gvnix.addon.web.mvc.batch.GvNIXWebJpaBatch;

@RequestMapping("/pets")
@Controller
@RooWebScaffold(path = "pets", formBackingObject = Pet.class)
@RooWebFinder
@GvNIXWebJQuery
@GvNIXDatatables(ajax = true, detailFields = { "visits" })
@GvNIXWebJpaBatch(service = PetBatchService.class)
public class PetController {
}
