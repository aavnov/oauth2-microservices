package com.example.authorizationserver.repository;

import com.example.authorizationserver.model.Role1;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role1, Long> {
}
