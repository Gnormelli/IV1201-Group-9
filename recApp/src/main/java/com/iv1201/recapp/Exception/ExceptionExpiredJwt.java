package com.iv1201.recapp.Exception;


import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Header;

public class ExceptionExpiredJwt extends ExpiredJwtException {

    public ExceptionExpiredJwt(Header header, Claims claims, String message) {
        super(header, claims, message);
    }

    public ExceptionExpiredJwt(Header header, Claims claims, String message, Throwable cause) {
        super(header, claims, message, cause);
    }
}
