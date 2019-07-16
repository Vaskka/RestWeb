package com.vaskka.fun.restweb.RestWeb.dao;

import com.vaskka.fun.restweb.RestWeb.entity.CartEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CartDao extends JpaRepository<CartEntity, String> {

    List<CartEntity> findByBusinessIdAndUserId(String businessId, String userId);
}
