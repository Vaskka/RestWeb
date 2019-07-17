package com.vaskka.fun.restweb.RestWeb.controller;

import com.vaskka.fun.restweb.RestWeb.service.CartService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import net.minidev.json.JSONObject;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Api(description = "购物车相关")
@RequestMapping(value = "/main")
@RestController
public class CartController {

    @Resource
    private CartService cartService;

    @ApiOperation(value = "添加商品到购物车")
    @ResponseBody
    @RequestMapping(value = "/add/item/{itemid}/{cartId}", method = RequestMethod.GET)
    public Map<String, Object> insertIntoCart(@PathVariable(value = "itemid") String itemid,
                                              @PathVariable(value = "cartId") String cartId) {
        Map<String, Object> map = new HashMap<>();

        map.put("code", 0);
        cartService.addIntoCart(itemid, cartId);
        return map;

    }


    @ApiOperation(value = "获取购物车全部商品")
    @ResponseBody
    @RequestMapping(value = "/item/all/{businessId}/{userId}", method = RequestMethod.GET)
    public Map<String, Object> getBusiness(@PathVariable(value = "businessId") String businessId,
                                           @PathVariable(value = "userId") String userId) {
        Map<String, Object> map = new HashMap<>();

        map.put("code", 0);
        String cid = cartService.getCartId(businessId, userId);
        map.put("cartId", cid);
        map.put("data", cartService.getItemsFromCartId(cid));

        return map;

    }

    @ApiOperation(value = "结算购物车全部商品")
    @ResponseBody
    @RequestMapping(value = "/post/order", method = RequestMethod.POST)
    public Map<String, Object> post(@RequestBody  JSONObject body) {
        Map<String, Object> map = new HashMap<>();

        String cartId = body.getAsString("cartId");

        map.put("code", 0);

        map.put("data", cartService.postOrder(cartId));

        return map;

    }
}
