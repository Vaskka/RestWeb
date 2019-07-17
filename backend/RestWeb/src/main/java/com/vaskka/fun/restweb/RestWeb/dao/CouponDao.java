package com.vaskka.fun.restweb.RestWeb.dao;

import com.vaskka.fun.restweb.RestWeb.entity.CouponEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CouponDao extends JpaRepository<CouponEntity, String> {

    List<CouponEntity> findByUserIdAndBusinessIdAndStatus(String userId, String businessId, Integer Status);
}
