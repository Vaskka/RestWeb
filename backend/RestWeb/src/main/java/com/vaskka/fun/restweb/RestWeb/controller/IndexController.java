package com.vaskka.fun.restweb.RestWeb.controller;

import com.vaskka.fun.restweb.RestWeb.service.IndexService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Api(description = "首页")
@RequestMapping(value = "/main")
@Controller
public class IndexController {


    @Resource
    private IndexService service;

    @ApiOperation(value = "首页")
    @ResponseBody
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
        return service.index();

    }


    @ApiOperation(value = "获取全部商家")
    @ResponseBody
    @RequestMapping(value = "/get/main/business", method = RequestMethod.GET)
    public Map<String, Object> getBusiness() {
        Map<String, Object> map = new HashMap<>();

        map.put("code", 0);

        map.put("data", service.getBusinessList());

        return map;

    }

}
