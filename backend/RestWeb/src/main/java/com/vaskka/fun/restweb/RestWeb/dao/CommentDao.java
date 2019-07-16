package com.vaskka.fun.restweb.RestWeb.dao;

import com.vaskka.fun.restweb.RestWeb.entity.CommentEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CommentDao extends JpaRepository<CommentEntity, String> {
}
