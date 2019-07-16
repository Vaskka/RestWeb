package com.vaskka.fun.restweb.RestWeb.entity;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "item")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ItemEntity {

    @Id
    private String id;

    private String name;

    private String businessId;

    private Float price;

    private String img;

}
