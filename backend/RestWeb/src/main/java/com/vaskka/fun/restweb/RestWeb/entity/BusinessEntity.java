package com.vaskka.fun.restweb.RestWeb.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "business")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BusinessEntity {

    @Id
    private String id;

    private String name;

    private String headimg;

}
