package com.service;

import com.domain.Admin;

import java.util.List;

public interface IAdminService {
    /**
     * 查找所有的管理员
     *
     * @return
     */
    List<Admin> getAllAdmin();
}
