package com.waa.auth;

import lombok.Data;
import lombok.Builder;
import lombok.AllArgsConstructor;

@Data
@Builder
@AllArgsConstructor
public class ApproveResponse {
    private boolean success;
    private String message;
}
