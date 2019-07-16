package com.vaskka.fun.restweb.RestWeb.service;

import com.vaskka.fun.restweb.RestWeb.dao.UserAddressDao;
import com.vaskka.fun.restweb.RestWeb.entity.UserAddressEntity;
import com.vaskka.fun.restweb.RestWeb.util.CommonUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;


@Service
public class AddressService {

    @Resource
    private UserAddressDao userAddressDao;

    public void saveAddress(String userId, String address) {
        userAddressDao.save(new UserAddressEntity(CommonUtil.getUniqueId(), userId, address));
    }

    public List<String> getAddresses(String userId) {
        List<String> res = new ArrayList<>();

        for (UserAddressEntity entity : userAddressDao.findByUserId(userId)) {
            res.add(entity.getAddress());
        }

        return res;
    }

}
