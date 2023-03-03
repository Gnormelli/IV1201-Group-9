package com.iv1201.recapp.Service;

import com.iv1201.recapp.Config.Exceptions.ApplicationDTOStatusException;
import com.iv1201.recapp.Integration.ApplicantRepo;
import com.iv1201.recapp.Models.Application;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Objects;

import static java.lang.Long.parseLong;

@Service
@Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRES_NEW)
public class RecruiterService {
    @Autowired
    private ApplicantRepo applicantRepo;
    public List<Application> applicants() throws ApplicationDTOStatusException {
        List<Application> applicant = null;
        try {
            applicant = applicantRepo.findAllApplicants();
            if(applicant.size() == 0){
                throw new IllegalArgumentException();
            }
        }catch (Exception e ){
            throw new ApplicationDTOStatusException("ApplicationDTO: " +
                    "Could not find applicants");
        }
        return applicant;
    }

    public void updateStatus(String id, String status) throws ApplicationDTOStatusException {
        Long long_id = parseLong(id);

        if (status == null) {
            throw new ApplicationDTOStatusException("ApplicationDTO " +
                    "Status value cannot be null");
        }

        try {
            List<Application> applicants = applicantRepo.findAllApplicants();
            for (Application application : applicants) {
                if (Objects.equals(application.getId(), long_id)) {
                    application.setStatus(status);
                    applicantRepo.save(application);
                }
            }
        }catch (Exception e){
            throw new ApplicationDTOStatusException("ApplicationDTO " +
                    "Status value could not be updated");
        }
    }
}
