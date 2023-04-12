package org.hwine.service.sms;

import java.time.LocalDateTime;

import org.hwine.domain.sms.Sms;
import org.hwine.domain.sms.SmsVO;
import org.hwine.mapper.sms.SmsMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import net.nurigo.sdk.NurigoApp;
import net.nurigo.sdk.message.model.Message;
import net.nurigo.sdk.message.request.MessageListRequest;
import net.nurigo.sdk.message.request.SingleMessageSendingRequest;
import net.nurigo.sdk.message.response.MessageListResponse;
import net.nurigo.sdk.message.response.SingleMessageSentResponse;
import net.nurigo.sdk.message.service.DefaultMessageService;

/**
* 문자 관련 Service 구현체
* @author : 김주현
* @since 2023.03.10
* @version 1.0 
* 
* <pre>
* 수정일       수정자       수정내용
* ----------  --------    ---------------------------
* 2023.03.10  김주현       	최초 생성
* 2023.03.23  차민수		DB 등록 위한 추가
* </pre>
* 
*/
@Service
@RequiredArgsConstructor
@Log4j
public class SmsServiceImpl implements SmsService{
	
	private final SmsMapper smsMapper;
	
	private static final String FROM = "01028949294";
	
	/**
	 * 문자 전송만
	 * @param String to
	 * @param Sms situation
	 * @param String content
	 * @return SingleMessageSentResponse
	 */	
	@Transactional
	public SingleMessageSentResponse sendMsg(String to, Sms situation, String content) {
		SingleMessageSentResponse response = sendBasicMessage(to, FROM, content);
		return response;
	}
	
	/**
	 * 문자 내용 조회
	 * @param String sId
	 * @return SmsVO
	 */	
	public SmsVO getSmsFromDB(String sId) {
		return smsMapper.findSms(sId);
	}
	
	/**
	 * 문자 DB 삽입
	 * @param Sms VO
	 * @return int
	 */	
	public int insertSmsDB(SmsVO vo) {
		int result = 0;
		result += smsMapper.insertSms(vo);
		return result;
	}
	/**
	 * 문자 조회(cool sms에서)
	 * @param String type
	 * @param String to
	 * @return MessageListResponse
	 * 
	 * 민수 : NCSPZLTDGKRDVXV9, JFMG07DVBN58RWPEOSCAY5HKAFYJYCSR
	 */	
	public MessageListResponse getCoolSmsData(String type, String to) {
		
		
		DefaultMessageService messageService =  NurigoApp.INSTANCE.initialize("NCSPZLTDGKRDVXV9", "JFMG07DVBN58RWPEOSCAY5HKAFYJYCSR",  "https://api.coolsms.co.kr");
		MessageListRequest messageListRequest = new MessageListRequest();

		// 불러올 메시지 갯수 제한
		messageListRequest.setLimit(1); // 5를 입력하면 5건이 조회됩니다, 미 입력시 20개로 지정

		// 메시지 ID로 검색
		//messageListRequest.setMessageId("M4V20230309173130NGIXWGF29HBYXIE"); 

		// 발신번호로 검색
		messageListRequest.setFrom(FROM);

		// 수신번호로 검색
		messageListRequest.setTo(to);

		// 메시지 타입으로 검색
		// 허용되는 메시지 타입: SMS(단문 문자), LMS(장문 문자), MMS(사진 문자), ATA(알림톡), CTA(친구톡), CTI(이미지 친구톡), NSA(네이버 스마트알림), RCS_SMS(RCS 단문 문자), RCS_LMS(RCS 장문 문자), RCS_MMS(RCS 사진 문자), RCS_TPL(RCS 템플릿)
		messageListRequest.setType(type);

		return messageService.getMessageList(messageListRequest);
	}
	
	/**
	 * 문자 단건 전송
	 * @param String to
	 * @param String from
	 * @param String content
	 * @return SingleMessageSentResponse
	 */	
	private SingleMessageSentResponse sendBasicMessage (String to, String from, String content) {
		
		DefaultMessageService messageService =  NurigoApp.INSTANCE.initialize("NCSPZLTDGKRDVXV9", "JFMG07DVBN58RWPEOSCAY5HKAFYJYCSR",  "https://api.coolsms.co.kr");

		Message message = new Message();
		message.setFrom(from);
		message.setTo(to);
		message.setText(content);
		
		SingleMessageSentResponse response = null;
		try {
			//messageService.send(message);
			response = messageService.sendOne(new SingleMessageSendingRequest(message));
		} catch (Exception ex) {
			log.info(ex.getMessage());
		}
		
		return response;
	}


}