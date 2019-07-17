package com.vaskka.fun.restweb.RestWeb.service;

import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @program: RestWeb
 * @description: CouponService
 * @author: Vaskka
 * @create: 2019/7/17 9:07 AM
 **/

@Service
public class CouponService {

    @Resource
    private CouponDao couponDao;

    public void createCoupon(Float price, Integer validHours, String businessId, String userId) {


    }

    public List<CouponEntity> getAllCoupon(String userId, String businessId) {

    }

}
