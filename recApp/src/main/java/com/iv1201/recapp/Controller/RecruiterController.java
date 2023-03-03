package com.iv1201.recapp.Controller;

import com.iv1201.recapp.Config.Exceptions.ApplicationDTOStatusException;
import com.iv1201.recapp.Models.Application;
import com.iv1201.recapp.Service.RecruiterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/recruiters")
public class RecruiterController {
    @Autowired
    private RecruiterService recruiterService;

    @GetMapping("/applicants")
    public ResponseEntity<List<Application>> getAllApplicants()
            throws ApplicationDTOStatusException {
        return ResponseEntity.ok(recruiterService.applicants());
    }

//    @PostMapping("/status")
//    public ResponseEntity<String> setStatus(@RequestBody @Valid ApplicationDTO application)
//            throws ApplicationDTOStatusException {
//
//        recruiterService.updateStatus(application.getId(), application.getStatus());
//        return ResponseEntity.ok("Status updated successfully");
//
//    }
}

