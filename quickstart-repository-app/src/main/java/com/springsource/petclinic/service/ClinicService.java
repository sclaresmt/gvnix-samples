package com.springsource.petclinic.service;
import org.springframework.stereotype.Service;
import org.gvnix.service.roo.addon.annotations.GvNIXWebService;

@Service
@GvNIXWebService(name = "ws_clinicPortType", targetNamespace = "http://service.petclinic.springsource.com/", serviceName = "ws_clinic", address = "ClinicService", fullyQualifiedTypeName = "com.springsource.petclinic.service.ClinicService", exported = false)
public class ClinicService {

    public void ws_clinic() {
        // TODO: You have to place the method logic here.
        return;
    }
}
