package com.vaskka.fun.restweb.RestWeb.service;

import com.vaskka.fun.restweb.RestWeb.dao.CommentDao;
import com.vaskka.fun.restweb.RestWeb.entity.CommentEntity;
import com.vaskka.fun.restweb.RestWeb.util.CommonUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

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

    public void createComment(String userId, String orderId, String content) {
        commentDao.save(new CommentEntity(CommonUtil.getUniqueId(), content, CommonUtil.getNowTime(), userId, orderId));
    }

    public List<CommentEntity> getList(String orderId, String userId) {
        return commentDao.findByUseridAndOrderid(userId, orderId);
    }
}
