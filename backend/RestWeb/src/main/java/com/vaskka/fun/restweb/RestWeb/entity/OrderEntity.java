package com.vaskka.fun.restweb.RestWeb.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "orders")
@Getter
@Setter
@NoArgsConstructor
public class OrderEntity {

    @Id
    private String id;

    private String creatorid;

    private String createtime;

    private String status;

    public OrderEntity(String id, String creatorid, String createtime, String status) {
        this.id = id;
        this.creatorid = creatorid;
        this.createtime = createtime;
        this.status = status;
    }
}
