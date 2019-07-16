package com.vaskka.fun.restweb.RestWeb.dao;

import com.vaskka.fun.restweb.RestWeb.entity.BusinessEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BusinessDao extends JpaRepository<BusinessEntity, String> {
}
