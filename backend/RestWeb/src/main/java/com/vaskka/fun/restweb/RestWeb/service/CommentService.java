package com.vaskka.fun.restweb.RestWeb.service;

import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @program: RestWeb
 * @description: CommentService
 * @author: Vaskka
 * @create: 2019/7/17 9:28 AM
 **/

@Service
public class CommentService {

    @Resource
    private CommentDao commentDao;

    public void createComment(String orderId, String content) {
        commentDao.save(new CommentEntity(assa));
    }

    public List<CommentEntity> getList(String orderId, String userId) {
        return commentDao.findByOrderIdAndUserId(orderId, userId);
    }
}
