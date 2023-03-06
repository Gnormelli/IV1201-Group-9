package com.iv1201.recapp.Models.ApplicantDTOs;

import com.iv1201.recapp.Config.Validation.ValidateDate;
import jakarta.validation.constraints.Pattern;

import java.util.Date;

public class DatesDTO {
    @Pattern(regexp = "([12]\\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\\d|3[01]))")
    String startDate;
    @Pattern(regexp = "([12]\\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\\d|3[01]))")
    String endDate;

    public DatesDTO() {
    }

    public DatesDTO(String startDate, String endDate) {
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public String getStartDate() {
        return startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    @Override
    public String toString() {
        return "DatesDTO{" +
                "startDate=" + startDate +
                ", endDate=" + endDate +
                '}';
    }
}
