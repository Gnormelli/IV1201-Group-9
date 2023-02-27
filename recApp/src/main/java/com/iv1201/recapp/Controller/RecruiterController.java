package com.iv1201.recapp.Controller;

import com.iv1201.recapp.Integration.ApplicantRepo;
import com.iv1201.recapp.Models.Application;
import com.iv1201.recapp.Service.ApplicationService;
import com.iv1201.recapp.Service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/recruiters")
public class RecruiterController {
    @Autowired
    private ApplicationService applicationService;

    @GetMapping("/applicants" )
    public ResponseEntity<List<Application>> getAllApplicants(){
        return ResponseEntity.ok(applicationService.applicants());
    }

}
