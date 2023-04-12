package org.hwine.domain.sms;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/**
* 문자 전송 시 문자객체
* @author : 김주현
* @since 2023.03.10
* @version 1.0 
* 
* <pre>
* 수정일       수정자       수정내용
* ----------  --------    ---------------------------
* 2023.03.10  김주현       	최초 생성
* 2023.03.23  차민수		DB 등록을 위한 수정
* </pre>
* 
*/

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class SmsVO {
	
	private String s_id; // 문자 아이디
	private String s_content; // 문자 내용
	private String s_type; // 단문문자(SMS) 장문문자(LMS)
	private String s_status; // 성공: x000, 실패: 2xxx, 3xxx
	private String s_from; // 누가 보냈는지, 기본값 : h-wine
	private Date s_Date; //보낸 날짜
	private String m_email; // 멤버 이메일
	private String s_phone; // 문자 보낸 핸드폰 번호

}
