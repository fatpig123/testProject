package org.hwine.domain.member;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
* 회원가입 폼
* @author : 김주현
* @since 2023.03.08
* @version 1.0 
* 
* <pre>
* 수정일       수정자       수정내용
* ----------  --------    ---------------------------
* 2023.03.08  김주현       	최초 생성
* </pre>
* 
*/
@Getter
@Setter
@ToString
public class JoinMemberForm {

	private String user_nm;
	private String nickname;
	private String birthday;
	private String gender;
	private String phone;
	private String email;
	private String user_pass_01;
	private String authCheck;
	
	public void changeNickname2Name() {
		this.nickname = this.user_nm;
	}
}
