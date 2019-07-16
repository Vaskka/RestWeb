package com.vaskka.fun.restweb.RestWeb.dao;

import com.vaskka.fun.restweb.RestWeb.entity.CouponEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CouponDao extends JpaRepository<CouponEntity, String> {
}
