package com.iv1201.recapp.Controller;

import com.iv1201.recapp.Models.auth.AuthRequest;
import com.iv1201.recapp.Models.auth.AuthResponse;
import com.iv1201.recapp.Models.auth.RegisterRequest;
import com.iv1201.recapp.Service.AuthService;
import com.iv1201.recapp.View.LoginRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin()
@RequestMapping("/api/v1/auth")
public class AuthController {

    @PostMapping("/signup")
    public ResponseEntity<String> register(
            @RequestBody RegisterRequest registerRequest
    ) {
        String username = registerRequest.getEmail();
        String password = registerRequest.getPassword();
        System.out.println(username);
        return ResponseEntity.ok(username);
    }

    @PostMapping("/login")
    public ResponseEntity<String> login(@RequestBody LoginRequest request) {
        String username = request.getUsername();
        String password = request.getPassword();
        System.out.println(username);
        System.out.println(password);
        return ResponseEntity.ok(username);

    }
}
