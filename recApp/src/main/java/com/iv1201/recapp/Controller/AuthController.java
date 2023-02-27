package com.iv1201.recapp.Controller;

import com.iv1201.recapp.Exceptions.EmailNotFoundException;
import com.iv1201.recapp.Models.auth.AuthRequest;
import com.iv1201.recapp.Models.auth.AuthResponse;
import com.iv1201.recapp.Models.auth.RegisterRequest;
import com.iv1201.recapp.Service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

/**
 * Controller for Authentication of user.
 */
@RestController
@RequestMapping("/api/v1/auth")
public class AuthController {
    @Autowired
    private AuthService authService;

    /**
     * End-point for signing up new users.
     * @param registerRequest defines the data needed to signing up new user.
     * @return A <code>ResponseEntity</code> if OK with token and role for the newly created user.
     */
    @PostMapping("/signup")
    public ResponseEntity<AuthResponse> signup(
            @RequestBody RegisterRequest registerRequest
    ){
        return ResponseEntity.ok(authService.register(registerRequest));
    }

    /**
     * End-point for authenticating user that want to access the rest of
     * the program.
     * @param authRequest defines the data needed to authenticate the user.
     * @return A <code>ResponseEntity</code> if OK with new token and role of user.
     */
    @PostMapping("/authenticate")
    public ResponseEntity<AuthResponse> authenticate(
            @RequestBody AuthRequest authRequest
    ) throws EmailNotFoundException {

        return ResponseEntity.ok(authService.authenticate(authRequest));
    }

    @PostMapping("/refresh")
    public ResponseEntity<AuthResponse> refresh(
            @RequestBody AuthRequest authRequest
    ) throws EmailNotFoundException {
        return ResponseEntity.ok(authService.authenticate(authRequest));
    }

}
