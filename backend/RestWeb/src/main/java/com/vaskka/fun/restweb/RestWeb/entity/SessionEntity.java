package com.vaskka.fun.restweb.RestWeb.entity;


import com.fasterxml.jackson.annotation.JsonFormat;
import com.vaskka.fun.restweb.RestWeb.util.CommonUtil;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

@Entity(name = "session")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SessionEntity {

    @Id
    private String id;

    @JsonFormat(pattern= CommonUtil.pattern)
    private Timestamp updatetime;

    private String userid;
}
