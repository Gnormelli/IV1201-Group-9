package com.iv1201.recapp.Controller;

import com.iv1201.recapp.Integration.ApplicantRepo;
import com.iv1201.recapp.Models.Application;
import com.iv1201.recapp.Models.auth.AuthRequest;
import com.iv1201.recapp.Models.auth.AuthResponse;
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

    @GetMapping("/applicants")
    public ResponseEntity<List<Application>> getAllApplicants() {
        return ResponseEntity.ok(applicationService.applicants());
    }


    @PostMapping("/status")
    public ResponseEntity<String> setStatus(@RequestBody Application application) {

        System.out.println("STATUS: " + application.getStatus());

        if (application.getStatus() == null) {
            return ResponseEntity.badRequest().body("Status value cannot be null");
        }

        boolean updated = applicationService.updateStatus(application.getId(), application.getStatus());

        if (updated) {
            return ResponseEntity.ok("Status updated successfully");
        } else {
            return ResponseEntity.badRequest().body("Invalid ID or status value");
        }

    }
}


