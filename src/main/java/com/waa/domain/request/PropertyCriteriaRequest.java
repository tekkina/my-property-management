package com.waa.domain.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

public record PropertyCriteriaRequest(
        String description,
        Integer minPrice,
        Integer maxPrice,
        String city,
        String state,
        String zip)
{}
