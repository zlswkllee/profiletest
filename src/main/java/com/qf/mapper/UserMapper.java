package com.qf.mapper;

import com.qf.pojo.Role;
import com.qf.pojo.User;

import java.util.List;

public interface UserMapper {

    void insertUser(User user);

    User getUser(User user);

    //shiro
    String getPassword(String username);

    List<Role> getRolesByUid(String username);

    List<String> getPermission(List<String> rids);
}
