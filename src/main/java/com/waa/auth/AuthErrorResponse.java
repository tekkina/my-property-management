package com.waa.auth;

import lombok.*;

@Data
@Builder
@AllArgsConstructor
public class AuthErrorResponse {
    private boolean success;
    private String message;
}
