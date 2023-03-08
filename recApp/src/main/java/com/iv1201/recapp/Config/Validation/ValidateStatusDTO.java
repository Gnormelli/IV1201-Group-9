package com.iv1201.recapp.Config.Validation;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.*;

/**
 * Annotation for validation ValidateStatus
 */
@Target({ElementType.FIELD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Constraint(validatedBy = StatusDTOValidator.class)
public @interface ValidateStatusDTO {
    public String message() default "Status Value Invalid";

    Class<?> [] groups() default {};
    Class<? extends Payload> [] payload() default {};
}
