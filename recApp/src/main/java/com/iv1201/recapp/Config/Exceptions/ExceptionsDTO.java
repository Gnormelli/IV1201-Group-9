package com.iv1201.recapp.Config.Exceptions;

public class ExceptionsDTO {
    String exceptionForClient;

    public ExceptionsDTO() {
    }

    public ExceptionsDTO(String exceptionForClient) {
        this.exceptionForClient = exceptionForClient;
    }

    public String getExceptionForClient() {
        return exceptionForClient;
    }

    public void setExceptionForClient(String exceptionForClient) {
        this.exceptionForClient = exceptionForClient;
    }

    @Override
    public String toString() {
        return "ExceptionsDTO{" +
                "exceptionForClient='" + exceptionForClient + '\'' +
                '}';
    }
}
