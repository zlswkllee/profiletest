package com.qf.service;

import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.springframework.stereotype.Component;

@Component
public class LogAdvice {
    Logger logger = Logger.getLogger(LogAdvice.class);
    public void before(JoinPoint joinPoint){
        logger.warn("方法开始：---" + getInfo(joinPoint));

    }

    public void afterReturning(JoinPoint joinPoint){
        logger.warn("方法结束：---" + getInfo(joinPoint));
    }
    public void afterException(JoinPoint joinPoint,Throwable throwable){
        String message = throwable.getMessage();
        logger.fatal( "方法出错啦" +getInfo(joinPoint)+"--- 异常通知-->" + message);
    }
    private String getInfo(JoinPoint joinPoint) {
        long l = System.currentTimeMillis();
        String targetName = joinPoint.getTarget().getClass().getName();
        String methodName = joinPoint.getSignature().getName();
        String info= "类名:" + targetName + "-- 方法名:" + methodName + "-- 时间:" + l;
        System.out.println("**************" + info);
        return info;
    }
}
