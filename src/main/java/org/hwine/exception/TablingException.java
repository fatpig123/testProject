package org.hwine.exception;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public class TablingException extends RuntimeException{

	private static final long serialVersionUID = 1101959628152045980L;
	
	private final ErrorCode errorCode;

}
