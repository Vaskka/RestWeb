package com.vaskka.fun.restweb.RestWeb.dao;

import com.vaskka.fun.restweb.RestWeb.entity.CartItemEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface CartItemDao extends JpaRepository<CartItemEntity, String> {

    List<CartItemEntity> findByCartid(String cartId);

    Optional<CartItemEntity> findFirstByCartid(String cardid);

    void deleteByCartid(String cartId);
}
