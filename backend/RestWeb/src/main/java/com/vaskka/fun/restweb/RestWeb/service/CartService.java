package com.vaskka.fun.restweb.RestWeb.service;

import com.vaskka.fun.restweb.RestWeb.dao.*;
import com.vaskka.fun.restweb.RestWeb.entity.*;
import com.vaskka.fun.restweb.RestWeb.exception.RestWebRuntimeException;
import com.vaskka.fun.restweb.RestWeb.service.inner.PostInnerItem;
import com.vaskka.fun.restweb.RestWeb.util.CommonUtil;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static com.vaskka.fun.restweb.RestWeb.util.CommonUtil.calPrice;

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

    public void addIntoCart(String itemid, String cartId) {
        cartItemDao.save(new CartItemEntity(CommonUtil.getUniqueId(), cartId, itemid));
    }

    public String getCartId(String busniessId, String userId) throws RestWebRuntimeException {
        List<CartEntity> res = cartDao.findByBusinessidAndUserid(busniessId, userId);
        if (res.size() == 0) {
            String id = CommonUtil.getUniqueId();
            cartDao.save(new CartEntity(id, userId, busniessId));
            return id;
        }

        return res.get(0).getId();
    }

    public List<ItemEntity> getItemsFromCartId(String cartId) {
        List<ItemEntity> res = new ArrayList<>();

        List<CartItemEntity> temp = cartItemDao.findByCartid(cartId);


        for (CartItemEntity entity : temp) {
            Optional<ItemEntity> op = itemDao.findById(entity.getItemid());
            op.ifPresent(res::add);
        }

        return res;
    }

    public PostInnerItem postOrder(String cartId) {
        List<ItemEntity> res = this.getItemsFromCartId(cartId);

        String userId = cartDao.findById(cartId).get().getUserid();
        String createTime = CommonUtil.getNowTime();

        String orderId = CommonUtil.getUniqueId();

        for (ItemEntity entity : res) {
            orderItemDao.save(new OrderItemEntity(CommonUtil.getUniqueId(), orderId, entity.getId()));
        }

        orderDao.save(new OrderEntity(orderId, userId, createTime, "1"));

        return new PostInnerItem(res, calPrice(res), orderId);
    }

    @Transactional
    public void cleanCart(String cartId) {
        cartItemDao.deleteByCartid(cartId);
    }

    @Transactional
    public void removeItem(String itemId, String cartId) {
        CartItemEntity entity = cartItemDao.findFirstByCartidAndItemid(cartId, itemId);

        cartItemDao.deleteById(entity.getId());
    }



    public ItemEntity getDetail(String itemId) {

        return itemDao.findById(itemId).get();

    }


}
