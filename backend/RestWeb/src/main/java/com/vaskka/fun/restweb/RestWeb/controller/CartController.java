package com.vaskka.fun.restweb.RestWeb.controller;

import com.vaskka.fun.restweb.RestWeb.entity.ItemEntity;
import com.vaskka.fun.restweb.RestWeb.service.BusinessService;
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

    @Resource
    private BusinessService businessService;

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


    @ApiOperation(value = "删除购物车某件商品")
    @ResponseBody
    @RequestMapping(value = "/cart/remove/item/{cart_id}/{item_id}", method = RequestMethod.GET)
    public Map<String, Object> removeItemFromCart(@PathVariable(value = "cart_id") String cartId,
                                           @PathVariable(value = "item_id") String itemId) {
        Map<String, Object> map = new HashMap<>();

        map.put("code", 0);
        cartService.removeItem(itemId, cartId);
        return map;
    }

    @ApiOperation(value = "结算购物车全部商品")
    @ResponseBody
    @RequestMapping(value = "/post/order/{cardId}", method = RequestMethod.GET)
    public Map<String, Object> post(@PathVariable(value = "cardId") String cartId) {
        Map<String, Object> map = new HashMap<>();

        map.put("code", 0);

        map.put("data", cartService.postOrder(cartId));

        return map;
    }


    @ApiOperation(value = "获取商品详情")
    @ResponseBody
    @RequestMapping(value = "/get/item/detail/{itemId}", method = RequestMethod.GET)
    public Map<String, Object> getItemDetail(@PathVariable(value = "itemId") String itemId) {
        Map<String, Object> map = new HashMap<>();

        map.put("code", 0);

        ItemEntity entity = cartService.getDetail(itemId);

        map.put("data", entity);

        map.put("business", businessService.getBusinessName(entity.getBusinessid()));
        return map;
    }

}
