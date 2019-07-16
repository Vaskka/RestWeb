package com.vaskka.fun.restweb.RestWeb.service;

import com.vaskka.fun.restweb.RestWeb.dao.*;
import com.vaskka.fun.restweb.RestWeb.entity.*;
import com.vaskka.fun.restweb.RestWeb.exception.RestWebRuntimeException;
import com.vaskka.fun.restweb.RestWeb.service.inner.PostInnerItem;
import com.vaskka.fun.restweb.RestWeb.util.CommonUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class CartService {

    @Resource
    private UserDao userDao;

    @Resource
    private OrderDao orderDao;

    @Resource
    private ItemDao itemDao;

    @Resource
    private CartItemDao cartItemDao;

    @Resource
    private OrderItemDao orderItemDao;

    @Resource
    private CartDao cartDao;

    public String getCartId(String busniessId, String userId) throws RestWebRuntimeException {
        List<CartEntity> res = cartDao.findByBusinessIdAndUserId(busniessId, userId);
        if (res.size() == 0) {
            String id = CommonUtil.getUniqueId();
            cartDao.save(new CartEntity(id, userId, busniessId));
            return id;
        }

        return res.get(0).getId();
    }

    public List<ItemEntity> getItemsFromCartId(String cartId) {
        List<ItemEntity> res = new ArrayList<>();

        List<CartItemEntity> temp = cartItemDao.findByCartId(cartId);
        for (CartItemEntity entity : temp) {
            Optional<ItemEntity> op = itemDao.findById(entity.getId());
            op.ifPresent(res::add);
        }

        return res;
    }

    public PostInnerItem postOrder(String cartId) {
        List<ItemEntity> res = this.getItemsFromCartId(cartId);

        String userId = cartDao.findById(cartId).get().getUserId();
        String createTime = CommonUtil.getNowTime();

        String orderId = CommonUtil.getUniqueId();

        for (ItemEntity entity : res) {
            orderItemDao.save(new OrderItemEntity(CommonUtil.getUniqueId(), orderId, entity.getId()));
        }

        orderDao.save(new OrderEntity(orderId, userId, createTime, 1));

        return new PostInnerItem(res, calPrice(res));
    }

    public void cleanCart(String cartId) {

    }

    private static float calPrice(List<ItemEntity> res) {
        float price = 0;
        for (ItemEntity entity : res) {
            price += entity.getPrice();
        }

        return price;
    }
}