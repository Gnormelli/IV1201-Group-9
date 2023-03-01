package com.iv1201.recapp.Models.AuthDTO;

import jakarta.validation.constraints.*;

public class RegisterRequestDTO {
    @Pattern(regexp = "^[\\w!#$%&'*+/=?`{|}~^-]+(?:\\." +
            "[\\w!#$%&'*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$"
            , message = "Please, check you email")
    private String email;

    @NotEmpty(message = "Password is missing")
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
