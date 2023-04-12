package org.hwine.security;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
* 시큐리티 CustomAuthenticationProvider: 사용자의 입력값과 db의 유저 값이 같은지 실제 인증처리
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
@RequiredArgsConstructor
public class CustomAuthenticationProvider implements AuthenticationProvider {
	
	private final CustomUserDetailsService userDetailsService; 
	private final BCryptPasswordEncoder pwdEncoder; //pwd 암호화 객체

	/**
	 * 실제 인증 처리
	 * 
	 * @param Authentication authentication
	 * @return Authentication: 사용자가 입력한 id, pwd 값이 있음
	 * @throws AuthenticationException
	 */	
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		
		//사용자가 입력한 값
		String memail = authentication.getName();
		String pwd = (String) authentication.getCredentials();
		log.info("CustomAuthenticationProvider.authenticate()");
		
		//db에서 가져온 값
		CustomUserDetails userDetails = (CustomUserDetails) userDetailsService.loadUserByUsername(memail);
		
		//인증: 여기서 던진 예외는 LoginFailureHandler에서 받아서 처리
		if(userDetails == null || !userDetails.getUsername().equals(memail) || 
					!pwdEncoder.matches(pwd, userDetails.getPassword())) {
			throw new BadCredentialsException(memail);
		}else if(! userDetails.isEnabled()) {
			throw new DisabledException(memail);
		}
		log.info("!!"+userDetails);
		return new UsernamePasswordAuthenticationToken(userDetails, "", userDetails.getAuthorities());
	}

	/**
	 * authenticate()에서 리턴한 구현체가 시큐리티에 유효한 타입이 맞는지 검사
	 * 
	 * @param Class<?> authentication
	 * @return boolean
	 */	
	@Override
	public boolean supports(Class<?> authentication) {
		return authentication.equals(UsernamePasswordAuthenticationToken.class);
	}

}
