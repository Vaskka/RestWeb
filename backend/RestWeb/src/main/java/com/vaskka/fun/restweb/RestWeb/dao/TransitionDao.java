package com.vaskka.fun.restweb.RestWeb.dao;

import com.vaskka.fun.restweb.RestWeb.entity.TransitionEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TransitionDao extends JpaRepository<TransitionEntity, String> {
}
