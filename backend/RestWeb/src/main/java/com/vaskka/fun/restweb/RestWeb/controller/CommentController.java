package com.vaskka.fun.restweb.RestWeb.controller;

import com.vaskka.fun.restweb.RestWeb.service.CommentService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import net.minidev.json.JSONObject;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * @program: RestWeb
 * @description: CommentController
 * @author: Vaskka
 * @create: 2019/7/17 9:25 AM
 **/

@RestController
@Api(description = "评论接口")
@RequestMapping(value = "/main")
public class CommentController {

    @Resource
    private CommentService commentService;

    @ApiOperation(value = "创建评论")
    @ResponseBody
    @RequestMapping(value = "/order/comment/create/{orderId}/{userId}/{content}", method = RequestMethod.GET)
    public Map<String, Object> createComment(@PathVariable(value = "userId") String userId,
                                             @PathVariable(value = "orderId") String orderId,
                                             @PathVariable(value = "content") String content) {
        Map<String, Object> map = new HashMap<>();

        commentService.createComment(userId, orderId, content);

        map.put("code", 0);

        return map;
    }

    @ApiOperation(value = "查找评论")
    @ResponseBody
    @RequestMapping(value = "/order/comment/get/{orderId}/{userId}", method = RequestMethod.GET)
    public Map<String, Object> getComment(@PathVariable(value = "orderId") String orderId,
                                          @PathVariable(value = "userId") String userId) {
        Map<String, Object> map = new HashMap<>();


        map.put("code", 0);
        map.put("data", commentService.getList(orderId, userId));

        return map;
    }


}
