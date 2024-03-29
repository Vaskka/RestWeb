package com.vaskka.fun.restweb.RestWeb.dao;

import com.vaskka.fun.restweb.RestWeb.entity.CommentEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CommentDao extends JpaRepository<CommentEntity, String> {

    List<CommentEntity> findByUseridAndOrderid(String userId, String orderId);

    List<CommentEntity> findByOrderid(String orderId);
}
