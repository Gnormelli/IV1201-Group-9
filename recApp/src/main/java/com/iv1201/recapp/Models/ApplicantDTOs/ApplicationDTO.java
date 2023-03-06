package com.iv1201.recapp.Models.ApplicantDTOs;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Pattern;

import java.util.List;

public class ApplicationDTO {

    @NotEmpty(message = "Please, provide fist name")
    String firstName;

    @NotEmpty(message = "Please, provide surname")
    String lastName;
    
    @Pattern(regexp = "^(\\d{10}|\\d{12}|\\d{6}-\\d{4}|\\d{8}-\\d{4}|\\d{8} \\d{4}|\\d{6} \\d{4})"
            , message = "Please, Check your personal number"
    )
    String personalNumber;

    List<AreaOfExpertiseDTO> items;
    List<AreaOfExpertiseDTO> years;
    List<DatesDTO> dateRanges;

    public ApplicationDTO() {
    }

    public ApplicationDTO(String firstName,
                          String lastName,
                          String personalNumber,
                          List<AreaOfExpertiseDTO> items,
                          List<AreaOfExpertiseDTO> years,
                          List<DatesDTO> dateRanges) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.personalNumber = personalNumber;
        this.items = items;
        this.dateRanges = dateRanges;
        this.years = years;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getPersonalNumber() {
        return personalNumber;
    }


    public List<AreaOfExpertiseDTO> getItems() {
        return items;
    }

    public List<AreaOfExpertiseDTO> getYears() {
        return years;
    }

    public List<DatesDTO> getDateRanges() {
        return dateRanges;
    }


    @Override
    public String toString() {
        return "ApplicationDTO{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", personalNumber='" + personalNumber + '\'' +
                ", items=" + items +
                ", dateRanges=" + dateRanges +
                '}';
    }
}
