package com.vaskka.fun.restweb.RestWeb.service;

import java.sql.Timestamp;
import java.util.List;
import com.vaskka.fun.restweb.RestWeb.dao.SessionDao;
import com.vaskka.fun.restweb.RestWeb.entity.SessionEntity;
import com.vaskka.fun.restweb.RestWeb.exception.SessionInvalidException;
import com.vaskka.fun.restweb.RestWeb.util.CommonUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @program: RestWeb
 * @description: SessionService
 * @author: Vaskka
 * @create: 2019/7/23 11:54 AM
 **/


@Service
public class SessionService {

    @Resource
    private SessionDao sessionDao;

    public void access(String userId) {

        List<SessionEntity> temp = sessionDao.findByUserid(userId);

        if (temp.size() == 0) {
            sessionDao.save(new SessionEntity(CommonUtil.getUniqueId(), CommonUtil.getNowTimestamp(), userId));
        }
        else {
            temp.get(0).setUpdatetime(CommonUtil.getNowTimestamp());
            sessionDao.save(temp.get(0));
        }
    }

    public void check(String userId) {
        List<SessionEntity> temp = sessionDao.findByUserid(userId);

        if (temp.size() == 0) {
            throw new SessionInvalidException("session已过期");
        }
        else {
            Timestamp ts = temp.get(0).getUpdatetime();

            temp.get(0).setUpdatetime(CommonUtil.getNowTimestamp());
            sessionDao.save(temp.get(0));
        }
    }
}
