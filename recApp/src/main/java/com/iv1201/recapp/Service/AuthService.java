package com.iv1201.recapp.Service;

import com.iv1201.recapp.Integration.UserRepo;
import com.iv1201.recapp.Models.User;
import com.iv1201.recapp.Models.auth.AuthRequest;
import com.iv1201.recapp.Models.auth.AuthResponse;
import com.iv1201.recapp.Models.auth.RegisterRequest;
import com.sun.jdi.event.ExceptionEvent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;



@Service
public class AuthService {
    @Autowired
    private AuthenticationManager authenticationManager;
    @Autowired
    private UserRepo userRepo;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private JwtService jwtService;

    public AuthResponse authenticate(AuthRequest authRequest) {
        User user;

        System.out.println("Line 34 AuthService " + authRequest.toString());

        try {
            this.authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(
                    authRequest.getEmail(),
                    authRequest.getPassword())
            );
        }catch (Exception e ){
//            Todo Add exception for user when token cannot be authenticated
            System.out.println("Token could not be authenticated " + e);
        }

        try {
            System.out.println("Line 41 AuthService");
            user = userRepo.findByEmail(authRequest.getEmail());
            System.out.println("This is our user: " + user);
        }catch (Exception e ){
            throw new UsernameNotFoundException("User not found and could therefore " +
                    "not be authenticated");
        }
        AuthResponse authResponse =
                new AuthResponse(jwtService.createToken(user));
        return authResponse;
    }

    // Todo: Create variables needed to make a signUp so a user can be saved correctly
    public AuthResponse register(RegisterRequest registerRequest) {
        User user = new User();
        user.setEmail(registerRequest.getEmail());
        user.setPassword(passwordEncoder.encode(registerRequest.getPassword()));
        user.setRoleId(2);

        try {
            userRepo.save(user);
        }catch (Exception e){
            throw new RuntimeException("User could not be saved in repo");
        }
        AuthResponse authResponse =
                new AuthResponse(jwtService.createToken(user));
        return authResponse;
    }
}
