package org.hwine.security;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
* 로그인 관련 DTO: 로그인 성공 시 응답으로 보내주는 DTO
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
@Getter
@AllArgsConstructor
public class LoginSuccessDTO {

	private String redirectUrl;
	private String memberId;
	private Boolean isRememberId;
}
