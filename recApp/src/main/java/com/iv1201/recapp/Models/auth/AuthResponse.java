package com.iv1201.recapp.Models.auth;

public class AuthResponse {
    private String jwtToken;

    public AuthResponse() {
    }

    public AuthResponse(String jwtToken) {
        this.jwtToken = jwtToken;
    }

    public String getJwtToken() {
        return jwtToken;
    }

    public void setJwtToken(String jwtToken) {
        this.jwtToken = jwtToken;
    }

    @Override
    public String toString() {
        return "AuthenticationResponse{" +
                "jwtToken='" + jwtToken + '\'' +
                '}';
    }
}
