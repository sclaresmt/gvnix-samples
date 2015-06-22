package com.springsource.petclinic.web;
import com.springsource.petclinic.domain.Pet;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;
import org.gvnix.addon.datatables.annotations.GvNIXDatatables;
import org.gvnix.addon.loupefield.annotations.GvNIXLoupeController;

@RequestMapping("/pets")
@Controller
@RooWebScaffold(path = "pets", formBackingObject = Pet.class)
@GvNIXWebJQuery
@GvNIXDatatables(ajax = true, detailFields = { "visits" })
@GvNIXLoupeController
public class PetController {
}
