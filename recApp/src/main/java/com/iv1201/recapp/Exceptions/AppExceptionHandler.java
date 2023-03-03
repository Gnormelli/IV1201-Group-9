package com.iv1201.recapp.Exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.util.HashMap;
import java.util.Map;


@RestControllerAdvice
public class AppExceptionHandler {

    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public Map<String, String> handleInvalidArgument(MethodArgumentNotValidException e){
        Map<String, String> expMap = new HashMap<>();
        e.getBindingResult().getFieldErrors().forEach(error -> {
            expMap.put(error.getField(), error.getDefaultMessage());
        });
        return expMap;
    }

    @ExceptionHandler(NoSuchFieldError.class)
    public Map<String, String> handleInvalidArgument(NoSuchFieldError e){
        Map<String, String> expMap = new HashMap<>();
        System.out.println(e.getMessage());
        expMap.put("ErrorMessage", e.getMessage());

        return ResponseEntity.status(403).body(expMap).getBody();
    }

    @ExceptionHandler(EmailNotFoundException.class)
    public ResponseEntity handleBusinessException(EmailNotFoundException e){
        Map<String, String> expMap = new HashMap<>();
        System.out.println(e.getMessage());
        expMap.put("ErrorMessage", e.getMessage());

        return ResponseEntity.status(403).body(expMap);
    }

    @ExceptionHandler(EmailAllreadyExcistsException.class)
    public ResponseEntity handleBusinessException(EmailAllreadyExcistsException e){
        Map<String, String> expMap = new HashMap<>();
        System.out.println(e.getMessage());
        expMap.put("ErrorMessage", e.getMessage());

        return ResponseEntity.status(406).body(expMap);
    }
}
