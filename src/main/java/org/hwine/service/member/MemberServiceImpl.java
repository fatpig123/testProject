package org.hwine.service.member;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Random;

import org.hwine.domain.member.AdminInfoDTO;
import org.hwine.domain.member.AuthVO;
import org.hwine.domain.member.HeaderInfosVO;
import org.hwine.domain.member.HeaderTopMemberInfosDTO;
import org.hwine.domain.member.JoinAuthenticateDTO;
import org.hwine.domain.member.JoinMemberForm;
import org.hwine.domain.member.MemberVO;
import org.hwine.domain.member.MypageInfoDTO;
import org.hwine.domain.member.MypageTopVO;
import org.hwine.domain.order.MyRecentPickupVO;
import org.hwine.domain.sms.Sms;
import org.hwine.domain.tabling.MyTablingResvVO;
import org.hwine.exception.CustomNotFoundException;
import org.hwine.exception.ErrorCode;
import org.hwine.mapper.member.MemberMapper;
import org.hwine.service.sms.SmsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import net.nurigo.sdk.message.model.Message;
import net.nurigo.sdk.message.response.MessageListResponse;

/**
 * 멤버 관련 Service 구현체
 * 
 * @author : 김주현
 * @since 2023.03.06
 * @version 1.0
 * 
 *          <pre>
* 수정일       수정자       수정내용
* ----------  --------    ---------------------------
* 2023.03.06  김주현       	최초 생성
* 2023.03.08  김주현       	회원가입 로직 추가
 *          </pre>
 * 
 */
@Service
@RequiredArgsConstructor
@Transactional
@Log4j
public class MemberServiceImpl implements MemberService {

	private final SmsService smsService;

	private final MemberMapper memberMapper;

	/** 시큐리티, 비밀번호 암호화를 위함 */
	private final BCryptPasswordEncoder passwordEncoder;
	
	public AdminInfoDTO getAdminInfo(String memail) {
		MemberVO vo = memberMapper.findMember(memail);
		if(vo == null)
			throw new CustomNotFoundException(ErrorCode.NOT_FOUND_MEMBER);
		return new AdminInfoDTO(vo);
	}

	/**
	 * 회원가입 이메일 유효성 검사
	 * 
	 * @param String email
	 * @return boolean
	 */
	@Transactional(readOnly = true)
	public boolean isValidEmail(String email) {
		return memberMapper.findExistEmail(email) == null ? true : false;
	}

	/**
	 * 회원가입 휴대폰번호 유효성 검사
	 * 
	 * @param String phone
	 * @return boolean
	 */
	@Transactional(readOnly = true)
	public boolean isValidPhone(String phone) {
		return memberMapper.findExistPhone(phone) == null ? true : false;
	}

	/**
	 * 회원가입 본인인증 문자전송
	 * 
	 * @param JoinAuthenticateDTO dto
	 * @return JoinAuthenticateDTO
	 */
	public JoinAuthenticateDTO sendJoinAuthenticateMsg(JoinAuthenticateDTO dto) {

		log.info(dto);

		// 문자 내용 생성
		StringBuilder content = new StringBuilder();
		Sms sms = Sms.JOIN_SELF_AUTHENTICATION;
		content.append(sms.getContent());
		String randomStr = generateRandomNumber();
		log.info(randomStr);
		content.append(randomStr).append(']');

		dto.addRandomNum(randomStr);
		dto.addResult(false, "문자 전송");
		log.info(dto);

		// 문자전송
		smsService.sendMsg(dto.getTo(), sms, content.toString());

		return dto;
	}

	/**
	 * 회원가입 본인인증 확인
	 * 
	 * @param JoinAuthenticateDTO dto
	 * @return JoinAuthenticateDTO
	 */
	public JoinAuthenticateDTO authenticateJoinMsg(JoinAuthenticateDTO dto) {

		// 문자찾기
		MessageListResponse response = smsService.getCoolSmsData("SMS", dto.getTo());

		String sId = response.getStartKey();
		Message msg = (Message) response.getMessageList().get(sId);

		// 시간내인지(5분)
		System.out.println(msg.getDateUpdated().toString());
		String processeDateTime = msg.getDateUpdated().toString(); // 2023-03-09T08:31:33.592Z
		LocalDateTime time = string2LocalDateTime(processeDateTime);
		LocalDateTime limit = time.plusDays(2); // time.plusMinutes(5);

		if (time.isAfter(limit)) {
			log.info("시간초과입니다.");
			dto.addResult(false, "본인인증 시간초과입니다.");
			return dto;
		} else {
			log.info("시간내입니다.");
		}

		// 문자내용 비교
		String msgContent = msg.getText();
		String original = msgContent.substring(15, 21);
		System.out.println(original + " " + dto.getRandomNum());

		if (dto.getRandomNum().equals(original)) {
			log.info("인증번호가 일치합니다.");
			dto.addResult(true, "성공입니다.");
		} else {
			log.info("인증번호가 틀립니다.");
			dto.addResult(false, "인증번호가 틀립니다.");
			return dto;
		}
		log.info("===============본인인증 끝 " + dto);
		return dto;
	}

	/**
	 * 회원가입
	 * 
	 * @param JoinMemberForm form
	 * @return boolean
	 */
	@Transactional
	public String joinNewMember(JoinMemberForm form) {
		String encodedPwd = passwordEncoder.encode(form.getUser_pass_01());
		int gender = form.getGender() == "F" ? 1 : 0;

		if (passwordEncoder.encode(form.getNickname()) == null || passwordEncoder.encode(form.getNickname()) == "")
			form.changeNickname2Name();

		LocalDate birth = string2LocalDate(form.getBirthday());
		LocalDate now = LocalDate.now();

		MemberVO newMember = new MemberVO(form.getEmail(), encodedPwd, form.getUser_nm(), form.getNickname(),
				assignProfileImg(), form.getPhone(), gender, birth, 1, 0, "BASIC", now, now);
		int mres = memberMapper.insertMember(newMember);

		AuthVO auth = new AuthVO(newMember.getMEmail(), "ROLE_MEMBER");
		int ares = memberMapper.insertMemberAuth(auth);

		log.info(mres + ares);
		if (mres == 1 && ares == 1)
			return newMember.getMName();
		else {
			return null;
		}
	}

	/******* 마이페이지 *********/
	
	//마이페이지 정보들
	@Override
	public MypageInfoDTO getAllMypageInfos(String memail) {
		List<MypageTopVO> vos = memberMapper.selectMypageTopItems(memail);
		
		if(vos == null)
			throw new CustomNotFoundException(ErrorCode.NOT_FOUND_MEMBER);
		
		MypageInfoDTO result = null;
		
		//상단
		int[] nums = new int[5]; //tasting_card, pickup, tabling, decanting, follow
		for(int i = 0; i < vos.size(); i++) {
			MypageTopVO vo = vos.get(i);
			log.info("상단: " + vo );
			if(vo.getSep() == 0) {
				nums[0] = vo.getCnt();
			}else if(vo.getSep() == 1) {
				nums[1] = vo.getCnt();
			}else if(vo.getSep() == 2) {
				nums[2] = vo.getCnt();
			}else if(vo.getSep() == 3) {
				nums[3] = vo.getCnt();
			}else if(vo.getSep() == 4) {
				nums[4] = vo.getCnt();
			}
			result = new MypageInfoDTO(vo.getM_email(), vo.getM_grade(), vo.getM_mileage());
		} // end for
		
		result.addMypageTopInfo(nums);
		result.addTotalPrice(memberMapper.selectTotalPriceForAYear(memail));//누적금액
		
		//주문
		List<MyRecentPickupVO> pickupVO = memberMapper.selectMypagePickupOrder(memail);
		log.info("\t" + pickupVO);
		for (int i = 0; i < pickupVO.size(); i++) {
			if (pickupVO.get(i).getPo_status() ==  3) {
				result.decidePickupSoon(true);
			}
			else {
				result.decidePickupSoon(false);
			}
		}
		result.addPickupInfo(pickupVO);
		//테이블링
		List<MyTablingResvVO> tablingVO = memberMapper.selectMypageReservation(memail);
		log.info("\t" + tablingVO);
		if(tablingVO.size() == 2) {
			for(MyTablingResvVO vo : tablingVO) {
				if(vo.getSep().equals("soon")) {
					result.addTablingInfo(vo);
					result.decideTablingSoon(true);
				}
			}
		}else if(tablingVO.size() == 1){
			result.addTablingInfo(tablingVO.get(0));
		}
		
		log.info(result);
		return result;
	}
	
	/***
	 * 헤더 상단 정보들(최초 로그인 시 구하고, 세션에 저장)
	 */
	public HeaderTopMemberInfosDTO getTopMemberInfos(String memail) {
		List<HeaderInfosVO> vos = memberMapper.selectHeaderMemberInfos(memail);
		
		if(vos == null)
			throw new CustomNotFoundException(ErrorCode.NOT_FOUND_MEMBER);
		
		HeaderTopMemberInfosDTO result = new HeaderTopMemberInfosDTO();
		for(HeaderInfosVO vo : vos) {
			if(vo.getSep() == 1) {
				result.setCartCnt(vo.getCnt());
			}else if(vo.getSep() == 2) {
				result.setPickupCnt(vo.getCnt());
			}else if(vo.getSep() == 3) {
				result.setTastingcardCnt(vo.getCnt());
			}else {
				result.setTablingCnt(vo.getCnt());
			}
		}
		log.info("헤더정보 " + result);
		return result;
	}

	/**
	 * 본인인증 시, 랜덤 6자리 숫자 생성
	 * 
	 * @return String
	 */
	private String generateRandomNumber() {
		StringBuilder sb = new StringBuilder();

		Random random = new Random();
		for (int i = 0; i < 6; i++) {
			sb.append(String.valueOf(random.nextInt(10)));
		}
		return sb.toString();
	}

	/**
	 * 회원가입 시, 프로필 사진 랜덤으로 지정
	 * 
	 * @return String
	 */
	private String assignProfileImg() {
		// white_decanting.png
		String[] paths = { "white_decating", "white_glass", "white_grape1", "white_grape2", "white_grape3",
				"white_oak" };

		String startPath = "https://hwine.s3.ap-northeast-2.amazonaws.com/profile_imgs/";
		String endPath = ".png";

		int idx = (int) (Math.random() * paths.length);

		return startPath + paths[idx] + endPath;
	}

	/**
	 * 문자 전송 시간 타입 변경
	 * 
	 * @param String str
	 * @return LocalDateTime
	 */
	private LocalDateTime string2LocalDateTime(String str) {
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS");

		str = str.substring(0, str.length() - 1);
		str = str.replaceAll("T", " ");

		return LocalDateTime.parse(str, formatter);
	}

	/**
	 * 문자 전송 시간 타입 변경
	 * 
	 * @param String str
	 * @return LocalDate
	 */
	private LocalDate string2LocalDate(String str) {
		if (str.contains("-"))
			return LocalDate.parse(str, DateTimeFormatter.ISO_DATE);
		else {
			str = str.substring(0, 4) + '-' + str.substring(4, 6) + '-' + str.substring(6);
			return LocalDate.parse(str, DateTimeFormatter.ISO_DATE);
		}
	}

}
