package com.qf.service.impl;

import com.qf.mapper.UserMapper;
import com.qf.pojo.Role;
import com.qf.pojo.User;
import com.qf.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public User login(User user) {
        return userMapper.getUser(user);
    }

    @Override
    public void register(User user) {
        userMapper.insertUser(user);

    }

    @Override
    public String getPassword(String username) {
        return userMapper.getPassword(username);
    }

    @Override
    public List<Role> getRolesByUid(String username) {
        return userMapper.getRolesByUid(username);
    }

    @Override
    public List<String> getPermission(List<Role> roles) {
        List<String> rids = new ArrayList<String>();
        for(Role role:roles){
            rids.add(role.getRid()+"");
        }
        return userMapper.getPermission(rids);
    }
}
