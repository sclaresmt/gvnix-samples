package com.springsource.petclinic.web;
import com.springsource.petclinic.domain.Pet;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;
import com.springsource.petclinic.domain.PetBatchService;
import org.gvnix.addon.web.mvc.annotations.batch.GvNIXWebJpaBatch;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;
import org.gvnix.addon.datatables.annotations.GvNIXDatatables;
import org.gvnix.addon.loupefield.annotations.GvNIXLoupeController;
import org.gvnix.addon.fancytree.annotations.GvNIXFancyTree;

@RequestMapping("/pets")
@Controller
@RooWebScaffold(path = "pets", formBackingObject = Pet.class)
@RooWebFinder
@GvNIXWebJpaBatch(service = PetBatchService.class)
@GvNIXWebJQuery
@GvNIXDatatables(ajax = true, detailFields = { "visits" })
@GvNIXLoupeController
@GvNIXFancyTree(editable = true, mapping = "tree", page = "tree")
public class PetController {
}
