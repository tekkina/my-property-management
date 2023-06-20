package com.propertymanagmnetportal.pmp.service.Impl;

import com.propertymanagmnetportal.pmp.controller.UaaController;
import com.propertymanagmnetportal.pmp.dto.ChangePasswordDto;
import com.propertymanagmnetportal.pmp.entity.User;
import com.propertymanagmnetportal.pmp.repository.UserBaseRepository;
import com.propertymanagmnetportal.pmp.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    UserBaseRepository userBaseRepository;

    @Autowired
    BCryptPasswordEncoder passwordEncoder;
    @Override
    public void activiateDeactivate(int id) {
       userBaseRepository.updateActiveStatus(id);
    }

    @Override
    @Transactional
    public void changePassword(ChangePasswordDto changePasswordDto) {
        User user = userBaseRepository.findById(changePasswordDto.getId()).orElseThrow();
        user.setPassword(passwordEncoder.encode(changePasswordDto.getNewPassword()));
    }
}
