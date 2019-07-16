package com.vaskka.fun.restweb.RestWeb.controller;

import com.vaskka.fun.restweb.RestWeb.service.IndexService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

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

}
