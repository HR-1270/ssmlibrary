package com.service.impl;

import com.dao.IAdminDao;
import com.domain.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class IAdminService implements com.service.IAdminService {
    @Autowired
    IAdminDao adminDao;
    @Override
    public List<Admin> getAllAdmin() {
        return adminDao.getAllAdmin();
    }
}
