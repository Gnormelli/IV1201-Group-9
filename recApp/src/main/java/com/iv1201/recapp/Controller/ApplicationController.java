package com.iv1201.recapp.Controller;

import com.iv1201.recapp.Integration.ApplicantRepo;
import com.iv1201.recapp.Models.Applications;
import com.iv1201.recapp.Models.auth.AuthRequest;
import com.iv1201.recapp.Models.auth.AuthResponse;
import com.iv1201.recapp.Models.auth.RegisterRequest;
import com.iv1201.recapp.Service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/auth")
public class ApplicationController {
    @Autowired
    private AuthService authService;
    @Autowired
    private ApplicantRepo applicantRepo;
    //@GetMapping("/applicants")
    //public ResponseEntity<List<Applications>> getAllApplicants() {

      //  List<Applications> applicants = applicantRepo.findAllApplicants(); // call your custom method to retrieve all applicants
        //return ResponseEntity.ok(applicants);
    //}

    @GetMapping("/applicants")
    @PreAuthorize("hasRole('ROLE_RECRUITER')")
    public ResponseEntity<List<Applications>> getAllApplicants(){
        return ResponseEntity.ok(authService.applicants());
    }

}
