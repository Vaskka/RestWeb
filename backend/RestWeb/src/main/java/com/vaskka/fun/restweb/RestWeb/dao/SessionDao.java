package com.vaskka.fun.restweb.RestWeb.dao;

import com.vaskka.fun.restweb.RestWeb.entity.SessionEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SessionDao extends JpaRepository<SessionEntity, String> {
}
