package com.vaskka.fun.restweb.RestWeb.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "coupon")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CouponEntity {
    @Id
    private String id;

    private Float price;

    private String createtime;

    private Integer validhours;

    private String userid;

    private String businessid;

    private Integer status;

    private String useorderid;
}
