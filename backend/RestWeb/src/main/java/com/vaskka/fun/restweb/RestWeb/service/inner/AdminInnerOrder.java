package com.vaskka.fun.restweb.RestWeb.service.inner;

import com.vaskka.fun.restweb.RestWeb.entity.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;



@Setter
@Getter
@AllArgsConstructor
@ToString
public class AdminInnerOrder {

    private String id;

    private UserEntity creator;

    private List<ItemEntity> item;

    private Float sumPrice;

    private BusinessEntity business;

    private String createTime;

    private List<CommentEntity> comment;

    private String status;

    public static AdminInnerOrder fromInnerOrderGetThis(InnerOrder innerOrder, List<CommentEntity> commentEntityList) {
        return new AdminInnerOrder(innerOrder.getId(),
                innerOrder.getCreator(),
                innerOrder.getItem(),
                innerOrder.getSumPrice(),
                innerOrder.getBusiness(),
                innerOrder.getCreateTime(),
                commentEntityList,
                innerOrder.getStatus());
    }
}
