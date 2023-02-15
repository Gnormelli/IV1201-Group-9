package com.iv1201.recapp.Integration;

import com.iv1201.recapp.Models.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepo extends JpaRepository<Role, Long> {

    Role findRoleById(Long id );

}