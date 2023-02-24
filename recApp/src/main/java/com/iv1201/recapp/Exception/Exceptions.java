package com.iv1201.recapp.Exception;

import org.springframework.http.HttpStatus;

import java.util.Date;

public class Exceptions {
    private final String message;
    private final Throwable throwable;
    private final HttpStatus httpStatus;
    private final Date date;

    public Exceptions(String message, Throwable throwable, HttpStatus httpStatus, Date date) {
        this.message = message;
        this.throwable = throwable;
        this.httpStatus = httpStatus;
        this.date = date;
    }

    public String getMessage() {
        return message;
    }

    public Throwable getThrowable() {
        return throwable;
    }

    public HttpStatus getHttpStatus() {
        return httpStatus;
    }

    public Date getDate() {
        return date;
    }
}
