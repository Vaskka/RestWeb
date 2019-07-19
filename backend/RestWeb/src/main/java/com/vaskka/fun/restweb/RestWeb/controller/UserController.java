package com.vaskka.fun.restweb.RestWeb.controller;

import com.vaskka.fun.restweb.RestWeb.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import net.minidev.json.JSONObject;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * @program: RestWeb
 * @description: UserController
 * @author: Vaskka
 * @create: 2019/7/19 3:22 PM
 **/

@RestController
@Api(description = "用户接口")
@RequestMapping(value = "/main")
public class UserController {

    @Resource
    private UserService userService;


    @ApiOperation(value = "注册用户")
    @ResponseBody
    @RequestMapping(value = "/user/register", method = RequestMethod.POST)
    public Map<String, Object> register(@RequestBody JSONObject body) {
        Map<String, Object> map = new HashMap<>();

        String phone = body.getAsString("phone");

        String name = body.getAsString("name");

        String password = body.getAsString("password");

        String repsw = body.getAsString("repassword");

        Integer type = body.getAsNumber("type").intValue();

        if (!password.equals(repsw)) {
            map.put("code", 1);
            return map;
        }

        map.put("code", 0);
        map.put("user_id", userService.register(phone, name, password, type));

        return map;
    }

    @ApiOperation(value = "注册用户")
    @ResponseBody
    @RequestMapping(value = "/user/login", method = RequestMethod.POST)
    public Map<String, Object> login(@RequestBody JSONObject body) {
        Map<String, Object> map = new HashMap<>();

        String phone = body.getAsString("phone");

        String password = body.getAsString("password");

        map.put("code", 0);
        map.put("user_id", userService.login(phone, password));

        return map;
    }
}
