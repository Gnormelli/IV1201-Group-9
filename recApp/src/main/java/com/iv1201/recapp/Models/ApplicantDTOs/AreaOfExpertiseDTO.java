package com.iv1201.recapp.Models.ApplicantDTOs;

public class AreaOfExpertiseDTO {
    String option;
    float years;

    public AreaOfExpertiseDTO() {
    }

    public AreaOfExpertiseDTO(String option, float years) {
        this.option = option;
        this.years = years;
    }

    public String getOption() {
        return option;
    }

    public float getYears() {
        return years;
    }

    public float getYearsOfExperience() {
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
