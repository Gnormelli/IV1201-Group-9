package com.iv1201.recapp.Models;

import jakarta.persistence.*;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;

/**
 * A user entity for the database named person
 */
@Entity
@Table(name = "person")
public class User implements UserDetails {
    @Id
    @SequenceGenerator(
            name = "user_sequence",
            sequenceName = "user_sequence",
            allocationSize = 1
    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "user_sequence"
    )
    @Column(
            name = "id",
            updatable = false
    )
    long id;
    @Column(
            name = "username",
            nullable = false,
            columnDefinition = "TEXT"
    )
    String username;
    @Column(
            name = "firstname",
            nullable = false,
            columnDefinition = "TEXT"
    )
    String firstname;
    @Column(
            name = "surname",
            nullable = false,
            columnDefinition = "TEXT"
    )
    String surname;

    @Column(
            name = "password",
            nullable = false,
            columnDefinition = "TEXT"
    )
    String password;

    @Column(
            name = "pnr",
            nullable = false,
            columnDefinition = "TEXT"
    )
    String pnr;

    @Column(
            name = "email",
            nullable = false,
            columnDefinition = "TEXT"
    )
    String email;
    @Column(
            name = "role_id",
            nullable = false,
            columnDefinition = "int"
    )
    int roleId;

    public User(long id, String username, String firstname, String surname, String password, String pnr, String email, int roleId) {
        this.id = id;
        this.username = username;
        this.firstname = firstname;
        this.surname = surname;
        this.password = password;
        this.pnr = pnr;
        this.email = email;
        this.roleId = roleId;
    }

    public User() {

    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

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

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
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
                ", roleId=" + roleId +
                '}';
    }

    @Override
    public boolean isAccountNonExpired() {
        return false;
    }

    @Override
    public boolean isAccountNonLocked() {
        return false;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return false;
    }

    @Override
    public boolean isEnabled() {
        return false;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return null;
    }

}
