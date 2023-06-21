package com.waa.controller;

import com.waa.auth.*;
import com.waa.exceptions.PasswordNotMatchException;
import com.waa.exceptions.UserNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import com.waa.service.AuthenticationService;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.bind.annotation.*;
import com.waa.exceptions.UserAlreadyExistsException;

@RestController
@RequestMapping("/api/v1/auth")
@RequiredArgsConstructor
public class AuthenticationController {
    private final AuthenticationService authenticationService;
    @GetMapping("/test")
    public String test(){
        return "Public test endpoint working! :)";
    }
    @PostMapping("/register")
    public ResponseEntity<?> register(
            @RequestBody RegisterRequest registerRequest
    ){
        try {
            return ResponseEntity.ok(authenticationService.register(registerRequest));
        }catch (UserAlreadyExistsException | PasswordNotMatchException e){
            var response = AuthErrorResponse.builder()
                    .success(false)
                    .message(e.getMessage())
                    .build();
            return ResponseEntity.status(HttpStatus.CONFLICT).body(response);
        }
    }

    @PostMapping("/login")
    public ResponseEntity<?> authenticate(
            @RequestBody LoginRequest authenticationRequest
    ){
        try {
            return ResponseEntity.ok(authenticationService.authenticate(authenticationRequest));
        }catch (UserNotFoundException e){
            var response = AuthErrorResponse.builder()
                    .success(false)
                    .message(e.getMessage())
                    .build();
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(response);
        }
    }

    @PostMapping("/{id}/approve")
    public ResponseEntity<?> approve(@PathVariable("id") Integer userId){
        try {
            var response = authenticationService.approve(userId);
            return ResponseEntity.ok().body(response);
        }catch (UserNotFoundException e){
            var response = ApproveResponse.builder()
                    .success(false)
                    .message(e.getMessage())
                    .build();
            return ResponseEntity
                    .status(HttpStatus.NOT_FOUND)
                    .body(response);
        }
    }
    @GetMapping("/logout")
    public String logout(){
        return "Logout ...";
    }
}
