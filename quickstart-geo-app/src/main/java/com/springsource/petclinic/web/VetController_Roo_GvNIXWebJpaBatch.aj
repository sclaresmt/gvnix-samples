// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.petclinic.web;

import com.springsource.petclinic.domain.Vet;
import com.springsource.petclinic.domain.VetBatchService;
import com.springsource.petclinic.web.VetController;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.apache.commons.collections.CollectionUtils;
import org.gvnix.web.json.JsonResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanWrapper;
import org.springframework.beans.BeanWrapperImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.ConversionService;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.WebRequest;

privileged aspect VetController_Roo_GvNIXWebJpaBatch {
    
    @Autowired
    public ConversionService VetController.conversionService_batch;
    
    public static Logger VetController.LOGGER_BATCH = LoggerFactory.getLogger(VetController.class);;
    
    @Autowired
    public VetBatchService VetController.batchService;
    
    @RequestMapping(value = "/delete", produces = "application/json", method = RequestMethod.POST)
    public ResponseEntity<Object> VetController.deleteBatch(@RequestParam(value = "all", required = false) boolean all, @RequestParam(value = "deleteIn", required = false) Boolean deleteIn, @RequestParam(value = "idList[]", required = false) List<Long> idList, @ModelAttribute Vet vet, WebRequest request) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        long count = 0;
        try {
            if (all) {
                Map<String, Object> baseFilter = getRequestPropertyValues(vet,request.getParameterNames());
                if (baseFilter == null || baseFilter.isEmpty()) {
                    count = batchService.deleteAll();
                } else {
                    count = batchService.deleteByValues(baseFilter);
                }
            } else {
                if (idList == null) {
                    throw new IllegalArgumentException("Missing request parameter 'idList[]'");
                }
                if (!idList.isEmpty()) {
                    if (deleteIn) {
                        count = batchService.deleteIn(idList);
                    } else {
                        count = batchService.deleteNotIn(idList);
                    }
                }
            }
        } catch (RuntimeException e) {
            LOGGER_BATCH.error("error deleting selection", e);
            return new ResponseEntity<Object>(e, headers, HttpStatus.INTERNAL_SERVER_ERROR);
        }
        LOGGER_BATCH.debug("deleted: " + count);
        return new ResponseEntity<Object>(count, headers, HttpStatus.OK);
    }
    
    @RequestMapping(produces = "application/json", consumes = "application/json", method = RequestMethod.PUT, headers = "Accept=application/json")
    @ResponseBody
    public JsonResponse<List<Vet>> VetController.updateBatch(@RequestBody @Valid List<Vet> vets, BindingResult bindingResult, HttpServletRequest request) {
        JsonResponse<List<Vet>> jsonResponse = new JsonResponse<List<Vet>>();
        jsonResponse.setValue(vets);
        if (bindingResult.hasErrors()) {
            jsonResponse.setBindingResult(bindingResult);
            jsonResponse.setStatus("ERROR");
            return jsonResponse;
        }
        try {
            vets = batchService.update(vets);
        }
        catch(Exception ex) {
            jsonResponse.setStatus("ERROR");
            jsonResponse.setExceptionMessage(ex.getLocalizedMessage());
            return jsonResponse;
        }
        jsonResponse.setValue(vets);
        jsonResponse.setOid(getOIDList(vets));
        jsonResponse.setStatus("SUCCESS");
        return jsonResponse;
    }
    
    @RequestMapping(produces = "application/json", consumes = "application/json", method = RequestMethod.POST, headers = "Accept=application/json")
    @ResponseBody
    public JsonResponse<List<Vet>> VetController.createBatch(@RequestBody @Valid List<Vet> vets, BindingResult bindingResult, HttpServletRequest request) {
        JsonResponse<List<Vet>> jsonResponse = new JsonResponse<List<Vet>>();
        jsonResponse.setValue(vets);
        if (bindingResult.hasErrors()) {
            jsonResponse.setBindingResult(bindingResult);
            jsonResponse.setStatus("ERROR");
            return jsonResponse;
        }
        try {
            batchService.create(vets);
        }
        catch(Exception ex) {
            jsonResponse.setStatus("ERROR");
            jsonResponse.setExceptionMessage(ex.getLocalizedMessage());
            return jsonResponse;
        }
        jsonResponse.setOid(getOIDList(vets));
        jsonResponse.setStatus("SUCCESS");
        return jsonResponse;
    }
    
    public List<String> VetController.getOIDList(List<Vet> vets) {
        List<String> result = new ArrayList<String>(vets.size());
        for (Vet vet : vets) {
            result.add(conversionService_batch.convert(vet.getId(), String.class));
        }
        return result;
    }
    
    public Map<String, Object> VetController.getRequestPropertyValues(Vet vet, Iterator<String> propertyNames) {
        Map<String, Object> propertyValuesMap = new HashMap<String, Object>();
        
        // If no entity or properties given, return empty Map
        if(vet == null || propertyNames == null) {
            return propertyValuesMap;
        }
        
        List<String> properties = new ArrayList<String>();
        CollectionUtils.addAll(properties, propertyNames);
        
        // There must be at least one property name, otherwise return empty Map
        if (properties.isEmpty()) {
            return propertyValuesMap;
        }
        
        // Iterate over given properties to get each property value
        BeanWrapper entityBean = new BeanWrapperImpl(vet);
        for (String propertyName : properties) {
            if (entityBean.isReadableProperty(propertyName)) {
                Object propertyValue = null;
                try {
                    propertyValue = entityBean.getPropertyValue(propertyName);
                } catch (Exception e){
                    // TODO log warning
                    continue;
                }
                propertyValuesMap.put(propertyName, propertyValue);
            }
        }
        return propertyValuesMap;
    }
    
}
