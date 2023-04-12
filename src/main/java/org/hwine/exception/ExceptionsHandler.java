package org.hwine.exception;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.async.AsyncRequestTimeoutException;
import org.springframework.web.servlet.NoHandlerFoundException;

import lombok.extern.log4j.Log4j;

@ControllerAdvice
@Log4j
public class ExceptionsHandler{

	@ExceptionHandler(TablingException.class)
	public @ResponseBody ResponseEntity<ErrorResponse> handleTablingException(TablingException e){
		log.error("테이블링 오류: " + e.getErrorCode().getMessage());
		return ErrorResponse.toResponseEntity(e.getErrorCode());
	}
	
	@ExceptionHandler(CustomNotFoundException.class)
	public String handlerCustomNotFoundException(CustomNotFoundException e) {
		log.error("custom not_found_ex: " + e.getErrorCode().getMessage());
		return "/exception/ex404";
	}
	
//    @ExceptionHandler(HttpRequestMethodNotSupportedException.class)
//    protected ResponseEntity<ErrorResponse> handleHttpRequestMethodNotSupportedException(HttpRequestMethodNotSupportedException e) {
//        log.error("허용되지 않은 메소드", e);
//        return ErrorResponse.toResponseEntity(ErrorCode.METHOD_NOT_ALLOWED);
//    }
    
	@ExceptionHandler(MissingServletRequestParameterException.class)
	public String handlerMissingServletRequestParameterException(MissingServletRequestParameterException e) {
		log.error("잘못된 파라미터 : " + e.getParameterName());
		//throw new CustomNotFoundException(ErrorCode.NOT_FOUND_PAGE_URL);
		return "/exception/ex404";
	}
	
	@ExceptionHandler(NoHandlerFoundException.class)
	public String handlerNotFoundException(NoHandlerFoundException e) {
		log.error("not_found_ex: " + e.getMessage());
		return "/exception/ex404";
	}
	
//	@ExceptionHandler(RuntimeException.class)
//	public @ResponseBody ResponseEntity<ErrorResponse> handlerCustomRuntimeException(RuntimeException e) {
//		log.error("runtime error : " + e);
//		return ErrorResponse.toResponseEntity(HttpStatus.BAD_REQUEST, e.getMessage());
//	}
	
	@ExceptionHandler(AsyncRequestTimeoutException.class)
	public void handleAsync(AsyncRequestTimeoutException e) {
		log.error("여기[" + e);
		
	}

}

