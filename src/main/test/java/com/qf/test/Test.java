package com.qf.test;

import org.activiti.engine.RepositoryService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
    @org.junit.Test
    public void deploy(){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext_dao.xml");
        RepositoryService repositoryService = (RepositoryService)applicationContext.getBean("repositoryService");
        repositoryService.createDeployment().addClasspathResource("leave.bpmn").deploy();
    }
}
