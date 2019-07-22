package com.vaskka.fun.restweb.RestWeb.controller;

import com.vaskka.fun.restweb.RestWeb.dao.BusinessDao;
import com.vaskka.fun.restweb.RestWeb.dao.OrderItemDao;
import com.vaskka.fun.restweb.RestWeb.dao.TransitionDao;
import com.vaskka.fun.restweb.RestWeb.dao.UserDao;
import com.vaskka.fun.restweb.RestWeb.service.BusinessService;
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

    @Resource
    private BusinessDao businessDao;

    @Resource
    private OrderItemDao orderItemDao;

    @Resource
    private TransitionDao transitionDao;

    @Resource
    private UserDao userDao;

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


    @ApiOperation(value = "获取首页四信息")
    @ResponseBody
    @RequestMapping(value = "/get/index/info", method = RequestMethod.GET)
    public Map<String, Object> getIndexInfo() {
        Map<String, Object> map = new HashMap<>();

        map.put("code", 0);

        map.put("shop", businessDao.findAll().size());
        map.put("object", orderItemDao.findAll().size());
        map.put("trans", transitionDao.findAll().size());
        map.put("user", userDao.findAll().size());

        return map;

    }
}
