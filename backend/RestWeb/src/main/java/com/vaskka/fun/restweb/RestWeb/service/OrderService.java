package com.vaskka.fun.restweb.RestWeb.service;

import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @program: RestWeb
 * @description: OrderService
 * @author: Vaskka
 * @create: 2019/7/17 9:34 AM
 **/

@Service
public class OrderService {
    @Resource
    private UserDao userDao;


    @Resource
    private OrderItemDao orderItemDao;

    @Resource
    private BusinessDao businessDao;

    @Resource
    private OrderDao orderDao;


    public void cancelOrder(String orderId) {

    }


    private String fromStatusGetStatusText(Integer status) {

        switch (status) {
            case 0:
                return "COMPLETE";
            case 1:
                return "CANCELED";
        }

        return null;
    }
}
