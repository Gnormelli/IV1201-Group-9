package com.iv1201.recapp.Service;

import com.iv1201.recapp.Integration.RoleRepo;
import com.iv1201.recapp.Integration.UserRepo;
import com.iv1201.recapp.Models.Role;
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

/**
 * Provides authentication service for end-point use.
 */
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

    String errorMsgForClient = "User could not be";

    /**
     * Authenticate user trying to sign in.
     * @param authRequest defines the data needed to authenticate the user.
     * @return <code>authResponse<code/> object with token and role for client.
     */
    public AuthResponse authenticate(AuthRequest authRequest) {
        AuthResponse authResponse = new AuthResponse();
        User user;
        Role role;

        try {
            UsernamePasswordAuthenticationToken upaToken =  new UsernamePasswordAuthenticationToken(
                    authRequest.getEmail(),
                    authRequest.getPassword());
            this.authenticationManager.authenticate(upaToken);
            user = userRepo.findByEmail(authRequest.getEmail());
            role = user.getUserRole();
        }catch (Exception e ){
            String errorMessage = " authenticated";
            System.out.println(errorMsgForClient+errorMessage);
            authResponse.setJwtToken(errorMsgForClient+errorMessage);
            return authResponse;
        }
        authResponse.setJwtToken(jwtService.createToken(user));
        authResponse.setRole(role);
        return authResponse;
    }

    /**
     * Register new users to the application
     * @param registerRequest the defines the data needed to register new user.
     * @return <code>authResponse<code/> object with token and role for newly created
     * user.
     */
    public AuthResponse register(RegisterRequest registerRequest) {
        AuthResponse authResponse = new AuthResponse();
        User user = new User();
        user.setEmail(registerRequest.getEmail());
        user.setUsername(registerRequest.getEmail());
        user.setPassword(passwordEncoder.encode(registerRequest.getPassword()));
        user.setUserRole(roleRepo.findRoleById(2L));

        try {
            userRepo.save(user);
        }catch (Exception e){
            String errorMessage = " register";
            System.out.println(errorMsgForClient+errorMessage);
            authResponse.setJwtToken(errorMsgForClient+errorMessage);
            return authResponse;
        }
        authResponse.setJwtToken(jwtService.createToken(user));
        authResponse.setRole(user.getUserRole());
        return authResponse;
    }
}