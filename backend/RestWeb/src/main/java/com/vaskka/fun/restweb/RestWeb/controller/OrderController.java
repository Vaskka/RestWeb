package com.vaskka.fun.restweb.RestWeb.controller;

import com.vaskka.fun.restweb.RestWeb.service.OrderService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import net.minidev.json.JSONObject;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * @program: RestWeb
 * @description: OrderController
 * @author: Vaskka
 * @create: 2019/7/17 9:20 AM
 **/

@RestController
@Api(description = "订单接口")
@RequestMapping(value = "/main")
public class OrderController {

    @Resource
    private OrderService orderService;

    @ApiOperation(value = "取消订单")
    @ResponseBody
    @RequestMapping(value = "/cancel/order", method = RequestMethod.POST)
    public Map<String, Object> createCoupon(@RequestBody JSONObject body) {
        Map<String, Object> map = new HashMap<>();

        String orderId = body.getAsString("orderId");

        orderService.cancelOrder(orderId);

        map.put("code", 0);

        return map;
    }
}
