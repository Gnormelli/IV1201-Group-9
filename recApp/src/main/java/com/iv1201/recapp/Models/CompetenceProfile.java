package com.iv1201.recapp.Models;

import jakarta.persistence.*;

@Entity
@Table()
public class CompetenceProfile {
    @Id
    @SequenceGenerator(
            name = "competence_profile_sequence",
            sequenceName = "competence_profile_sequence",
            allocationSize = 1
    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "competence_profile_sequence"
    )
    @Column(
            name = "competence_profile_id",
            updatable = false
    )
    private long id;

    @ManyToOne
    @JoinColumn(name = "fk_id_person")
    private User user;

    @ManyToOne
    @JoinColumn(name = "fk_id_competence")
    private Competence competence;

    @Column(
            name = "years_of_experience",
            columnDefinition = "INTEGER"
    )
    private int yearsOfExperience;

    @Column(
            name = "status",
            columnDefinition = "TEXT"
    )
    private String status;

    public CompetenceProfile() {
    }

    public CompetenceProfile(User user,
                             Competence competence,
                             int yearsOfExperience,
                             String status) {
        this.user = user;
        this.competence = competence;
        this.yearsOfExperience = yearsOfExperience;
        this.status = status;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Competence getCompetence() {
        return competence;
    }

    public void setCompetence(Competence competence) {
        this.competence = competence;
    }

    public int getYearsOfExperience() {
        return yearsOfExperience;
    }

    public void setYearsOfExperience(int yearsOfExperience) {
        this.yearsOfExperience = yearsOfExperience;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}