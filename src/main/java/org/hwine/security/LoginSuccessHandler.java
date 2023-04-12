package org.hwine.security;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.extern.log4j.Log4j;

/**
* 시큐리티 LoginSuccessHandler: 로그인 성공 시 후처리
* @author : 김주현
* @since 2023.03.06
* @version 1.0 
* 
* <pre>
* 수정일       수정자       수정내용
* ----------  --------    ---------------------------
* 2023.03.06  김주현       	최초 생성
* 2023.03.31  김주현		관리자 로그인 로직 추가
* </pre>
* 
*/
@Service
@Log4j
public class LoginSuccessHandler implements AuthenticationSuccessHandler {
	
	private ObjectMapper objectMapper = new ObjectMapper();
	
	/**
	 * 로그인 성공 후 작업
	 * 
	 * @param HttpServletRequest request, HttpServletResponse response, Authentication authentication
	 * @return void
	 * @throws IOException, ServletException
	 */	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		
		log.info(authentication.getName() + "님 로그인 성공! 권한: " + authentication.getAuthorities());
		
		List<GrantedAuthority> authorities = (List<GrantedAuthority>) authentication.getAuthorities();
		LoginSuccessDTO dto = null;
		
		for(GrantedAuthority authority : authentication.getAuthorities()) {
			if(authority.getAuthority().equals("ROLE_MEMBER")) {
				dto = whenMemberLogin(request, response, authentication);
				break;
			}else {
				dto = whenAdminLogin(request, response, authentication);
				break;
			}
		}
		
		request.setAttribute("member", authentication.getName());
		
		//응답 정보 처리
		response.setStatus(HttpStatus.OK.value());
        response.setContentType(MediaType.APPLICATION_JSON_VALUE);
		objectMapper.writeValue(response.getWriter(), dto);
	}
	
	/***
	 * 'ROLE_MEMBER'가 로그인 했을 때
	 * @param request
	 * @param response
	 * @param authentication
	 * @return
	 */
	private LoginSuccessDTO whenMemberLogin(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) {
		//로그인 이전의 요청 정보
		RequestCache requestCache = new HttpSessionRequestCache();
		SavedRequest savedRequest = requestCache.getRequest(request, response);
		
		String redirectUrl = "/";
		if (savedRequest != null) { 
			redirectUrl = savedRequest.getRedirectUrl();
			requestCache.removeRequest(request, response);
		}
		
		CustomUserDetails loginMember = (CustomUserDetails) authentication.getPrincipal();
		loginMember.setPassword(null);
		
		//아이디저장
		boolean id_save = false; 
		if(request.getParameter("id_save") != null && request.getParameter("id_save").equals("Y"))
			id_save = true;
	
		return new LoginSuccessDTO(redirectUrl, loginMember.getUsername(), id_save);
	}
	
	/***
	 * 'ROLE_AMDIN'이 로그인 했을 때
	 * @param request
	 * @param response
	 * @param authentication
	 * @return
	 */
	private LoginSuccessDTO whenAdminLogin(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) {
		
		String redirectUrl = "/admin";
		
		CustomUserDetails loginMember = (CustomUserDetails) authentication.getPrincipal();
		loginMember.setPassword(null);
		
		return new LoginSuccessDTO(redirectUrl, loginMember.getUsername(), true);
	}
}
