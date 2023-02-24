package com.iv1201.recapp.Integration;

import com.iv1201.recapp.Models.Applications;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ApplicantRepo extends JpaRepository<Applications, Long> {

    @Query("SELECT a FROM Applications a")
    List<Applications> findAllApplicants();

}