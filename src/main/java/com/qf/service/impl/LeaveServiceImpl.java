package com.qf.service.impl;

import com.qf.mapper.LeaveMapper;
import com.qf.pojo.Leave;
import com.qf.service.LeaveService;
import org.activiti.engine.HistoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class LeaveServiceImpl implements LeaveService {
    @Autowired
    private LeaveMapper leaveMapper;
    @Autowired
    private RuntimeService runtimeService;
    @Autowired
    private TaskService taskService;
    @Autowired
    private HistoryService historyService;
    @Override
    public int addLeave(Leave leave) {
        leaveMapper.addLeave(leave);
        int lid =leave.getLid();
        //发起请假流程实例
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("student",leave.getUser().getUsername());
        map.put("teacher","admin");
        //lid为businesskey
        runtimeService.startProcessInstanceByKey("leave",lid+"",map);
        String id = taskService.createTaskQuery().taskAssignee(leave.getUser().getUsername()).singleResult().getId();
        taskService.complete(id);
        return lid;
    }

    @Override
    public List<Leave> leaveList(String username) {
        List<Task> list = taskService.createTaskQuery().taskAssignee(username).list();
        List<String> ids = new ArrayList<String>();
        for(Task task:list){
            String businessKey = runtimeService.createProcessInstanceQuery()
                    .processInstanceId(task.getProcessInstanceId()).singleResult().getBusinessKey();
            ids.add(businessKey);
        }
        List<Leave> leaves = leaveMapper.leaveList(ids);

        return leaves;
    }

    @Override
    public int updateLeave(int lid) {

        Task task = taskService.createTaskQuery().processInstanceBusinessKey(lid + "").singleResult();
        taskService.complete(task.getId());
        return leaveMapper.updateLeave(lid);

    }
}
