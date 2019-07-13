package com.qf.mapper;

import com.qf.pojo.Leave;

import java.util.List;

public interface LeaveMapper {
    public int addLeave(Leave leave);

    public List<Leave> leaveList(List<String> idList);

    public int updateLeave(int lid);
}
