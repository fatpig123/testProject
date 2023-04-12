package org.hwine.service.sms;

import org.hwine.domain.sms.Sms;
import org.hwine.domain.sms.SmsVO;

import net.nurigo.sdk.message.response.MessageListResponse;
import net.nurigo.sdk.message.response.SingleMessageSentResponse;


/**
* 문자 관련 Service 인터페이스
* @author : 김주현
* @since 2023.03.10
* @version 1.0 
* 
* <pre>
* 수정일       수정자       수정내용
* ----------  --------    ---------------------------
* 2023.03.10  김주현       	최초 생성
* 2023.03.23  차민수		전송 문자 DB 저장 위한 메서드 추가
* </pre>
* 
*/
public interface SmsService {
	
	//문자전송
	SingleMessageSentResponse sendMsg(String to, Sms situation, String content);

	//전송된　문자　확인(cool api)
	MessageListResponse getCoolSmsData(String type, String to);
	
	//db에서 전송된 문자 확인
	SmsVO getSmsFromDB(String sId);
	
	//db에 전송 문자 등록
	int insertSmsDB(SmsVO vo);
}
