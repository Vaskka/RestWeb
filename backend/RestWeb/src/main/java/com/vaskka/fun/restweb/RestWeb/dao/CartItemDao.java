package com.vaskka.fun.restweb.RestWeb.dao;

import com.vaskka.fun.restweb.RestWeb.entity.CartItemEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;

import java.util.List;
import java.util.Optional;

public interface CartItemDao extends JpaRepository<CartItemEntity, String> {

    List<CartItemEntity> findByCartid(String cartId);

    Optional<CartItemEntity> findFirstByCartid(String cardid);

    @Modifying
    void deleteByCartid(String cartId);

    @Modifying
    void deleteById(String id);

    CartItemEntity findFirstByCartidAndItemid(String cardId, String itemId);
}
