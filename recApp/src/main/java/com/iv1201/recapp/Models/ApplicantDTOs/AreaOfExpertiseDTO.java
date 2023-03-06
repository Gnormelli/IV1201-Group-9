package com.iv1201.recapp.Models.ApplicantDTOs;

import jakarta.validation.constraints.*;

import java.math.BigDecimal;

public class AreaOfExpertiseDTO {

    @Min(1)
    @Max(3)
    Long option;

    @NotNull
    @DecimalMin(value = "0.0", inclusive = false)
    @Digits(integer=2, fraction=2)
    BigDecimal year;

    public AreaOfExpertiseDTO() {
    }

    public AreaOfExpertiseDTO(Long option, BigDecimal years) {
        this.option = option;
        this.years = years;
    }

    public Long getOption() {
        return option;
    }

    public BigDecimal getYears() {
        return years;
    }

    @Override
    public String toString() {
        return "AreaOfExpertiseDTO{" +
                "option=" + option +
                ", years='" + years + '\'' +
                '}';
    }
}
