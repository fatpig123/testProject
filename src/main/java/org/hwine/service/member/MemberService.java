package org.hwine.service.member;

import org.hwine.domain.member.AdminInfoDTO;
import org.hwine.domain.member.HeaderTopMemberInfosDTO;
import org.hwine.domain.member.JoinAuthenticateDTO;
import org.hwine.domain.member.JoinMemberForm;
import org.hwine.domain.member.MypageInfoDTO;


/**
* 멤버 관련 Service 인터페이스
* @author : 김주현
* @since 2023.03.06
* @version 1.0 
* 
* <pre>
* 수정일       수정자       수정내용
* ----------  --------    ---------------------------
* 2023.03.06  김주현       	최초 생성
* 2023.03.08  김주현       	회원가입 로직 추가
* 2023.03.31  김주현 		관리자 정보 추가
* </pre>
* 
*/
public interface MemberService {

	//회원가입 유효성 검사
	boolean isValidEmail(String email);
	boolean isValidPhone(String phone);
	JoinAuthenticateDTO sendJoinAuthenticateMsg(JoinAuthenticateDTO dto); //문자전송
	JoinAuthenticateDTO authenticateJoinMsg(JoinAuthenticateDTO dto); //본인인증 확인
	
	//회원가입
	String joinNewMember(JoinMemberForm form);
	
	//관리자 정보
	AdminInfoDTO getAdminInfo(String memail);
	
	//마이페이지
	MypageInfoDTO getAllMypageInfos(String memail);
	
	//메인_헤더정보
	HeaderTopMemberInfosDTO getTopMemberInfos(String memail);
	
}
