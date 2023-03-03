package com.iv1201.recapp.Exceptions;

import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class EmailNotFoundException extends UsernameNotFoundException {
    public EmailNotFoundException(String message) {
        super(message);
    }
}