package com.vaskka.fun.restweb.RestWeb.dao;

import com.vaskka.fun.restweb.RestWeb.entity.CartItemEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CartItemDao extends JpaRepository<CartItemEntity, String> {

    List<CartItemEntity> findByCartId(String cartId);
}
