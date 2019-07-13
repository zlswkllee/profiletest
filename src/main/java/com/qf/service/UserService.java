package com.qf.service;

import com.qf.pojo.Role;
import com.qf.pojo.User;

import java.util.List;

public interface UserService {
    public User login(User user);

    public void register (User user);

    //shiro
    String getPassword(String username);

    List<Role> getRolesByUid(String username);

    List<String> getPermission(List<Role> roles);
}
