package com.iv1201.recapp.Controller;

import com.iv1201.recapp.Models.auth.AuthRequest;
import com.iv1201.recapp.Models.auth.AuthResponse;
import com.iv1201.recapp.Models.auth.RegisterRequest;
import com.iv1201.recapp.Service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/v1/auth")
public class AuthController {
    @Autowired
    private AuthService authService;
    @PostMapping("/signup")
    public ResponseEntity<AuthResponse> signup(
            @RequestBody RegisterRequest registerRequest
    ){
        return ResponseEntity.ok(authService.register(registerRequest));
    }
    @PostMapping("/authenticate")
    public ResponseEntity<AuthResponse> authenticate(
            @RequestBody AuthRequest authRequest
    ){

        return ResponseEntity.ok(authService.authenticate(authRequest));
    }

    @PostMapping("/refresh")
    public ResponseEntity<AuthResponse> refresh(
            @RequestBody AuthRequest authRequest
    ){
        return ResponseEntity.ok(authService.authenticate(authRequest));
    }

    @GetMapping("/loginRoute")
    public ResponseEntity<AuthResponse> login(
            @RequestParam AuthRequest object
    ){
        System.out.println("This is an object:" + object);

        return ResponseEntity.ok(authService.authenticate(object));
    }
}
