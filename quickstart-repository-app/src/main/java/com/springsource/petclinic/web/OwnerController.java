package com.springsource.petclinic.web;
import com.springsource.petclinic.domain.Owner;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;
import org.gvnix.addon.datatables.annotations.GvNIXDatatables;

@RequestMapping("/owners")
@Controller
@RooWebScaffold(path = "owners", formBackingObject = Owner.class)
@GvNIXWebJQuery
@GvNIXDatatables(ajax = true, detailFields = { "pets", "vets" })
public class OwnerController {
}
