package org.hwine.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;

import lombok.extern.log4j.Log4j;


/**
* 시큐리티 CustomAccessDeniedHandler: 권한이 없는 사용자의 접근에 대한 접근 거절 핸들러
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
@Log4j
public class CustomAccessDeniedHandler implements AccessDeniedHandler {

	/**
	 * 권한이 없는 사용자의 접근에 대한 접근 거절
	 * 
	 * @param  HttpServletRequest request, HttpServletResponse response, AccessDeniedException accessDeniedException
	 * @return void
	 * @throws IOException, ServletException
	 */	
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response,
			AccessDeniedException accessDeniedException) throws IOException, ServletException {
		
		RequestCache requestCache = new HttpSessionRequestCache();
		SavedRequest savedRequest = requestCache.getRequest(request, response);
		
		//redirectUrl
		String redirectUrl = "/";
		if (savedRequest != null) {
			log.info("접근 거절: 이전P("+redirectUrl+")");
			redirectUrl = savedRequest.getRedirectUrl();
			requestCache.removeRequest(request, response);
		}
		
		request.getRequestDispatcher(redirectUrl).forward(request, response);
	}
}
