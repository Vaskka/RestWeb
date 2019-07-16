package com.vaskka.fun.restweb.RestWeb.controller;


import com.vaskka.fun.restweb.RestWeb.service.BusinessService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Api(description = "商家商品页相关")
@RequestMapping(value = "/main")
@Controller
public class BusinessController {

    @Resource
    private BusinessService businessService;



    @ApiOperation(value = "获取全部商家")
    @ResponseBody
    @RequestMapping(value = "/item/all/{businessId}/{userId}", method = RequestMethod.GET)
    public Map<String, Object> getBusiness(@PathVariable(value = "businessId") String businessId,
                                           @PathVariable(value = "userId") String userId) {
        Map<String, Object> map = new HashMap<>();

        map.put("code", 0);
        map.put("cartId", businessService.getCartId(businessId, userId));
        map.put("data", businessService.getBusinessAllItems(businessId));

        return map;

    }
}
