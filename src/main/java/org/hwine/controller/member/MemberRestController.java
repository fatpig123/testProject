package org.hwine.controller.member;

import org.hwine.domain.member.HeaderTopMemberInfosDTO;
import org.hwine.domain.member.JoinAuthenticateDTO;
import org.hwine.service.member.MemberService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
* 회원관련 RestController
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

@RestController
@RequestMapping("/api/member")
@RequiredArgsConstructor
@Log4j
public class MemberRestController {
	
	private final MemberService memberService;
	
	/**
	 * 회원가입 폼: 중복 이메일 유효성 검사
	 * @param @PathVariable String email
	 * @return ResponseEntity<Boolean> 
	 */
	@GetMapping("/valid/email/{email}")
	public ResponseEntity<Boolean> checkExistMemberPhone(@PathVariable String email) {
		//log.info("이메일 확인");
		return new ResponseEntity<>(memberService.isValidEmail(email), HttpStatus.OK);
	}
	
	/**
	 * 회원가입 폼: 중복 이메일 유효성 검사
	 * @param @PathVariable String phone
	 * @return ResponseEntity<Boolean> 
	 */
	@GetMapping("/valid/phone/{phone}")
	public ResponseEntity<Boolean> checkExistMemberEmail(@PathVariable String phone) {
		//log.info("폰 확인");
		return new ResponseEntity<>(memberService.isValidPhone(phone), HttpStatus.OK);
	}
	
	/**
	 * 회원가입 폼: 회원가입 본인인증을 위한 문자 전송 요청
	 * @RequestBody JoinAuthenticateDTO dto
	 * @return ResponseEntity<JoinAuthenticateDTO>
	 */
	@PostMapping("/sms/join-send")
	public ResponseEntity<JoinAuthenticateDTO> sendJoinAuthenticateMsg(@RequestBody JoinAuthenticateDTO dto) { //String to
		//log.info("회원가입 문자 전송" + dto);
		return new ResponseEntity<>(memberService.sendJoinAuthenticateMsg(dto), HttpStatus.OK);
	}
	
	/**
	 * 회원가입 폼: 회원가입 본인인증 유효성 검사 확인
	 * @param @RequestBody JoinAuthenticateDTO dto
	 * @return ResponseEntity<JoinAuthenticateDTO>
	 */
	@PostMapping("/sms/join-certificate")
	public ResponseEntity<JoinAuthenticateDTO> authenticateJoinMsg(@RequestBody JoinAuthenticateDTO dto) { //String to
		//log.info("회원가입 본인인증 확인" + dto);
		return new ResponseEntity<>(memberService.authenticateJoinMsg(dto), HttpStatus.OK);
	}
	
	//헤더 상단 값들
	//@GetMapping("/headerInfo")
	public ResponseEntity<HeaderTopMemberInfosDTO> getHeaderInfos(Authentication authentication){
		return new ResponseEntity<>(memberService.getTopMemberInfos(authentication.getName()), HttpStatus.OK);
	}

}
