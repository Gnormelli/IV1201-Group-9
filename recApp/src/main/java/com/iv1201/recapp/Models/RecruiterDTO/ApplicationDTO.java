package com.iv1201.recapp.Models.RecruiterDTO;

import com.iv1201.recapp.Validation.ValidateApplicationDTOStatus;
import jakarta.validation.constraints.NotEmpty;

public class ApplicationDTO {
    @NotEmpty(message = "ApplictionDTO id does not exist")
    private String id;

    @ValidateApplicationDTOStatus
    private String status;

    public ApplicationDTO() {
    }

    public ApplicationDTO(String id, String status) {
        this.id = id;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "ApplicationDTO{" +
                "id=" + id +
                ", status='" + status + '\'' +
                '}';
    }
}
