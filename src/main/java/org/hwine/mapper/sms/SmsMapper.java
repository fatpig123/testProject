package org.hwine.mapper.sms;

import org.apache.ibatis.annotations.Mapper;
import org.hwine.domain.sms.SmsVO;

/**
* 문자 관련 Mapper
* @author : 김주현
* @since 2023.03.10
* @version 1.0 
* 
* <pre>
* 수정일       수정자       수정내용
* ----------  --------    ---------------------------
* 2023.03.10  김주현       	최초 생성
* 2023.03.23  차민수		DB 등록 메서드 추가
* </pre>
* 
*/
@Mapper
public interface SmsMapper {
	
	//문자 찾기
	SmsVO findSms(String sId);
	
	//문자 등록
	int insertSms(SmsVO vo);
	
}
