package com.vaskka.fun.restweb.RestWeb.controller;

import com.vaskka.fun.restweb.RestWeb.service.CouponService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * @program: RestWeb
 * @description: CouponController
 * @author: Vaskka
 * @create: 2019/7/17 9:02 AM
 **/

@RestController
@Api(description = "代金券接口")
@RequestMapping(value = "/main")
public class CouponController {

    @Resource
    private CouponService couponService;

    @ApiOperation(value = "创建代金券")
    @ResponseBody
    @RequestMapping(value = "/info/coupon/create/{price}/{validHours}/{businessId}/{userId}", method = RequestMethod.GET)
    public Map<String, Object> createCoupon(@PathVariable(value = "price") Float price,
                                            @PathVariable(value = "validHours") Integer validHours,
                                            @PathVariable(value = "businessId") String businessId,
                                            @PathVariable(value = "userId") String userId) {
        Map<String, Object> map = new HashMap<>();

        couponService.createCoupon(price, validHours, businessId, userId);

        map.put("code", 0);

        return map;
    }

    @ApiOperation(value = "获取有效代金券信息")
    @ResponseBody
    @RequestMapping(value = "/info/coupon/{businessId}/{userId}", method = RequestMethod.GET)
    public Map<String, Object> getCoupon(@PathVariable(value = "businessId") String businessId,
                                         @PathVariable(value = "userId") String userId) {
        Map<String, Object> map = new HashMap<>();


        map.put("code", 0);

        map.put("data", couponService.getAllCoupon(userId, businessId));

        return map;
    }

}
