package com.vaskka.fun.restweb.RestWeb.service;

import com.vaskka.fun.restweb.RestWeb.dao.CartDao;
import com.vaskka.fun.restweb.RestWeb.dao.ItemDao;
import com.vaskka.fun.restweb.RestWeb.entity.ItemEntity;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BusinessService {

    @Resource
    private ItemDao itemDao;

    @Resource
    private CartDao cartDao;



    public List<ItemEntity> getBusinessAllItems(String businessId) {
        return itemDao.findByBusinessid(businessId);
    }


}
