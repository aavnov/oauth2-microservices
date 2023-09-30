package com.example.authorizationserver.model;

import javax.persistence.*;

import lombok.*;


import java.util.HashSet;
import java.util.Set;

@Entity
//@Table(name = "users")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Column(nullable = false, unique = true)
    String username;

    @Column(nullable = false)
    String password;

    @ManyToMany(fetch = FetchType.EAGER)
    private Set<Role> roles = new HashSet<>();

    Boolean enabled;

}
