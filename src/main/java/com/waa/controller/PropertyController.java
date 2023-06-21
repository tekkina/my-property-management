package com.waa.controller;

import com.waa.domain.request.PropertyRequest;
import com.waa.service.PropertyService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/properties")
public class PropertyController {
    @Autowired
    PropertyService propertyService;
    @PostMapping
    @PreAuthorize("hasRole('OWNER')")
    @ResponseStatus(HttpStatus.CREATED)
    public void add(@RequestBody PropertyRequest propertyRequest){
        propertyService.add(propertyRequest);
    }
}
