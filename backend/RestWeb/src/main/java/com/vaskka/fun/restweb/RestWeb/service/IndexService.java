package com.vaskka.fun.restweb.RestWeb.service;

import org.springframework.stereotype.Service;

@Service
public class IndexService {


    public String index() {
        return "hello rest web";
    }
}
