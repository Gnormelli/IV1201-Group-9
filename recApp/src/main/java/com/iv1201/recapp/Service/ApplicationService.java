package com.iv1201.recapp.Service;

import com.iv1201.recapp.Integration.ApplicantRepo;
import com.iv1201.recapp.Models.Application;
import com.iv1201.recapp.Models.auth.AuthResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ApplicationService {
    @Autowired
    private ApplicantRepo applicantRepo;
    public List<Application> applicants() {
        List<Application> applicant = applicantRepo.findAllApplicants();

        if(applicant == null){
            throw new IllegalArgumentException();
        }
        //Collection<SimpleGrantedAuthority> authority = new ArrayList<>();
        //SimpleGrantedAuthority simpleGrantedAuthority= new SimpleGrantedAuthority();
        //authority.add(simpleGrantedAuthority);
        return applicant;
    }

    public boolean updateStatus(Long id, String status){
        List<Application> applicants = applicantRepo.findAllApplicants();
        for (Application application : applicants) {
            if (application.getId() == id) {
                application.setStatus(status);
                applicantRepo.save(application);
                return true;
            }
        }
        return false;
    }
    }



