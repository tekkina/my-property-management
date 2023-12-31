package com.propertymanagmnetportal.pmp.dto;

import com.propertymanagmnetportal.pmp.entity.Address;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserDTO {

   // private MultipartFile images;
    private String firstname;
    private String lastname;
    private String email;
    private String password;
    private String roleType;
    private String city;
    private String state;
    private String street_number;
    private String zip_code;


}
