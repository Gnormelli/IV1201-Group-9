package com.iv1201.recapp.Integration;

import com.iv1201.recapp.Models.Availability;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AvailabilityRepo extends JpaRepository<Availability, Long> {
 // from_date, to-date, fk_id_person
}
