package com.waa.service;

import com.waa.domain.Property;
import com.waa.domain.request.PropertyRequest;

import java.util.List;

public interface IPropertyService {
    void add(PropertyRequest propertyRequest);

    List<Property> findAll();
}
