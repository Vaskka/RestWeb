package com.vaskka.fun.restweb.RestWeb.exception;

/**
 * @program: RestWeb
 * @description: SessionInvalidException
 * @author: Vaskka
 * @create: 2019/7/23 12:09 PM
 **/

public class SessionInvalidException extends RestWebRuntimeException{
    public SessionInvalidException(String message) {
        super(message);
    }
}
