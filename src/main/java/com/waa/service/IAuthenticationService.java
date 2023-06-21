package com.waa.service;

import com.waa.auth.*;
import com.waa.exceptions.UserNotFoundException;
import com.waa.exceptions.PasswordNotMatchException;
import com.waa.exceptions.UserAlreadyExistsException;
import org.springframework.http.ResponseEntity;

public interface IAuthenticationService {


    LoginResponse authenticate(LoginRequest authenticationRequest) throws UserNotFoundException;

    RegisterResponse register(RegisterRequest registerRequest)
            throws UserAlreadyExistsException, PasswordNotMatchException;

    ApproveResponse approve(Integer userId) throws UserNotFoundException;
}
