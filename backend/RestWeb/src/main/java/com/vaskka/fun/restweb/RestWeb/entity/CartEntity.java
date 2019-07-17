package com.vaskka.fun.restweb.RestWeb.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "cart")
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class CartEntity {
    @Id
    private String id;

    private String userid;

    private String businessid;
}
