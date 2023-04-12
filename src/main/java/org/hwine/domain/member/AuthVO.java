package org.hwine.domain.member;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;


/**
* 회원 권한 VO
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
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class AuthVO {

	private String mEmail;
	private String role;
}
