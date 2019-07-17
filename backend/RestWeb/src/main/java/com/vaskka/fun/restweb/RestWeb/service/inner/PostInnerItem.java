package com.vaskka.fun.restweb.RestWeb.service.inner;

import com.vaskka.fun.restweb.RestWeb.entity.ItemEntity;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@ToString
public class PostInnerItem {
    private List<ItemEntity> items;

    private Float price;

    private String orderId;
}
