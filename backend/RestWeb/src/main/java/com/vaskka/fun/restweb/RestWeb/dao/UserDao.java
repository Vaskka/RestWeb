package com.vaskka.fun.restweb.RestWeb.dao;

import java.util.List;
import com.vaskka.fun.restweb.RestWeb.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDao extends JpaRepository<UserEntity, String> {

    List<UserEntity> findByPhone(String phone);

    List<UserEntity> findByPhoneAndPassword(String phone, String password);
}
