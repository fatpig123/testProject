package org.hwine.exception;

import java.time.LocalDateTime;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class ErrorResponse {

	private final LocalDateTime timestamp = LocalDateTime.now();
	private final HttpStatus status;
	private final String code; //custom
	private final String message;
	
	public static ResponseEntity<ErrorResponse> toResponseEntity(ErrorCode errorCode){
		
		final String msg = errorCode.getStatus().value() == 500 ? "오류가 발생했습니다. 다시 시도해주세요." : errorCode.getMessage();
		
		return ResponseEntity
				.status(errorCode.getStatus())
				.body(
						ErrorResponse.builder()
						.status(errorCode.getStatus())
						.code(errorCode.name())
						.message(msg)
						.build()
				);
	}
	
	public static ResponseEntity<ErrorResponse> toResponseEntity(HttpStatus httpStatus, String errorMsg){
		
		return ResponseEntity
				.status(httpStatus)
				.body(
						ErrorResponse.builder()
						.status(httpStatus)
						.code(httpStatus.name())
						.message(errorMsg)
						.build()
				);
	}
}
