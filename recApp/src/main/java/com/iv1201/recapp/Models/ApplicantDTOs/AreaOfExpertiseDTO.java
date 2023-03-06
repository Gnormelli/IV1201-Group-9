package com.iv1201.recapp.Models.ApplicantDTOs;

import jakarta.validation.constraints.*;

import java.math.BigDecimal;

public class AreaOfExpertiseDTO {

    @Min(1)
    @Max(3)
    Long areaOfExpertiseID;

    @NotNull
    @DecimalMin(value = "0.0", inclusive = false)
    @Digits(integer=2, fraction=2)
    BigDecimal yearsOfExperience;

    public AreaOfExpertiseDTO() {
    }

    public AreaOfExpertiseDTO(Long areaOfExpertiseID, BigDecimal yearsOfExperience) {
        this.areaOfExpertiseID = areaOfExpertiseID;
        this.yearsOfExperience = yearsOfExperience;
    }

    public Long getAreaOfExpertiseID() {
        return areaOfExpertiseID;
    }

    public BigDecimal getYearsOfExperience() {
        return yearsOfExperience;
    }

    @Override
    public String toString() {
        return "AreaOfExpertiseDTO{" +
                "areaOfExpertiseID=" + areaOfExpertiseID +
                ", yearsOfExperience='" + yearsOfExperience + '\'' +
                '}';
    }
}
