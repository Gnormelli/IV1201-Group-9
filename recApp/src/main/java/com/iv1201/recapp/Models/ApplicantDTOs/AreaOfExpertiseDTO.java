package com.iv1201.recapp.Models.ApplicantDTOs;

public class AreaOfExpertiseDTO {
    int areaOfExpertiseID;
    String yearsOfExperience;

    public AreaOfExpertiseDTO() {
    }

    public AreaOfExpertiseDTO(int areaOfExpertiseID, String yearsOfExperience) {
        this.areaOfExpertiseID = areaOfExpertiseID;
        this.yearsOfExperience = yearsOfExperience;
    }

    public int getAreaOfExpertiseID() {
        return areaOfExpertiseID;
    }

    public String getYearsOfExperience() {
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
