package com.vaskka.fun.restweb.RestWeb.service.inner;

import com.vaskka.fun.restweb.RestWeb.entity.BusinessEntity;
import com.vaskka.fun.restweb.RestWeb.entity.ItemEntity;
import com.vaskka.fun.restweb.RestWeb.entity.UserEntity;
import lombok.*;

import java.util.List;


@Setter
@Getter
@AllArgsConstructor
@ToString
public class InnerOrder {

    private String id;

    private UserEntity creator;

    private List<ItemEntity>  item;

    private Float sumPrice;

    private BusinessEntity business;

    private String createTime;

    private String status;
}
