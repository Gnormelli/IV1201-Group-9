package com.iv1201.recapp.Models.AuthDTO;

import javax.validation.constraints.Email;

public class RegisterRequestDTO {
    @Email(message = "Not an email")
    private String email;
    private String password;

    public RegisterRequestDTO() {
    }

    public RegisterRequestDTO(String email,
                              String password) {
        this.email = email;
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "RegisterRequest{" +
                "email='" + email + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
