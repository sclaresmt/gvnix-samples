package com.springsource.petclinic.web;
import org.gvnix.addon.geo.annotations.GvNIXMapViewer;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mapview")
@GvNIXMapViewer(entityLayers = {  }, projection = "EPSG4326")
public class MapViewerController {
}
