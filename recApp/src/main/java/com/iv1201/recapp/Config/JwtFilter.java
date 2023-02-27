package com.iv1201.recapp.Config;

import com.iv1201.recapp.Exceptions.EmailNotFoundException;
import com.iv1201.recapp.Service.JwtService;
import com.iv1201.recapp.Service.UserService;
import io.jsonwebtoken.ExpiredJwtException;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;
import java.util.Collection;

import static org.springframework.http.HttpHeaders.AUTHORIZATION;


// todo add error handling for the jwtfilter
@Component
public class JwtFilter extends OncePerRequestFilter {

    @Autowired
    private JwtService jwtService;

    @Autowired
    private UserService userService;

    @Override
    protected void doFilterInternal(
            HttpServletRequest request,
            HttpServletResponse response,
            FilterChain filterChain
    )throws ServletException, IOException {
        String authFromHeader = request.getHeader(AUTHORIZATION);
        final String username;
        final String jwtToken;

//        if(authFromHeader == null || !authFromHeader.startsWith("Bearer ")){
//            filterChain.doFilter(request, response);
//            return;
//        }

        boolean willReturn = checkAuthFromHeader(authFromHeader, filterChain, response, request);
        if (willReturn){
            return;
        }

        try {
            jwtToken = authFromHeader.substring(7);
            username = jwtService.getUsernameFromToken(jwtToken);


            if(username != null && SecurityContextHolder
                    .getContext()
                    .getAuthentication() == null){
                UserDetails userDetails = userService.loadUserByUsername(username);

                if (jwtService.checkTokenValidity(jwtToken, userDetails)) {
                    UsernamePasswordAuthenticationToken token =
                            new UsernamePasswordAuthenticationToken(
                                    userDetails,
                                    null,
                                    userDetails.getAuthorities() // gets authorities for the user
                            );
                    // Builds and sets the details of the user to a token
                    token.setDetails(
                            new WebAuthenticationDetailsSource().buildDetails(request));
                    // Gives the complete token witt all details to the Security Context holder
                    SecurityContextHolder.getContext().setAuthentication(token);
                }
            }
            Object auth = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            filterChain.doFilter(request,response);
        }catch (ExpiredJwtException e ){
            System.out.println("The token has expired");
            checkAuthFromHeader(null, filterChain, response, request);
        }
    }
    private boolean checkAuthFromHeader(String authFromHeader,
                                     FilterChain filterChain,
                                     HttpServletResponse response,
                                     HttpServletRequest request
                                     ) throws ServletException, IOException {
        boolean willBreak = false;
        if(authFromHeader == null || !authFromHeader.startsWith("Bearer ") || authFromHeader.contains("Bearer null")){
            filterChain.doFilter(request, response);
            willBreak = true;
        }
        return willBreak;
    }

}
