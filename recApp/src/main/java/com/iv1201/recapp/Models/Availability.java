package com.iv1201.recapp.Models;

import com.iv1201.recapp.Config.Validation.ValidateDate;
import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table()
public class Availability {
    @Id
    @SequenceGenerator(
            name = "availability_sequence",
            sequenceName = "availability_sequence",
            allocationSize = 1,
            initialValue=21000
    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "availability_sequence"
    )
    @Column(
            name = "availability_id",
            updatable = false
    )
    long id;

    @ManyToOne
    @JoinColumn(name = "fk_id_person")
    User user;

//    @ValidateDate
    @Column(
            name = "from_date",
            columnDefinition = "DATE"
    )
    String fromDate;

//    @ValidateDate
    @Column(
            name = "to_date",
            columnDefinition = "DATE"
    )
    String toDate;

    public Availability() {
    }

    public Availability(User user, String fromDate, String toDate) {
        this.user = user;
        this.fromDate = fromDate;
        this.toDate = toDate;
    }

    public long getId() {
        return id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getFromDate() {
        return fromDate;
    }

    public void setFromDate(String fromDate) {
        this.fromDate = fromDate;
    }

    public String getToDate() {
        return toDate;
    }

    public void setToDate(String toDate) {
        this.toDate = toDate;
    }

    @Override
    public String toString() {
        return "Availability{" +
                "user=" + user +
                ", fromDate=" + fromDate +
                ", toDate=" + toDate +
                '}';
    }
}
