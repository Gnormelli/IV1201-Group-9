package com.iv1201.recapp.Models.ApplicantDTOs;

import jakarta.validation.Valid;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Pattern;

import java.util.List;

public class ApplicationDTO {

    @NotEmpty(message = "Please, provide fist name")
    String firstname;

    @NotEmpty(message = "Please, provide surname")
    String lastname;
    
    @Pattern(regexp = "^(\\d{10}|\\d{12}|\\d{6}-\\d{4}|\\d{8}-\\d{4}|\\d{8} \\d{4}|\\d{6} \\d{4})"
            , message = "Please, Check your personal number"
    )
    String pnr;


    @Valid
    List<AreaOfExpertiseDTO> areaOfExpertiseDTOList;

    @Valid
    List<DatesDTO> datesDTOList;

    public ApplicationDTO() {
    }

    public ApplicationDTO(String firstname,
                          String lastname,
                          String pnr,
                          List<AreaOfExpertiseDTO> areaOfExpertiseDTOList,
                          List<DatesDTO> datesDTOList) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.pnr = pnr;
        this.areaOfExpertiseDTOList = areaOfExpertiseDTOList;
        this.datesDTOList = datesDTOList;
    }

    public String getFirstname() {
        return firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public String getPnr() {
        return pnr;
    }


    public List<AreaOfExpertiseDTO> getAreaOfExpertiseDTOList() {
        return areaOfExpertiseDTOList;
    }

    public List<DatesDTO> getDatesDTOList() {
        return datesDTOList;
    }

    @Override
    public String toString() {
        return "ApplicationDTO{" +
                "firstName='" + firstname + '\'' +
                ", lastName='" + lastname + '\'' +
                ", pnr='" + pnr + '\'' +
                ", areaOfExpertiseDTOList=" + areaOfExpertiseDTOList +
                ", datesDTOList=" + datesDTOList +
                '}';
    }
}
