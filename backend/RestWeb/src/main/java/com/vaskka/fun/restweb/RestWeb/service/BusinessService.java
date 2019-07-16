package com.vaskka.fun.restweb.RestWeb.service;

import com.vaskka.fun.restweb.RestWeb.dao.CartDao;
import com.vaskka.fun.restweb.RestWeb.dao.ItemDao;
import com.vaskka.fun.restweb.RestWeb.entity.CartEntity;
import com.vaskka.fun.restweb.RestWeb.entity.ItemEntity;
import com.vaskka.fun.restweb.RestWeb.exception.RestWebRuntimeException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BusinessService {

    @Resource
    private ItemDao itemDao;

    @Resource
    private CartDao cartDao;

    public String getCartId(String busniessId, String userId) throws RestWebRuntimeException {
        List<CartEntity> res = cartDao.findByBusinessIdAndUserId(busniessId, userId) ;
        if (res.size() == 0) {
            throw new RestWebRuntimeException("购物车不存在");
        }

        return res.get(0).getId();
    }

    public List<ItemEntity> getBusinessAllItems(String businessId) {
        return itemDao.findByBusinessId(businessId);
    }


}
