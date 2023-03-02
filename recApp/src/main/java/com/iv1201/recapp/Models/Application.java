package com.iv1201.recapp.Models;

import jakarta.persistence.*;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;

@Entity
@Table(name = "applications")
public class Application {

    @Id
    @Column(name = "id")
    @SequenceGenerator(
            name = "applications_sequence",
            sequenceName = "applications_sequence",
            allocationSize = 1
    ) @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "applications_sequence"
    )

    private Long id;

    @Column(
            name = "firstname",
            nullable = true,
            columnDefinition = "TEXT"
    )
    String firstname;


    @Column(
            name = "surname",
            nullable = true,
            columnDefinition = "TEXT"
    )
    String surname;

    @Column(
            name = "age",
            nullable = true,
            columnDefinition = "TEXT"
    )
    String age;

    @Column(
            name = "status",
            nullable = true,
            columnDefinition = "TEXT"
    )
    String status;

    public Application() {
    }


    public Application(Long id, String firstname, String surname, String age, String status) {
        this.id = id;
        this.firstname = firstname;
        this.surname = surname;
        this.age = age;
        this.status = status;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }



    @Override
    public String toString() {
        return "Application{" +
                "id=" + id +
                ", firstname='" + firstname + '\'' +
                ", surname='" + surname + '\'' +
                ", age='" + age + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
