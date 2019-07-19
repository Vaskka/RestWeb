package com.vaskka.fun.restweb.RestWeb.controller;

import com.vaskka.fun.restweb.RestWeb.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
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
    @RequestMapping(value = "/user/register/{phone}/{name}/{password}/{repassword}/{type}", method = RequestMethod.GET)
    public Map<String, Object> register(@PathVariable(value = "phone") String phone,
                                        @PathVariable(value = "name") String name,
                                        @PathVariable(value = "password") String password,
                                        @PathVariable(value = "repassword") String repsw,
                                        @PathVariable(value = "type") Integer type) {
        Map<String, Object> map = new HashMap<>();

        if (!password.equals(repsw)) {
            map.put("code", 1);
            return map;
        }


        String userId =  userService.register(phone, name, password, type);

        setMapFromUserId(map, userId);

        return map;
    }

    @ApiOperation(value = "登陆")
    @ResponseBody
    @RequestMapping(value = "/user/login/{phone}/{password}", method = RequestMethod.GET)
    public Map<String, Object> login(@PathVariable(value = "phone") String phone, @PathVariable("password") String password) {
        Map<String, Object> map = new HashMap<>();


        String userId =  userService.login(phone, password);

        setMapFromUserId(map, userId);
        return map;
    }

    private void setMapFromUserId(Map<String, Object> map, String userId) {
        if (userId == null) {
            map.put("code", 1);
            map.put("user_id", null);
        }
        else {
            map.put("code", 0);
            map.put("user_id", userId);
        }
        

    }

}
