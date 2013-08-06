package com.yijava.admin.service;

/**
 * 业务层的异常类
 * @author vincent
 *
 */
@SuppressWarnings("serial")
public class ServiceException extends RuntimeException {

	public ServiceException() {
		super();
	}

	public ServiceException(String message) {
		super(message);
	}

	public ServiceException(Throwable cause) {
		super(cause);
	}

	public ServiceException(String message, Throwable cause) {
		super(message, cause);
	}
}
