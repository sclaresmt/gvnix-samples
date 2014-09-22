package org.gvnix.geo.component.web;
import org.gvnix.addon.geo.GvNIXMapViewer;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/map")
@GvNIXMapViewer(entityLayers = { org.gvnix.geo.component.web.OwnerController.class }, projection = "EPSG3857")
public class MapController {
}
