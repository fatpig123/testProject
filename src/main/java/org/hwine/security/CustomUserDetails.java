package org.hwine.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.hwine.domain.member.AuthVO;
import org.hwine.domain.member.HeaderTopMemberInfosDTO;
import org.hwine.domain.member.MemberVO;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/**
* 시큐리티 CustomUserDetails: 시큐리티 로그인을 위한 객체
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

@NoArgsConstructor
@Getter
@Setter
@ToString
public class CustomUserDetails implements UserDetails{

	private static final long serialVersionUID = 1L;
	
	private String username; //이메일
	private String password;
	private List<GrantedAuthority> authorities;
	private int menabled;
	private String mname; //이름(닉네임x)
	private String mnickname;
	private String mprofilImg;
	private int mgrade;
	
	private String admin_region;
	private String scode;
	private HeaderTopMemberInfosDTO headerInfos;
	
	public CustomUserDetails(MemberVO vo, HeaderTopMemberInfosDTO getTopMemberInfos) {
		this.username = vo.getMEmail();
		this.password = vo.getMPassword();
		this.menabled = vo.getMEnabled();
		this.mname = vo.getMName();
		this.mnickname = vo.getMNickname();
		this.mprofilImg = vo.getMProfileImg();
		this.mgrade = vo.getMGrade();
		
		setAuthorities(vo.getAuthList(), getTopMemberInfos);
	}
	
	public void setPassword(String pwd) {
		this.password = pwd;
	}

	public void setAuthorities(List<AuthVO> authList, HeaderTopMemberInfosDTO headerInfos) {

		List<GrantedAuthority> authorities = new ArrayList<>();
		
		this.admin_region = null;
		for (AuthVO auth : authList) {
			authorities.add(new SimpleGrantedAuthority(auth.getRole()));
			
			if(admin_region == null && auth.getRole().equals("ROLE_ADMIN_SEOUL")) {
				this.admin_region = "서울";
				this.scode = "scode2";
			}else if(admin_region == null && auth.getRole().equals("ROLE_ADMIN_DAEGU")) {
				this.admin_region = "대구";
				this.scode = "scode2";
			}else if(admin_region == null && auth.getRole().equals("ROLE_ADMIN_TOTAL")) {
				this.admin_region = "전체";
			}
			
			if(auth.getRole().equals("ROLE_MEMBER")) {
				this.headerInfos = headerInfos;
			}
		}

		this.authorities = authorities;
	}
	
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return authorities;
	}

	@Override
	public String getPassword() {
		return password;
	}

	@Override
	public String getUsername() {
		return username;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return menabled == 1 ? true : false;
	}

	public String getMname() {
		return mname;
	}
}