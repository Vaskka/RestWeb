package com.vaskka.fun.restweb.RestWeb.service;

import com.vaskka.fun.restweb.RestWeb.dao.CommentDao;
import com.vaskka.fun.restweb.RestWeb.dao.UserDao;
import com.vaskka.fun.restweb.RestWeb.entity.CommentEntity;
import com.vaskka.fun.restweb.RestWeb.service.inner.InnerComment;
import com.vaskka.fun.restweb.RestWeb.util.CommonUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
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

    @Resource
    private UserDao userDao;

    public void createComment(String userId, String orderId, String content) {
        commentDao.save(new CommentEntity(CommonUtil.getUniqueId(), content, CommonUtil.getNowTime(), userId, orderId));
    }

    public List<InnerComment> getList(String orderId) {
        List<CommentEntity> temp = commentDao.findByOrderid(orderId);

        List<InnerComment> res = new ArrayList<>();

        for (CommentEntity entity : temp) {
            String userName = userDao.findById(entity.getUserid()).get().getName();
            res.add(new InnerComment(entity, userName));
        }

        return res;
    }
}
