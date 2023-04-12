package org.hwine.domain.member;

import java.util.List;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class AdminInfoDTO {

	private String email;
	private String name;
	private String nickname;
	private String profileImg;
	private String region;
	private String scode;
	private boolean totalAdmin;
	private List<AuthVO> authList;
	
	public AdminInfoDTO(MemberVO vo) {
		this.email = vo.getMEmail();
		this.name = vo.getMEmail();
		this.nickname = vo.getMNickname();
		this.profileImg = vo.getMProfileImg();
		this.authList = vo.getAuthList();
		this.totalAdmin = false;
		
		for(AuthVO auth : vo.getAuthList()) {
			if(auth.getRole().equals("ROLE_ADMIN_SEOUL")){
				region = "서울";
				break;
			}else if(auth.getRole().equals("ROLE_ADMIN_DAEGU")) {
				region = "대구";
				break;
			}else if(auth.getRole().equals("ROLE_ADMIN_TOTAL")){
				region = "서울|대구";
				this.totalAdmin = true;
			}
		}
	}
}
