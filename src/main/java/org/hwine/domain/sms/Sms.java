package org.hwine.domain.sms;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
* 문자 종류 구분 enum
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
@AllArgsConstructor
public enum Sms {
	JOIN_SELF_AUTHENTICATION("인증번호를 입력해주세요. ["),
	TABLING_RESERVATION("테이블링 예약\n"),
	PICKUP("픽업 안내\n");

	private final String content;

}
