package com.iv1201.recapp.Service;

import com.iv1201.recapp.Integration.RoleRepo;
import com.iv1201.recapp.Integration.UserRepo;
import com.iv1201.recapp.Models.User;
import com.iv1201.recapp.Models.auth.AuthRequest;
import com.iv1201.recapp.Models.auth.AuthResponse;
import com.iv1201.recapp.Models.auth.RegisterRequest;
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
    private RoleRepo roleRepo;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private JwtService jwtService;

    public AuthResponse authenticate(AuthRequest authRequest) {
        User user;
        System.out.println(authRequest);
        AuthResponse authResponse = new AuthResponse("Token could not be authenticated");
        try {
            this.authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(
                    authRequest.getEmail(),
                    authRequest.getPassword())
            );
        }catch (Exception e ){
            System.out.println("Token could not be authenticated" + e);
            return authResponse;
        }

        try {
            user = userRepo.findByEmail(authRequest.getEmail());

        }catch (Exception e ){
            throw new UsernameNotFoundException("User not found and could therefore " +
                    "not be authenticated");
        }
        authResponse.setJwtToken(jwtService.createToken(user));
        return authResponse;
    }

    // Todo: Create variables needed to make a signUp so a user can be saved correctly
    public AuthResponse register(RegisterRequest registerRequest) {
        User user = new User();
        user.setUsername(registerRequest.getEmail());
        user.setEmail(registerRequest.getEmail());
        user.setPassword(passwordEncoder.encode(registerRequest.getPassword()));
        user.setUserRole(roleRepo.findRoleById(2L));

        System.out.println(user);

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
