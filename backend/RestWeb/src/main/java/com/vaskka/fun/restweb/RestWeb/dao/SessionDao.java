package com.vaskka.fun.restweb.RestWeb.dao;

import com.vaskka.fun.restweb.RestWeb.entity.SessionEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.*;

public interface SessionDao extends JpaRepository<SessionEntity, String> {

    List<SessionEntity> findByUserid(String useid);
}
