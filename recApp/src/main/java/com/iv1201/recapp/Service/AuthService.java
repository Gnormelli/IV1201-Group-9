package com.iv1201.recapp.Service;

import com.iv1201.recapp.Integration.UserRepo;
import com.iv1201.recapp.Models.User;
import com.iv1201.recapp.Models.auth.AuthRequest;
import com.iv1201.recapp.Models.auth.AuthResponse;
import com.iv1201.recapp.Models.auth.RegisterRequest;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class AuthService {
    private final AuthenticationManager authenticationManager;
    private final UserRepo userRepo;
    private final PasswordEncoder passwordEncoder;
    private final JwtService jwtService;

    public AuthService(UserRepo userRepo,
                       PasswordEncoder passwordEncoder,
                       JwtService jwtService,
                       AuthenticationManager authenticationManager) {
        this.userRepo = userRepo;
        this.passwordEncoder = passwordEncoder;
        this.jwtService = jwtService;
        this.authenticationManager = authenticationManager;
    }

    public AuthResponse authenticate(AuthRequest authRequest) {
        User user;
        this.authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(
                        authRequest.getEmail(),
                        authRequest.getPassword()));
        try {
            user = userRepo.findByUsername(authRequest.getEmail()).get();
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
        System.out.println(registerRequest);
        user.setFirstname(registerRequest.getFirstname());
        user.setSurname(registerRequest.getSurname());
        user.setEmail(registerRequest.getEmail());
        user.setPassword(passwordEncoder.encode(registerRequest.getPassword()));
        user.setRoleId(1);
        System.out.println(user.toString());
        try {
            userRepo.save(user);
        }catch (Exception e){
            throw new RuntimeException(" User could not be saved in repo");
        }
        AuthResponse authResponse =
                new AuthResponse(jwtService.createToken(user));
        return authResponse;
    }
}
