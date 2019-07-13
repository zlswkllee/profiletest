package com.qf.service;

import com.qf.pojo.Leave;

import java.util.List;

public interface LeaveService {
    public int addLeave(Leave leave);

    public List<Leave> leaveList(String username);

    public int updateLeave(int lid);
}
