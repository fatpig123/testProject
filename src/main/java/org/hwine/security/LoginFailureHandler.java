package org.hwine.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.extern.log4j.Log4j;

/**
* 시큐리티 LoginFailureHandler: 로그인 실패 시 사용되는 핸들러
* @author : 김주현
* @since 2023.03.06
* @version 1.0 
* 
* <pre>
* 수정일       수정자       수정내용
* ----------  --------    ---------------------------
* 2023.03.06  김주현       	최초 생성
* </pre>
* 
*/
@Service
@Log4j
public class LoginFailureHandler implements AuthenticationFailureHandler{
	
	private ObjectMapper objectMapper = new ObjectMapper();
	
	/**
	 * 로그인 실패 시 해당되는 예외를 응답으로 설정
	 * 
	 * @param HttpServletRequest request, HttpServletResponse response, AuthenticationException exception
	 * @return void
	 * @throws IOException, ServletException
	 */	
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {

		//AuthenticationException : 인증 실패시 생성되는 예외
		//세션에 예외 저장
		log.warn("로그인 실패");
		String loginFailMsg = "관리자에게 문의해주세요.";
		if(exception instanceof AuthenticationServiceException) {
			log.warn("존재하지 않는 사용자입니다.");
			loginFailMsg = "아이디 또는 비밀번호가 틀렸습니다.";
		}else if(exception instanceof BadCredentialsException) {
			log.warn("아이디 또는 비밀번호가 틀렸습니다.");
			loginFailMsg = "아이디 또는 비밀번호가 틀렸습니다.";
		}else if(exception instanceof DisabledException) {
			log.warn("탈퇴한 계정입니다.");
			loginFailMsg = "탈퇴한 계정입니다.";
		}else {
			log.warn("그냥 로그인 실패");
		}
		
		response.setStatus(HttpStatus.BAD_REQUEST.value());
		objectMapper.writeValue(response.getWriter(), loginFailMsg);
	}
}