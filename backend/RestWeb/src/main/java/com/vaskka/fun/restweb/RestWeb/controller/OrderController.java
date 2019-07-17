package com.vaskka.fun.restweb.RestWeb.controller;

import com.vaskka.fun.restweb.RestWeb.exception.RestWebRuntimeException;
import com.vaskka.fun.restweb.RestWeb.service.OrderService;
import com.vaskka.fun.restweb.RestWeb.util.FinalUtil;
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
        try {
            orderService.cancelOrder(orderId);
        }
        catch (RestWebRuntimeException e) {

            map.put("code", 1);
            map.put("msg", e.getMessage());
            return map;
        }


        map.put("code", 0);

        return map;
    }

    @ApiOperation(value = "进行交易")
    @ResponseBody
    @RequestMapping(value = "/trans", method = RequestMethod.POST)
    public Map<String, Object> trans(@RequestBody JSONObject body) {
        Map<String, Object> map = new HashMap<>();

        String orderId = body.getAsString("orderId");
        try {
            orderService.trans(orderId);
        }
        catch (RestWebRuntimeException e) {

            map.put("code", 1);
            map.put("msg", e.getMessage());
            return map;
        }


        map.put("code", 0);
        map.put("qrcodeBase64", FinalUtil.QRCODE_BASE64);

        return map;
    }


    @ApiOperation(value = "获取某个指定订单")
    @ResponseBody
    @RequestMapping(value = "/order/detail/{orderId}", method = RequestMethod.GET)
    public Map<String, Object> getOrderDetail(@PathVariable(value = "orderId") String orderId) {
        Map<String, Object> map = new HashMap<>();

        try {
            map.put("data", orderService.getUserOrderDetail(orderId));
        }
        catch (RestWebRuntimeException e) {

            map.put("code", 1);
            map.put("msg", e.getMessage());
            return map;
        }

        map.put("code", 0);

        return map;
    }
}
