package com.vaskka.fun.restweb.RestWeb.service;

import com.sun.tools.javac.util.List;
import com.vaskka.fun.restweb.RestWeb.dao.UserDao;
import com.vaskka.fun.restweb.RestWeb.entity.UserEntity;
import com.vaskka.fun.restweb.RestWeb.util.CommonUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @program: RestWeb
 * @description: UserService
 * @author: Vaskka
 * @create: 2019/7/19 3:25 PM
 **/


@Service
public class UserService {

    @Resource
    private UserDao userDao;

    public String register(String phone, String name, String password, Integer type) {

        String userId = CommonUtil.getUniqueId();

        List<UserEntity> checkPhone = userDao.findByPhone(phone);

        if (checkPhone.size() > 0) {
            return null;
        }

        userDao.save(new UserEntity(userId, name, type, password, phone));

        return userId;
    }

    public String login(String phone, String password) {
        List<UserEntity> check = userDao.findByPhoneAndPassword(phone, password);

        if (check.size() == 0) {
            return null;
        }

        return check.get(0).getId();
    }


}
