package com.vaskka.fun.restweb.RestWeb.service;

import com.vaskka.fun.restweb.RestWeb.dao.*;
import com.vaskka.fun.restweb.RestWeb.entity.*;
import com.vaskka.fun.restweb.RestWeb.exception.RestWebRuntimeException;
import com.vaskka.fun.restweb.RestWeb.service.inner.InnerOrder;
import com.vaskka.fun.restweb.RestWeb.util.CommonUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

/**
 * @program: RestWeb
 * @description: OrderService
 * @author: Vaskka
 * @create: 2019/7/17 9:34 AM
 **/

@Service
public class OrderService {
    @Resource
    private UserDao userDao;

    @Resource
    private TransitionDao transitionDao;

    @Resource
    private OrderItemDao orderItemDao;

    @Resource
    private BusinessDao businessDao;

    @Resource
    private OrderDao orderDao;

    @Resource
    private ItemDao itemDao;


    public void cancelOrder(String orderId) throws RestWebRuntimeException {
        Optional<OrderEntity> entityOptional = orderDao.findById(orderId);

        if (entityOptional.isPresent()) {
            OrderEntity entity = entityOptional.get();
            entity.setStatus("2");
            orderDao.save(entity);
            return;
        }

        throw new RestWebRuntimeException("订单不存在");
    }

    public void trans(String orderId) throws RestWebRuntimeException {
        Optional<OrderEntity> entityOptional = orderDao.findById(orderId);

        if (entityOptional.isPresent()) {
            OrderEntity entity = entityOptional.get();
            entity.setStatus("0");

            List<ItemEntity> middle = fromOrderIdGetList(orderId);

            transitionDao.save(new TransitionEntity(CommonUtil.getUniqueId(), CommonUtil.calPrice(middle), orderId, CommonUtil.getNowTime()));

            return;
        }

        throw new RestWebRuntimeException("订单不存在");
    }

    public InnerOrder getUserOrderDetail(String orderId) {
        Optional<OrderEntity> entityOptional = orderDao.findById(orderId);

        if (entityOptional.isPresent()) {
            OrderEntity entity = entityOptional.get();

            UserEntity userEntity = userDao.findById(entity.getCreatorid()).get();
            List<ItemEntity> middle = fromOrderIdGetList(orderId);

            float price = CommonUtil.calPrice(middle);



            BusinessEntity businessEntity = null;
            if (middle.size() != 0) {
                businessEntity = businessDao.findById(middle.get(0).getBusinessid()).get();
            }

            String status = fromStatusGetStatusText(entity.getStatus());

            return new InnerOrder(entity.getId(), userEntity, middle, price, businessEntity, entity.getCreatetime(), status);

        }

        throw new RestWebRuntimeException("订单不存在");
    }

    private String fromStatusGetStatusText(String status) {

        switch (status) {
            case "0":
                return "COMPLETE";
            case "1":
                return "UNPAY";
            case "2":
                return "CANCEL";
        }

        return null;
    }

    private List<ItemEntity> fromOrderIdGetList(String orderId) {
        List<ItemEntity> middle = new ArrayList<>();
        for (OrderItemEntity i : orderItemDao.findByOrderid(orderId)) {
            Optional<ItemEntity> optionalItemEntity = itemDao.findById(i.getItemid());
            ItemEntity _i = optionalItemEntity.orElse(null);
            middle.add(_i);
        }

        return middle;
    }


    public List<OrderEntity> getOrders(String userId) {
        return orderDao.findByCreatorid(userId);
    }
}
