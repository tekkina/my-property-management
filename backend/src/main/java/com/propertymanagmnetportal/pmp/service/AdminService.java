package com.propertymanagmnetportal.pmp.service;

import com.propertymanagmnetportal.pmp.dto.ChangePasswordDto;

public interface AdminService {
    void activiateDeactivate(int id);

    void changePassword(ChangePasswordDto changePasswordDto);
}
