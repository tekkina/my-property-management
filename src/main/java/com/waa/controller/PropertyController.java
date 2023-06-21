package com.waa.controller;

import com.waa.domain.Property;
import com.waa.domain.request.PropertyCriteriaRequest;
import com.waa.domain.request.PropertyRequest;
import com.waa.repository.PropertyCriteriaRepository;
import com.waa.service.PropertyService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/properties")
public class PropertyController {
    @Autowired
    PropertyService propertyService;
    @Autowired
    PropertyCriteriaRepository propertyCriteriaRepository;
    @PostMapping
    @PreAuthorize("hasRole('OWNER')")
    @ResponseStatus(HttpStatus.CREATED)
    public void add(@RequestBody PropertyRequest propertyRequest){
        propertyService.add(propertyRequest);
    }

    @GetMapping
    @PreAuthorize("hasRole('OWNER') or hasRole('ADMIN')")
    List<Property> findAll(
            @RequestParam(value = "description", required=false ) String description,
            @RequestParam(value = "minPrice", required=false ) Integer minPrice,
            @RequestParam(value = "maxPrice", required=false ) Integer maxPrice,
            @RequestParam(value = "city", required=false ) String city,
            @RequestParam(value = "state", required=false ) String state,
            @RequestParam(value = "zip", required=false ) String zipCode
    ){
        if (description != null || minPrice != null || maxPrice != null || city != null || state != null || zipCode != null){
            var propertyCriteria = new PropertyCriteriaRequest(description, minPrice, maxPrice, city,state,zipCode);
            System.out.println(propertyCriteria);
            return propertyCriteriaRepository.findAllByCriteria(propertyCriteria);
        }
        return propertyService.findAll();
    }
}
