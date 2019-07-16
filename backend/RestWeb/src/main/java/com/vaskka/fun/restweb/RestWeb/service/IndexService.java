package com.vaskka.fun.restweb.RestWeb.service;

import com.vaskka.fun.restweb.RestWeb.dao.BusinessDao;
import com.vaskka.fun.restweb.RestWeb.entity.BusinessEntity;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class IndexService {

    @Resource
    private BusinessDao businessDao;


    /**
     * 获取全部商家
     * @return List
     */
    public List<BusinessEntity> getBusinessList() {
        return businessDao.findAll();
    }



    public String index() {
        return "hello rest web";
    }
}
