package com.iv1201.recapp.Config.Validation;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;


public class DateValidator implements ConstraintValidator<ValidateDate, Date> {

    @Override
    public boolean isValid(Date dateStr, ConstraintValidatorContext constraintValidatorContext) {
        Date current = new Date();
        int compare = dateStr.compareTo(current);
        System.out.println(dateStr);
        System.out.println(current);

        if(compare <=0){
            return false;
        }
        return true;
    }
}
