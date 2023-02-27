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
public class ApplicationExceptionHandler {

    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public Map<String, String> handleInvalidArgument(MethodArgumentNotValidException e){
        Map<String, String> expMap = new HashMap<>();
        e.getBindingResult().getFieldErrors().forEach(error -> {
            expMap.put(error.getField(), error.getDefaultMessage());
        });
        return expMap;
    }

//    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(EmailNotFoundException.class)
    public ResponseEntity handleBusinessException(EmailNotFoundException e){
        Map<String, String> expMap = new HashMap<>();
        expMap.put("ErrorMessage", e.getMessage());

        return ResponseEntity.status(403).body(expMap);
//        return expMap;
    }
}
