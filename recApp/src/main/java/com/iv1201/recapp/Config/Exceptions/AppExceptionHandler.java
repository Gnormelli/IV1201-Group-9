package com.iv1201.recapp.Config.Exceptions;

import jakarta.validation.ConstraintViolationException;
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

    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(ConstraintViolationException.class)
    public Map<String, String> handleInvalidArgument(ConstraintViolationException e){
        Map<String, String> expMap = new HashMap<>();
        e.getConstraintViolations().forEach(error -> {
            expMap.put(error.getPropertyPath().toString(), error.getMessageTemplate());
        });
        return expMap;
    }

    @ExceptionHandler(RuntimeException.class)
    public ResponseEntity<ExceptionsDTO> handleInvalidArgument(RuntimeException e){
        return ResponseEntity.status(500).body(new ExceptionsDTO(e.getMessage()));
    }

    @ExceptionHandler(NoSuchFieldError.class)
    public Map<String, String> handleInvalidArgument(NoSuchFieldError e){
        Map<String, String> expMap = new HashMap<>();
        System.out.println(e.getMessage());
        expMap.put("ErrorMessage", e.getMessage());

        return ResponseEntity.status(403).body(expMap).getBody();
    }

    @ExceptionHandler(TokenExpiredException.class)
    public ResponseEntity<String> handleBusinessException(TokenExpiredException e){
        Map<String, String> expMap = new HashMap<>();
        System.out.println(e.getMessage());
        expMap.put("ErrorMessage", e.getMessage());

        return ResponseEntity.status(403).body(expMap.toString());
    }

    @ExceptionHandler(EmailNotFoundException.class)
    public ResponseEntity<String> handleBusinessException(EmailNotFoundException e){
        Map<String, String> expMap = new HashMap<>();
        System.out.println(e.getMessage());
        expMap.put("ErrorMessage", e.getMessage());

        return ResponseEntity.status(403).body(expMap.toString());
    }

    @ExceptionHandler(EmailAllreadyExcistsException.class)
    public ResponseEntity<String> handleBusinessException(EmailAllreadyExcistsException e){
        Map<String, String> expMap = new HashMap<>();
        System.out.println(e.getMessage());
        expMap.put("ErrorMessage", e.getMessage());

        return ResponseEntity.status(406).body(expMap.toString());
    }

    @ExceptionHandler(CouldNotFindCompetencesException.class)
    public ResponseEntity<String> handleBusinessException(CouldNotFindCompetencesException e){
        Map<String, String> expMap = new HashMap<>();
        System.out.println(e.getMessage());
        expMap.put("ErrorMessage", e.getMessage());

        return ResponseEntity.status(500).body(expMap.toString());
    }

    @ExceptionHandler(ApplicationCouldNotSubmitException.class)
    public ResponseEntity<String> handleBusinessException(ApplicationCouldNotSubmitException e) {
        Map<String, String> expMap = new HashMap<>();
        System.out.println(e.getMessage());
        expMap.put("ErrorMessage", e.getMessage());

        return ResponseEntity.status(500).body(expMap.toString());
    }

    @ExceptionHandler(StatusDTOException.class)
    public ResponseEntity<ExceptionsDTO> handleBusinessException(StatusDTOException e){
        int statusCode = 400;
        if(e.getMessage().contains("updated")){
            statusCode = 500;
        }else if(e.getMessage().contains("Could not find get All Applicants")){
            statusCode = 500;
        }
        return ResponseEntity.status(statusCode).body(new ExceptionsDTO(e.getMessage()));
    }
}
