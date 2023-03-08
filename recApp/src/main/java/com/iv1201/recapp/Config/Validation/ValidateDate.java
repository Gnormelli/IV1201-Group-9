package com.iv1201.recapp.Config.Validation;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.*;

@Target({ElementType.FIELD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Constraint(validatedBy = DateValidator.class)
public @interface ValidateDate {
    public String message() default "Date value invalid, dates must later than today's date";

    Class<?> [] groups() default {};
    Class<? extends Payload> [] payload() default {};
}