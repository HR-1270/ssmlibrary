package com.dao;

import com.domain.Admin;
import java.util.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface IAdminDao {
    /**
     * 根据账号密码查找
     *
     * @param account
     * @param password
     * @return
     */
    Admin login(@Param("account") Integer account, @Param("password") String password) throws Exception;

    /**
     * 查找所有的管理员
     *
     * @return
     */
    List<Admin> getAllAdmin();
}
