package com.vaskka.fun.restweb.RestWeb.entity;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "cartitem")
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class CartItemEntity {

    @Id
    private String id;

    private String cartid;

    private String itemid;

}
