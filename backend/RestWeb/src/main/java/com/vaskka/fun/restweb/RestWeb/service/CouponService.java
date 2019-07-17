package com.vaskka.fun.restweb.RestWeb.service;

import com.vaskka.fun.restweb.RestWeb.dao.CouponDao;
import com.vaskka.fun.restweb.RestWeb.entity.CouponEntity;
import com.vaskka.fun.restweb.RestWeb.util.CommonUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * @program: RestWeb
 * @description: CouponService
 * @author: Vaskka
 * @create: 2019/7/17 9:07 AM
 **/

@Service
public class CouponService {

    @Resource
    private CouponDao couponDao;

    public void createCoupon(Float price, Integer validHours, String businessId, String userId) {

        couponDao.save(new CouponEntity(CommonUtil.getUniqueId(), price, CommonUtil.getNowTime(), validHours, userId, businessId, 1, null));
    }

    public List<CouponEntity> getAllCoupon(String userId, String businessId) {
        List<CouponEntity> list = couponDao.findByUseridAndBusinessidAndStatus(userId, businessId, 1);
        List<CouponEntity> res = new ArrayList<>();
        Date date = java.util.Calendar.getInstance(java.util.Locale.CHINA).getTime();

        for (CouponEntity entity : list) {
            Date createTime = CommonUtil.fromStringToDate(entity.getCreatetime());
            Calendar rightNow = Calendar.getInstance();
            rightNow.setTime(createTime);
            rightNow.add(Calendar.HOUR,entity.getValidhours());
            Date validTime = rightNow.getTime();

            // 没过期加进去
            if (validTime.compareTo(date) > 0) {
                res.add(entity);
            }
            else {
                // 过期改值写回去
                entity.setStatus(0);
                couponDao.save(entity);
            }
        }

        return res;
    }

}
