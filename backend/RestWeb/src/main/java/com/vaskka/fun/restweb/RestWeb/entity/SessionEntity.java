package com.vaskka.fun.restweb.RestWeb.entity;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "session")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SessionEntity {

    @Id
    private String id;


    private String token;


    private String userid;
}
