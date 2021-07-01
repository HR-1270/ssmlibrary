package com.service;

import com.domain.Admin;

public interface IManagerService {
    /**
     * 根据账号密码查找
     * @param account
     * @param password
     * @return
     */
   Admin login(Integer account, String password) throws Exception;
}
