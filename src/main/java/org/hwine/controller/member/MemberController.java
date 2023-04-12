package org.hwine.controller.member;

import org.hwine.domain.member.JoinMemberForm;
import org.hwine.service.member.MemberService;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
* 회원관련 Controller
* @author : 김주현
* @since 2023.03.06
* @version 1.0 
* 
* <pre>
* 수정일       수정자       수정내용
* ----------  --------    ---------------------------
* 2023.03.06  김주현       	최초 생성
* 2023.03.08  김주현		회원가입 로직 추가
* </pre>
* 
*/

@Controller
@RequiredArgsConstructor
@Log4j
public class MemberController {
	
	private final MemberService memberService;
	
	@GetMapping(value = "/login")
	public String login_form() {
		log.info("로그인 페이지");
		return "/member/login";
	}

	@GetMapping("/joinForm")
	public String joinForm() {
		return "/member/joinForm";
	}
	
	@GetMapping("/lawAgreement")
	public String lawAgreement() {
		return "/member/lawAgreement";
	}
	
	@GetMapping("/forgotenId")
	public String forgotenId() {
		return "/member/forgotenId";
	}
	
	@GetMapping("/forgotenIdOk")
	public String forgotenIdOk() {
		return "/member/forgotenIdOk";
	}
	
	@GetMapping("/forgotenPw")
	public String forgotenPw() {
		return "/member/forgotenPw";
	}
	
	@GetMapping("/forgotenPwOk")
	public String forgotenPwOk() {
		return "/member/forgotenPwOk";
	}
	
	@GetMapping("/mypage")
	public String myPage(Authentication authentication, Model model) {
		log.info("마이페이지 " + authentication.getName());
		model.addAttribute("info", memberService.getAllMypageInfos(authentication.getName()));
		return "/mypage/mypage";
	}
	
	@GetMapping("/changeUserInfo")
	public String changeUserInfo() {
		return "/mypage/changeUserInfo";
	}
	
	@GetMapping("/checkPassword")
	public String checkPassword() {
		return "/mypage/checkPassword";
	}
	
	@GetMapping("/userWithdraw")
	public String userWithdraw() {
		return "/mypage/userWithdraw";
	}
	
	@PostMapping("/join")
	public String joinMember(@ModelAttribute JoinMemberForm form, RedirectAttributes rttr) {
		log.info("회원가입 처리: " + form);
		String res = memberService.joinNewMember(form);
		if(res != null) {
			rttr.addFlashAttribute("mname", res);
			log.info("res + " + res);
			return "redirect:/joinSuccess";
		}else {
			return "/member/joinFail";
		}
	}
	
	/**
	 * 회원가입 성공 후, 리다이렉트 페이지
	 * @return String
	 */
	@GetMapping("/joinSuccess")
	public String joinSuccess() {
		return "/member/joinSuccess";
	}
	
	@GetMapping("/mypage/tabling")
	public String myTabling(Authentication authentication) { 
		return "/mypage/tablingList";
	}
}
