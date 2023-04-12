package org.hwine.exception;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public class CustomNotFoundException extends RuntimeException{
	
	private static final long serialVersionUID = -7015613306254220553L;
	
	private final ErrorCode errorCode;
}
