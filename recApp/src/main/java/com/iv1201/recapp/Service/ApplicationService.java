package com.iv1201.recapp.Service;

import com.iv1201.recapp.Config.Exceptions.CouldNotFindCompetencesException;
import com.iv1201.recapp.Integration.AvailabilityRepo;
import com.iv1201.recapp.Integration.CompetenceRepo;
import com.iv1201.recapp.Integration.UserRepo;
import com.iv1201.recapp.Models.ApplicantDTOs.ApplicationDTO;

import com.iv1201.recapp.Models.ApplicantDTOs.DatesDTO;
import com.iv1201.recapp.Models.Competence;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.List;

@Service
@Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRES_NEW)
public class ApplicationService {

    @Autowired
    private CompetenceRepo competenceRepo;

    @Autowired
    private UserRepo userRepo;

    @Autowired
    private AvailabilityRepo availabilityRepo;

    public List<Competence> getAllCompetence() throws CouldNotFindCompetencesException {
        List<Competence> competences = null;

        try {
            competences = competenceRepo.findAllCompetences();
            if(competences.size() == 0){
                throw new IllegalArgumentException();
            }
        }catch (Exception e ){
            throw new CouldNotFindCompetencesException("Failed to fetch competences");
        }
        return competences;
    }

    public void submitApplication(ApplicationDTO applicationDTO) {
        System.out.println(applicationDTO);
//        for(applicationDTO.getDatesDTOList())
        List<DatesDTO> datesDTOList= applicationDTO.getDatesDTOList();
        for(DatesDTO dates: datesDTOList){
            System.out.println(dates);
        }
        System.out.println(Arrays.toString(applicationDTO.getDatesDTOList().toArray()));
        System.out.println(Arrays.toString(applicationDTO.getAreaOfExpertiseDTOList().toArray()));
    }
}



