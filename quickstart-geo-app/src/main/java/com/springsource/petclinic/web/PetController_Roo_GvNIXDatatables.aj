// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.petclinic.web;

import com.github.dandelion.datatables.core.ajax.DataSet;
import com.github.dandelion.datatables.core.ajax.DatatablesCriterias;
import com.github.dandelion.datatables.core.ajax.DatatablesResponse;
import com.github.dandelion.datatables.core.exception.ExportException;
import com.github.dandelion.datatables.core.export.CsvExport;
import com.github.dandelion.datatables.core.export.DatatablesExport;
import com.github.dandelion.datatables.core.export.ExportConf;
import com.github.dandelion.datatables.core.export.ExportType;
import com.github.dandelion.datatables.core.export.ExportUtils;
import com.github.dandelion.datatables.core.export.XmlExport;
import com.github.dandelion.datatables.core.html.HtmlTable;
import com.github.dandelion.datatables.extras.export.itext.PdfExport;
import com.github.dandelion.datatables.extras.export.poi.XlsExport;
import com.github.dandelion.datatables.extras.export.poi.XlsxExport;
import com.github.dandelion.datatables.extras.spring3.ajax.DatatablesParams;
import com.mysema.query.BooleanBuilder;
import com.mysema.query.types.path.PathBuilder;
import com.springsource.petclinic.domain.Owner;
import com.springsource.petclinic.domain.Pet;
import com.springsource.petclinic.reference.PetType;
import com.springsource.petclinic.web.PetController;
import com.springsource.petclinic.web.PetController_Roo_Controller;
import com.springsource.petclinic.web.PetController_Roo_GvNIXDatatables;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.gvnix.web.datatables.query.SearchResults;
import org.gvnix.web.datatables.util.DatatablesUtils;
import org.gvnix.web.datatables.util.QuerydslUtils;
import org.springframework.beans.BeanWrapper;
import org.springframework.beans.BeanWrapperImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.core.convert.ConversionService;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

privileged aspect PetController_Roo_GvNIXDatatables {
    
    declare precedence: PetController_Roo_GvNIXDatatables, PetController_Roo_Controller;
    
    @Autowired
    public ConversionService PetController.conversionService_dtt;
    
    @Autowired
    public MessageSource PetController.messageSource_dtt;
    
    public BeanWrapper PetController.beanWrapper;
    
    @RequestMapping(method = RequestMethod.GET, produces = "text/html")
    public String PetController.listDatatables(Model uiModel, HttpServletRequest request) {
        Map<String, String> params = populateParametersMap(request);
        // Get parentId information for details render
        String parentId = params.remove("_dt_parentId");
        if (StringUtils.isNotBlank(parentId)) {
            uiModel.addAttribute("parentId", parentId);
        }
        String rowOnTopIds = params.remove("dtt_row_on_top_ids");
        if (StringUtils.isNotBlank(rowOnTopIds)) {
            uiModel.addAttribute("dtt_row_on_top_ids", rowOnTopIds);
        }
        String tableHashId = params.remove("dtt_parent_table_id_hash");
        if (StringUtils.isNotBlank(tableHashId)) {
            uiModel.addAttribute("dtt_parent_table_id_hash", tableHashId);
        }
        if (!params.isEmpty()) {
            uiModel.addAttribute("baseFilter", params);
        }
        // Add attribute available into view with information about each detail datatables 
        Map<String, String> details;
        List<Map<String, String>> detailsInfo = new ArrayList<Map<String, String>>(1);
        details = new HashMap<String, String>();
        // Base path for detail datatables entity (to get detail datatables fragment URL)
        details.put("path", "visits");
        details.put("property", "visits");
        // Property name in detail entity with the relation to master entity
        details.put("mappedBy", "pet");
        detailsInfo.add(details);
        uiModel.addAttribute("detailsInfo", detailsInfo);
        return "pets/list";
    }
    
    @ModelAttribute
    public void PetController.populateDatatablesConfig(Model uiModel) {
        uiModel.addAttribute("datatablesHasBatchSupport", true);
        uiModel.addAttribute("datatablesUseAjax",true);
        uiModel.addAttribute("datatablesInlineEditing",false);
        uiModel.addAttribute("datatablesInlineCreating",false);
        uiModel.addAttribute("datatablesSecurityApplied",true);
        uiModel.addAttribute("datatablesStandardMode",true);
        uiModel.addAttribute("finderNameParam","ajax_find");
    }
    
    @RequestMapping(produces = "text/html")
    public String PetController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        // overrides the standard Roo list method and
        // delegates on datatables list method
        return listDatatables(uiModel, null);
    }
    
    public Map<String, String> PetController.populateParametersMap(HttpServletRequest request) {
        Map<String, Object> params;
        if (request == null) {
            params = Collections.emptyMap();
        } else {
            params = new HashMap<String, Object>(request.getParameterMap());
        }
        
        Map<String, String> allParams = new HashMap<String, String>(params.size());
        
        String value;
        Object objValue;
        for (String key : params.keySet()) {
            objValue = params.get(key);
            if (objValue instanceof String[]) {
                value = ((String[]) objValue)[0];
            } else {
                value = (String) objValue;
            }
            allParams.put(key, value);
        }
        return allParams;
    }
    
    public Map<String, Object> PetController.getPropertyMap(Pet pet, Enumeration<Map<String, String>> propertyNames) {
        Map<String, Object> propertyValuesMap = new HashMap<String, Object>();
        
        // If no entity or properties given, return empty Map
        if(pet == null || propertyNames == null) {
            return propertyValuesMap;
        }
        
        List<String> properties = new ArrayList<String>();
        CollectionUtils.addAll(properties, propertyNames);
        
        // There must be at least one property name, otherwise return empty Map
        if (properties.isEmpty()) {
            return propertyValuesMap;
        }
        
        // Iterate over given properties to get each property value
        BeanWrapper entityBean = new BeanWrapperImpl(pet);
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
    
    public Map<String, Object> PetController.getPropertyMap(Pet pet, HttpServletRequest request) {
        // URL parameters are used as base search filters
        @SuppressWarnings("unchecked") Map<String, Object> propertyValuesMap = getPropertyMap(pet, request.getParameterNames());
        // Add to the property map the parameters used as query operators
        Map<String, Object> params = new HashMap<String, Object>(populateParametersMap(request));
        Set<String> keySet = params.keySet();
        for (String key : keySet) {
            if (key.startsWith(QuerydslUtils.OPERATOR_PREFIX)) {
                propertyValuesMap.put(key, params.get(key));
            } else if (DatatablesUtils.ROWS_ON_TOP_IDS_PARAM.equals(key)) {
                propertyValuesMap.put(key, request.getParameterMap().get(key));
            } else if(DatatablesUtils.BOUNDING_BOX_PARAM.equals(key) || DatatablesUtils.BOUNDING_BOX_FIELDS_PARAM.equals(key)){
                propertyValuesMap.put(key, request.getParameterMap().get(key));
            }
        }
        return propertyValuesMap;
    }
    
    public void PetController.setDatatablesBaseFilter(Map<String, Object> propertyMap) {
        // TODO: Add here your baseFilters to propertyMap.
        //		 This code will be generated by gvNIX commands/annotation
        //		 on future.
    }
    
    @RequestMapping(produces = "text/html", value = "/list")
    public String PetController.listDatatablesDetail(Model uiModel, HttpServletRequest request, @ModelAttribute Pet pet) {
        // Do common datatables operations: get entity list filtered by request parameters
        listDatatables(uiModel, request);
        // Show only the list fragment (without footer, header, menu, etc.) 
        return "forward:/WEB-INF/views/pets/list.jspx";
    }
    
    @RequestMapping(produces = "text/html", method = RequestMethod.POST, params = "datatablesRedirect")
    public String PetController.createDatatablesDetail(@RequestParam(value = "datatablesRedirect", required = true) String redirect, @Valid Pet pet, BindingResult bindingResult, Model uiModel, RedirectAttributes redirectModel, HttpServletRequest httpServletRequest) {
        // Do common create operations (check errors, populate, persist, ...)
        String view = create(pet, bindingResult, uiModel, httpServletRequest);
        // If binding errors or no redirect, return common create error view (remain in create form)
        if (bindingResult.hasErrors() || redirect == null || redirect.trim().isEmpty()) {
            return view;
        }
        String[] paramValues = httpServletRequest.getParameterValues("dtt_table_id_hash");
        if(paramValues != null && paramValues.length > 0) {
            redirectModel.addFlashAttribute("dtt_table_id_hash", paramValues[0]);
        }else{
            redirectModel.addFlashAttribute("dtt_table_id_hash", "");
        }
        redirectModel.addFlashAttribute(DatatablesUtils.ROWS_ON_TOP_IDS_PARAM, pet.getId());
        // If create success, redirect to given URL: master datatables
        return "redirect:".concat(redirect);
    }
    
    @RequestMapping(produces = "text/html", method = RequestMethod.PUT, params = "datatablesRedirect")
    public String PetController.updateDatatablesDetail(@RequestParam(value = "datatablesRedirect", required = true) String redirect, @Valid Pet pet, BindingResult bindingResult, Model uiModel, RedirectAttributes redirectModel, HttpServletRequest httpServletRequest) {
        // Do common update operations (check errors, populate, merge, ...)
        String view = update(pet, bindingResult, uiModel, httpServletRequest);
        // If binding errors or no redirect, return common update error view (remain in update form)
        if (bindingResult.hasErrors() || redirect == null || redirect.trim().isEmpty()) {
            return view;
        }
        String[] paramValues = httpServletRequest.getParameterValues("dtt_table_id_hash");
        if(paramValues != null && paramValues.length > 0) {
            redirectModel.addFlashAttribute("dtt_table_id_hash", paramValues[0]);
        }else{
            redirectModel.addFlashAttribute("dtt_table_id_hash", "");
        }
        redirectModel.addFlashAttribute(DatatablesUtils.ROWS_ON_TOP_IDS_PARAM, pet.getId());
        // If update success, redirect to given URL: master datatables
        return "redirect:".concat(redirect);
    }
    
    @RequestMapping(produces = "text/html", method = RequestMethod.DELETE, params = "datatablesRedirect", value = "/{id}")
    public String PetController.deleteDatatablesDetail(@RequestParam(value = "datatablesRedirect", required = true) String redirect, @PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        // Do common delete operations (find, remove, add pagination attributes, ...)
        String view = delete(id, page, size, uiModel);
        // If no redirect, return common list view
        if (redirect == null || redirect.trim().isEmpty()) {
            return view;
        }
        // Redirect to given URL: master datatables
        return "redirect:".concat(redirect);
    }
    
    @RequestMapping(headers = "Accept=application/json", value = "/datatables/ajax", produces = "application/json")
    @ResponseBody
    public DatatablesResponse<Map<String, String>> PetController.findAllPets(@DatatablesParams DatatablesCriterias criterias, @ModelAttribute Pet pet, HttpServletRequest request) {
        // URL parameters are used as base search filters
        Map<String, Object> baseSearchValuesMap = getPropertyMap(pet, request);
        setDatatablesBaseFilter(baseSearchValuesMap);
        SearchResults<Pet> searchResult = DatatablesUtils.findByCriteria(Pet.class, Pet.entityManager(), criterias, baseSearchValuesMap, conversionService_dtt, messageSource_dtt);
        
        // Get datatables required counts
        long totalRecords = searchResult.getTotalCount();
        long recordsFound = searchResult.getResultsCount();
        
        // Entity pk field name
        String pkFieldName = "id";
        
        DataSet<Map<String, String>> dataSet = DatatablesUtils.populateDataSet(searchResult.getResults(), pkFieldName, totalRecords, recordsFound, criterias.getColumnDefs(), null, conversionService_dtt); 
        return DatatablesResponse.build(dataSet,criterias);
    }
    
    @RequestMapping(headers = "Accept=application/json", params = "checkFilters")
    @ResponseBody
    public ResponseEntity<String> PetController.checkFilterExpressions(WebRequest request, @RequestParam(value = "property", required = false) String property, @RequestParam(value = "expression", required = false) String expression) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        if(beanWrapper == null){
            beanWrapper = new BeanWrapperImpl(Pet.class);
        }
        Class type = beanWrapper.getPropertyType(property);
        boolean response = DatatablesUtils.checkFilterExpressions(type,expression, messageSource_dtt);
        return new ResponseEntity<String>(String.format("{ \"response\": %s, \"property\": \"%s\"}",response, property), headers, org.springframework.http.HttpStatus.OK);
    }
    
    @RequestMapping(headers = "Accept=application/json", value = "/datatables/ajax", params = "ajax_find=ByTypeAndNameLike", produces = "application/json")
    @ResponseBody
    public DatatablesResponse<Map<String, String>> PetController.findPetsByTypeAndNameLike(@DatatablesParams DatatablesCriterias criterias, @RequestParam("type") PetType type, @RequestParam("name") String name) {
        BooleanBuilder baseSearch = new BooleanBuilder();
        
        // Base Search. Using BooleanBuilder, a cascading builder for
        // Predicate expressions
        PathBuilder<Pet> entity = new PathBuilder<Pet>(Pet.class, "entity");
        
        baseSearch.and(entity.get("type").eq(type));
        baseSearch.and(entity.getString("name").toLowerCase().like("%".concat(name).concat("%")));
        
        SearchResults<Pet> searchResult = DatatablesUtils.findByCriteria(entity, Pet.entityManager(), criterias, baseSearch);
        
        // Get datatables required counts
        long totalRecords = searchResult.getTotalCount();
        long recordsFound = searchResult.getResultsCount();
        
        // Entity pk field name
        String pkFieldName = "id";
        
        DataSet<Map<String, String>> dataSet = DatatablesUtils.populateDataSet(searchResult.getResults(), pkFieldName, totalRecords, recordsFound, criterias.getColumnDefs(), null, conversionService_dtt); 
        return DatatablesResponse.build(dataSet,criterias);
    }
    
    @RequestMapping(headers = "Accept=application/json", value = "/datatables/ajax", params = "ajax_find=BySendRemindersAndWeightLessThan", produces = "application/json")
    @ResponseBody
    public DatatablesResponse<Map<String, String>> PetController.findPetsBySendRemindersAndWeightLessThan(@DatatablesParams DatatablesCriterias criterias, @RequestParam(value = "sendReminders", required = false) boolean sendReminders, @RequestParam("weight") Float weight) {
        BooleanBuilder baseSearch = new BooleanBuilder();
        
        // Base Search. Using BooleanBuilder, a cascading builder for
        // Predicate expressions
        PathBuilder<Pet> entity = new PathBuilder<Pet>(Pet.class, "entity");
        
        baseSearch.and(entity.get("sendReminders").eq(sendReminders));
        baseSearch.and(entity.getNumber("weight", Float.class).lt(weight));
        
        SearchResults<Pet> searchResult = DatatablesUtils.findByCriteria(entity, Pet.entityManager(), criterias, baseSearch);
        
        // Get datatables required counts
        long totalRecords = searchResult.getTotalCount();
        long recordsFound = searchResult.getResultsCount();
        
        // Entity pk field name
        String pkFieldName = "id";
        
        DataSet<Map<String, String>> dataSet = DatatablesUtils.populateDataSet(searchResult.getResults(), pkFieldName, totalRecords, recordsFound, criterias.getColumnDefs(), null, conversionService_dtt); 
        return DatatablesResponse.build(dataSet,criterias);
    }
    
    @RequestMapping(headers = "Accept=application/json", value = "/datatables/ajax", params = "ajax_find=ByOwner", produces = "application/json")
    @ResponseBody
    public DatatablesResponse<Map<String, String>> PetController.findPetsByOwner(@DatatablesParams DatatablesCriterias criterias, @RequestParam("owner") Owner owner) {
        BooleanBuilder baseSearch = new BooleanBuilder();
        
        // Base Search. Using BooleanBuilder, a cascading builder for
        // Predicate expressions
        PathBuilder<Pet> entity = new PathBuilder<Pet>(Pet.class, "entity");
        
        baseSearch.and(entity.get("owner").eq(owner));
        
        SearchResults<Pet> searchResult = DatatablesUtils.findByCriteria(entity, Pet.entityManager(), criterias, baseSearch);
        
        // Get datatables required counts
        long totalRecords = searchResult.getTotalCount();
        long recordsFound = searchResult.getResultsCount();
        
        // Entity pk field name
        String pkFieldName = "id";
        
        DataSet<Map<String, String>> dataSet = DatatablesUtils.populateDataSet(searchResult.getResults(), pkFieldName, totalRecords, recordsFound, criterias.getColumnDefs(), null, conversionService_dtt); 
        return DatatablesResponse.build(dataSet,criterias);
    }
    
    @RequestMapping(headers = "Accept=application/json", value = "/datatables/ajax", params = "ajax_find=ByNameAndWeight", produces = "application/json")
    @ResponseBody
    public DatatablesResponse<Map<String, String>> PetController.findPetsByNameAndWeight(@DatatablesParams DatatablesCriterias criterias, @RequestParam("name") String name, @RequestParam("weight") Float weight) {
        BooleanBuilder baseSearch = new BooleanBuilder();
        
        // Base Search. Using BooleanBuilder, a cascading builder for
        // Predicate expressions
        PathBuilder<Pet> entity = new PathBuilder<Pet>(Pet.class, "entity");
        
        baseSearch.and(entity.getString("name").eq(name));
        baseSearch.and(entity.getNumber("weight", Float.class).eq(weight));
        
        SearchResults<Pet> searchResult = DatatablesUtils.findByCriteria(entity, Pet.entityManager(), criterias, baseSearch);
        
        // Get datatables required counts
        long totalRecords = searchResult.getTotalCount();
        long recordsFound = searchResult.getResultsCount();
        
        // Entity pk field name
        String pkFieldName = "id";
        
        DataSet<Map<String, String>> dataSet = DatatablesUtils.populateDataSet(searchResult.getResults(), pkFieldName, totalRecords, recordsFound, criterias.getColumnDefs(), null, conversionService_dtt); 
        return DatatablesResponse.build(dataSet,criterias);
    }
    
    @RequestMapping(value = "/exportcsv", produces = "text/csv")
    public void PetController.exportCsv(@DatatablesParams DatatablesCriterias criterias, @ModelAttribute Pet pet, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ExportException {
        export(criterias, pet, ExportType.CSV, new CsvExport(), request, response);
    }
    
    @RequestMapping(value = "/exportpdf", produces = "text/pdf")
    public void PetController.exportPdf(@DatatablesParams DatatablesCriterias criterias, @ModelAttribute Pet pet, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ExportException {
        export(criterias, pet, ExportType.PDF, new PdfExport(), request, response);
    }
    
    @RequestMapping(value = "/exportxls", produces = "text/xls")
    public void PetController.exportXls(@DatatablesParams DatatablesCriterias criterias, @ModelAttribute Pet pet, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ExportException {
        export(criterias, pet, ExportType.XLS, new XlsExport(), request, response);
    }
    
    @RequestMapping(value = "/exportxlsx", produces = "text/xlsx")
    public void PetController.exportXlsx(@DatatablesParams DatatablesCriterias criterias, @ModelAttribute Pet pet, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ExportException {
        export(criterias, pet, ExportType.XLSX, new XlsxExport(), request, response);
    }
    
    @RequestMapping(value = "/exportxml", produces = "text/xml")
    public void PetController.exportXml(@DatatablesParams DatatablesCriterias criterias, @ModelAttribute Pet pet, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ExportException {
        export(criterias, pet, ExportType.XML, new XmlExport(), request, response);
    }
    
    private void PetController.export(DatatablesCriterias criterias, Pet pet, ExportType exportType, DatatablesExport datatablesExport, HttpServletRequest request, HttpServletResponse response) throws ExportException {
        // Does the export process as is explained in http://dandelion.github.io/datatables/tutorials/export/controller-based-exports.html
        // 1. Retrieve the data
        List<Map<String, String>> data = retrieveData(criterias, pet, request);
        // 2. Build an instance of "ExportConf"
        ExportConf exportConf = new ExportConf.Builder(exportType).header(true).exportClass(datatablesExport).autoSize(true).fileName(pet.getClass().getSimpleName()).build();
        // 3. Build an instance of "HtmlTable"
        HtmlTable table = DatatablesUtils.makeHtmlTable(data, criterias, exportConf, request);
        // 4. Render the generated export file
        ExportUtils.renderExport(table, exportConf, response);
    }
    
    private List<Map<String, String>> PetController.retrieveData(DatatablesCriterias criterias, Pet pet, HttpServletRequest request) {
        // Cloned criteria in order to not paginate the results
        DatatablesCriterias noPaginationCriteria = new DatatablesCriterias(criterias.getSearch(), 0, null, criterias.getColumnDefs(), criterias.getSortingColumnDefs(), criterias.getInternalCounter());
        // Do the search to obtain the data
        Map<String, Object> baseSearchValuesMap = getPropertyMap(pet, request);
        setDatatablesBaseFilter(baseSearchValuesMap);
        org.gvnix.web.datatables.query.SearchResults<com.springsource.petclinic.domain.Pet> searchResult = DatatablesUtils.findByCriteria(Pet.class, Pet.entityManager(), noPaginationCriteria, baseSearchValuesMap);
        // Use ConversionService with the obtained data
        return DatatablesUtils.populateDataSet(searchResult.getResults(), "id", searchResult.getTotalCount(), searchResult.getResultsCount(), criterias.getColumnDefs(), null, conversionService_dtt).getRows();
    }
    
}
