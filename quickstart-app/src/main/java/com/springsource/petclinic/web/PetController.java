package com.springsource.petclinic.web;
import com.springsource.petclinic.domain.Pet;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;
import com.springsource.petclinic.domain.PetBatchService;
import org.gvnix.addon.web.mvc.addon.batch.GvNIXWebJpaBatch;
import org.gvnix.addon.web.mvc.addon.jquery.GvNIXWebJQuery;
import org.gvnix.addon.datatables.GvNIXDatatables;
import org.gvnix.addon.loupefield.GvNIXLoupeController;

@RequestMapping("/pets")
@Controller
@RooWebScaffold(path = "pets", formBackingObject = Pet.class)
@RooWebFinder
@GvNIXWebJpaBatch(service = PetBatchService.class)
@GvNIXWebJQuery
@GvNIXDatatables(ajax = true, detailFields = { "visits" })
@GvNIXLoupeController
public class PetController {
}
