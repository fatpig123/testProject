package org.hwine.security;

import org.hwine.domain.member.MemberVO;
import org.hwine.mapper.member.MemberMapper;
import org.hwine.service.member.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;


/**
* 시큐리티 CustomUserDetailsService: 입력된 값으로 DB에서 멤버 정보를 가져옴
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
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private MemberMapper memberMapper;
	@Autowired
	private MemberService memberService;
	
	/**
	 * 입력된 값으로 DB에서 멤버 정보 로드
	 * 
	 * @param String username
	 * @return UserDetails
	 * @throws UsernameNotFoundException
	 */	
	@Override
	public CustomUserDetails loadUserByUsername(String username) throws UsernameNotFoundException { //mEmail
		
		log.info("로그인 시도: " + username);
		
		
		MemberVO membervo = memberMapper.findMember(username);
		
		if(membervo == null)
			throw new UsernameNotFoundException("일치하는 회원이 없습니다.");
		
		//username과 일치하는 값이 있으면 return UserDetails
		CustomUserDetails customUserDetails = new CustomUserDetails(membervo, memberService.getTopMemberInfos(username));
		log.info("customUserDetails: " + customUserDetails);
		
		return customUserDetails;
	}
}
