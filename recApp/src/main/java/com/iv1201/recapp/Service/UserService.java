package com.iv1201.recapp.Service;

import com.iv1201.recapp.Integration.UserRepo;
import com.iv1201.recapp.Models.User;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Optional;

/**
 * Provides user service for end-point use.
 */
@Service
public class UserService implements UserDetailsService {
    @Autowired
    UserRepo userRepo;

    /**
     * Load user details by username, from user repository.
     * @param username username of user to be loaded from database.
     * @return UserDetails of user.
     * @throws UsernameNotFoundException if username did not exist.
     */
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<User> user = userRepo.findByUsername(username);
        if(user == null){
            throw new UsernameNotFoundException("Username not found");
        }
        Collection<SimpleGrantedAuthority> authority = new ArrayList<>();
        SimpleGrantedAuthority simpleGrantedAuthority= new SimpleGrantedAuthority(" " + user.get().getUserRole().getRoleName());
        authority.add(simpleGrantedAuthority);
        System.out.println("Line 30 UserService: "+ user.get().getUserRole() + user.get().getAuthorities());
        return new org.springframework.security.core.userdetails.User(user.get().getUsername(),user.get().getPassword(), authority);
    }

}