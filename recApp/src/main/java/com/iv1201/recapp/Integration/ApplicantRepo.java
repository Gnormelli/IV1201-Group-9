package com.iv1201.recapp.Integration;

import com.iv1201.recapp.Models.Application;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface ApplicantRepo extends JpaRepository<Application, Long> {

    @Query("SELECT a FROM Application a ORDER BY a.id ASC")
    List<Application> findAllApplicants();

}