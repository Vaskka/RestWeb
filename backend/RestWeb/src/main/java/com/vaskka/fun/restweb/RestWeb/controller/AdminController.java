package com.vaskka.fun.restweb.RestWeb.controller;

import com.vaskka.fun.restweb.RestWeb.service.AdminService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * @program: RestWeb
 * @description: AdminController
 * @author: Vaskka
 * @create: 2019/7/17 9:39 AM
 **/

@RestController
@Api(description = "ADMIN接口")
@RequestMapping(value = "/main")
public class AdminController {


    @Resource
    private AdminService adminService;

    @ApiOperation(value = "分页获取订单流水")
    @ResponseBody
    @RequestMapping(value = "/admin/order/all/{number_every_page}/{page_offset}", method = RequestMethod.GET)
    public Map<String, Object> getAllOrders(@PathVariable(value = "number_every_page") Integer size, @PathVariable(value = "page_offset") Integer page) {
        Map<String, Object> map = new HashMap<>();


        map.put("code", 0);
        map.put("data", adminService.getOrders(size, page));

        return map;

    }

    @ApiOperation(value = "分页获取交易流水")
    @ResponseBody
    @RequestMapping(value = "/admin/transition/all/{number_every_page}/{page_offset}", method = RequestMethod.GET)
    public Map<String, Object> getAllTrans(@PathVariable(value = "number_every_page") Integer size, @PathVariable(value = "page_offset") Integer page) {
        Map<String, Object> map = new HashMap<>();


        map.put("code", 0);
        map.put("data", adminService.getTransition(size, page));

        return map;
    }

    @ApiOperation(value = "分页获取用户")
    @ResponseBody
    @RequestMapping(value = "/admin/user/all/{number_every_page}/{page_offset}", method = RequestMethod.GET)
    public Map<String, Object> getAllUser(@PathVariable(value = "number_every_page") Integer size, @PathVariable(value = "page_offset") Integer page) {
        Map<String, Object> map = new HashMap<>();


        map.put("code", 0);
        map.put("data", adminService.getUser(size, page));

        return map;
    }

}
