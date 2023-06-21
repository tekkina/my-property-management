package com.waa.domain.request;

import com.waa.domain.Address;
import com.waa.domain.Offer;

import java.time.LocalDate;
import java.util.List;

public record PropertyRequest(String title,
                              String description,
                              double price,
                              String numberOfBedRooms,
                              String numberOfBathRooms,
                              String imageUrl,
                              String propertyStatus,
                              Address address){}
