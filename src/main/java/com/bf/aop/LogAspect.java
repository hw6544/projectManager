package com.bf.aop;

import java.util.logging.Logger;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

/**
 * @Date 2018. 2. 4.
 * @Author 박성호
 * @Description
 */
@Aspect
@Component
public class LogAspect {
	private static Logger logger = Logger.getLogger(LogAspect.class.getName());
	private static String logMsg = "System Log::";

	@Around("within(com.bf..*)")
	public Object advice(ProceedingJoinPoint joinPoint) {
		Object object = null;
		try {
			logger.info(logMsg + joinPoint.getSignature().toString());
			object = joinPoint.proceed();
		} catch (Throwable e) {
			logger.severe(logMsg + e.getMessage());
			e.printStackTrace();
		}
		return object;
	}
	
	// logger method
	public static void info(Object obj) {
		logger.info(logMsg + String.valueOf(obj));
	}

	public static void warning(Object obj) {
		logger.warning(logMsg + String.valueOf(obj));
	}

	public static void severe(Object obj) {
		logger.severe(logMsg + String.valueOf(obj));
	}
}
