package com.vaskka.fun.restweb.RestWeb.service;

import com.vaskka.fun.restweb.RestWeb.dao.OrderDao;
import com.vaskka.fun.restweb.RestWeb.dao.TransitionDao;
import com.vaskka.fun.restweb.RestWeb.dao.UserDao;
import com.vaskka.fun.restweb.RestWeb.entity.CommentEntity;
import com.vaskka.fun.restweb.RestWeb.entity.OrderEntity;
import com.vaskka.fun.restweb.RestWeb.entity.TransitionEntity;
import com.vaskka.fun.restweb.RestWeb.entity.UserEntity;
import com.vaskka.fun.restweb.RestWeb.service.inner.AdminInnerOrder;
import com.vaskka.fun.restweb.RestWeb.service.inner.InnerComment;
import com.vaskka.fun.restweb.RestWeb.service.inner.InnerOrder;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class AdminService {

    @Resource
    private OrderDao orderDao;

    @Resource
    private OrderService orderService;

    @Resource
    private CommentService commentService;

    @Resource
    private TransitionDao transitionDao;

    @Resource
    private UserDao userDao;

    public List<AdminInnerOrder> getOrders(Integer size, Integer page) {
        List<OrderEntity> orderEntities = orderDao.findAll(PageRequest.of(page, size)).getContent();

        List<AdminInnerOrder> res = new ArrayList<>();

        for (OrderEntity entity : orderEntities) {
            String orderId = entity.getId();

            InnerOrder innerOrder = orderService.getUserOrderDetail(orderId);
            res.add(AdminInnerOrder.fromInnerOrderGetThis(innerOrder, fromEntityGetList(commentService.getList(orderId))));
        }

        return res;
    }


    public List<TransitionEntity> getTransition(Integer size, Integer page) {
        return transitionDao.findAll(PageRequest.of(page, size)).getContent();
    }


    public List<UserEntity> getUser(Integer size, Integer page) {
        return userDao.findAll(PageRequest.of(page, size)).getContent();
    }

    private List<CommentEntity> fromEntityGetList(List<InnerComment> entityList) {
        List<CommentEntity> res = new ArrayList<>();

        for (InnerComment comment : entityList) {
            res.add(comment.getCommentEntity());
        }

        return res;
    }

}
