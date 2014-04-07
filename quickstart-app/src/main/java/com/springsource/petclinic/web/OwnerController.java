package com.springsource.petclinic.web;
import com.springsource.petclinic.domain.Owner;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.gvnix.addon.web.mvc.jquery.GvNIXWebJQuery;
import org.gvnix.addon.datatables.GvNIXDatatables;
import com.springsource.petclinic.domain.OwnerBatchService;
import org.gvnix.addon.web.mvc.batch.GvNIXWebJpaBatch;
import org.gvnix.web.report.roo.addon.GvNIXReports;

@RequestMapping("/owners")
@Controller
@RooWebScaffold(path = "owners", formBackingObject = Owner.class)
@GvNIXWebJQuery
@GvNIXDatatables(ajax = true, detailFields = { "pets", "vets" })
@GvNIXWebJpaBatch(service = OwnerBatchService.class)
@GvNIXReports({ "report_owners|pdf" })
public class OwnerController {
}
