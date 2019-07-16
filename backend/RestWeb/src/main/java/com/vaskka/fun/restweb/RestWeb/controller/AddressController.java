package com.vaskka.fun.restweb.RestWeb.controller;

import com.vaskka.fun.restweb.RestWeb.service.AddressService;
import com.vaskka.fun.restweb.RestWeb.service.BusinessService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Api(description = "地址相关")
@RequestMapping(value = "/main")
@RestController
public class AddressController {

    @Resource
    private AddressService addressService;

    @ApiOperation(value = "保存地址")
    @ResponseBody
    @RequestMapping(value = "/save/address/{userId}/{address}", method = RequestMethod.GET)
    public Map<String, Object> getAddress(@PathVariable(value = "userId") String userId, @PathVariable(value = "address") String address) {
        Map<String, Object> map = new HashMap<>();

        addressService.saveAddress(userId, address);

        map.put("code", 0);

        return map;

    }

    @ApiOperation(value = "获取全部地址")
    @ResponseBody
    @RequestMapping(value = "/info/address/{userId}", method = RequestMethod.GET)
    public Map<String, Object> getAddress(@PathVariable(value = "userId") String userId) {
        Map<String, Object> map = new HashMap<>();

        map.put("code", 0);
        map.put("data", addressService.getAddresses(userId));

        return map;

    }
}
