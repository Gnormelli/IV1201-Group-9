package com.iv1201.recapp.Models;

import jakarta.persistence.*;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import java.util.Collection;
import java.util.Collections;

/**
 * POJO for Users.
 */

@Entity
@Table(name = "person")
public class User implements UserDetails {
    @Id
    @SequenceGenerator(
            name = "person_sequence",
            sequenceName = "person_sequence",
            allocationSize = 1
    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "person_sequence"
    )
    @Column(
            name = "person_id",
            updatable = false
    )
    long id;


    @Column(
            name = "username",
            nullable = true,
            unique=true,
            columnDefinition = "TEXT"
    )
    String username;
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

    @NotEmpty(message = "Password cannot be empty")
    @Column(
            name = "password",
            nullable = false,
            columnDefinition = "TEXT"
    )
    String password;

    @Column(
            name = "pnr",
            nullable = true,
            unique=true,
            columnDefinition = "TEXT"
    )
    String pnr;

    @Email(message = "Not an email")
    @Column(
            name = "email",
            nullable = false,
            columnDefinition = "TEXT"
    )
    String email;
    @ManyToOne
    @JoinColumn(name = "fk_id_role")
    Role userRole;

    /**
     * Empty constructor
     */
    public User() {
    }

    /**
     * Constructor for creating Users
     * @param username of User
     * @param firstname of User
     * @param surname of User
     * @param password of User
     * @param pnr of User
     * @param email of User
     * @param userRole of User
     */
    public User(String username,
                String firstname,
                String surname,
                String password,
                String pnr,
                String email,
                Role userRole) {
        this.username = username;
        this.firstname = firstname;
        this.surname = surname;
        this.password = password;
        this.pnr = pnr;
        this.email = email;
        this.userRole = userRole;
    }

    @Override
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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

    @Override
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPnr() {
        return pnr;
    }

    public void setPnr(String pnr) {
        this.pnr = pnr;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Role getUserRole() {
        return userRole;
    }

    public void setUserRole(Role userRole) {
        this.userRole = userRole;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", firstname='" + firstname + '\'' +
                ", surname='" + surname + '\'' +
                ", password='" + password + '\'' +
                ", pnr='" + pnr + '\'' +
                ", email='" + email + '\'' +
                ", userRole=" + userRole +
                '}';
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        SimpleGrantedAuthority authority = new SimpleGrantedAuthority(
                "ROLE_"+ userRole.getRoleName());
        return Collections.singletonList(authority);
    }

}