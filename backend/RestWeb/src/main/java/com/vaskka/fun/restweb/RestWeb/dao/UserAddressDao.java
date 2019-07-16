package com.vaskka.fun.restweb.RestWeb.dao;

import com.vaskka.fun.restweb.RestWeb.entity.UserAddressEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserAddressDao extends JpaRepository<UserAddressEntity, String> {

    List<UserAddressEntity> findByUserId(String userId);
}
