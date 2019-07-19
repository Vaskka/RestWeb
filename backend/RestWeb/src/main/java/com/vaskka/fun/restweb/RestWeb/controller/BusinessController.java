package com.vaskka.fun.restweb.RestWeb.controller;


import com.vaskka.fun.restweb.RestWeb.service.BusinessService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Api(description = "商家商品页相关")
@RequestMapping(value = "/main")
@RestController
public class BusinessController {

    @Resource
    private BusinessService businessService;



    @ApiOperation(value = "获取商家下全部商品")
    @ResponseBody
    @RequestMapping(value = "/item/all/{businessId}", method = RequestMethod.GET)
    public Map<String, Object> getBusiness(@PathVariable(value = "businessId") String businessId) {
        Map<String, Object> map = new HashMap<>();

        map.put("code", 0);
        map.put("data", businessService.getBusinessAllItems(businessId));
        map.put("business", businessService.getBusinessName(businessId));
        return map;

    }
}
