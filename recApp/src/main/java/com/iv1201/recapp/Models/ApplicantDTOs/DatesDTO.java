package com.iv1201.recapp.Models.ApplicantDTOs;

import com.iv1201.recapp.Config.Validation.ValidateDate;
import jakarta.validation.constraints.Pattern;

import java.util.Date;

public class DatesDTO {
    @Pattern(regexp = "([12]\\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\\d|3[01]))")
    String from_date;
    @Pattern(regexp = "([12]\\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\\d|3[01]))")
    String to_date;

    public DatesDTO() {
    }

    public DatesDTO(String from_date, String to_date) {
        this.from_date = from_date;
        this.to_date = to_date;
    }

    public String getFrom_date() {
        return from_date;
    }

    public String getTo_date() {
        return to_date;
    }

    @Override
    public String toString() {
        return "DatesDTO{" +
                "from_date=" + from_date +
                ", to_date=" + to_date +
                '}';
    }
}
