package org.hwine.domain.member;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/**
* 회원 가입 시, 본인인증 관련 DTO
* @author : 김주현
* @since 2023.03.10
* @version 1.0 
* 
* <pre>
* 수정일       수정자       수정내용
* ----------  --------    ---------------------------
* 2023.03.10  김주현       	최초 생성
* </pre>
* 
*/
@Getter
@Setter
@NoArgsConstructor
@ToString
public class JoinAuthenticateDTO {

	private String randomNum;
	private String to;
	private boolean status;
	private String result;
	
	public void addRandomNum(String randomNum) {
		this.randomNum = randomNum;
	}
	
	public void addResult(boolean status, String result) {
		this.status = status;
		this.result = result;
	}
}
