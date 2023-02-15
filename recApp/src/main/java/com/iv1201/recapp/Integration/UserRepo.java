package com.iv1201.recapp.Integration;

import com.iv1201.recapp.Models.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepo extends JpaRepository<User, Long> {
    public Optional <User> findByUsername(String username);
    User findByEmail(String email);
}
