package org.hwine.controller.tabling;

import java.util.Base64;

import org.hwine.domain.member.AdminInfoDTO;
import org.hwine.service.member.MemberService;
import org.hwine.service.tabling.TablingAdminService;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
* 테이블링 관리자 Controller
* @author : 김주현
* @since 2023.04.03
* @version 1.0 
* 
* <pre>
* 수정일       수정자       수정내용
* ----------  --------    ---------------------------
* 2023.04.03  김주현       	최초 생성

* </pre>
* 
*/

@Controller
@RequestMapping("/admin/tabling")
@RequiredArgsConstructor
@Log4j
public class TablingAdminController {

	private final TablingAdminService tablingAdminService;
	private final MemberService memberService;
	
	@GetMapping
	public String index(Authentication authentication, @RequestParam(required = false) String scode, Model model) {
		log.info("관리자 테이블링 메인" + scode + authentication);
		AdminInfoDTO adminInfo = memberService.getAdminInfo(authentication.getName());
		log.info("~~~~~~~~~~~" + adminInfo);
		model.addAttribute("admin", adminInfo);  
		
		if(scode == null) {
			model.addAttribute("info", tablingAdminService.getAllMainInfo(authentication.getName()));
		}else {
			if(adminInfo.isTotalAdmin()) {
				model.addAttribute("info", tablingAdminService.getAllMainInfoByTotalAdmin(scode));
				model.addAttribute("select_store", scode);
			}else {
				model.addAttribute("info", tablingAdminService.getAllMainInfo(authentication.getName()));
			}			
		}
		
		return "/admin/tabling/index";
	}
	
	@GetMapping("/list")
	public String getReservationList(Authentication authentication, @RequestParam(required = false) String scode, Model model) {
		log.info("관리자 테이블링 내역 조회 " + authentication.getName());
		
		AdminInfoDTO adminInfo = memberService.getAdminInfo(authentication.getName());
		model.addAttribute("admin", adminInfo);
		model.addAttribute("reservations", tablingAdminService.getReservationList(authentication.getName()));
		
		
		if(scode == null) {
			model.addAttribute("reservations", tablingAdminService.getReservationList(authentication.getName()));
		}else {
			if(adminInfo.isTotalAdmin()) {
				System.out.println(tablingAdminService.getReservationListByTotalAdmin(scode).size());
				model.addAttribute("reservations", tablingAdminService.getReservationListByTotalAdmin(scode));
				model.addAttribute("select_store", scode);
			}else {
				model.addAttribute("reservations", tablingAdminService.getReservationList(authentication.getName()));
			}			
		}
		
		return "/admin/tabling/reservationList";
	}
	
	@GetMapping("/confirm")
	public String qrcodeConfirm(Authentication authentication, @RequestParam String rid, Model model) {
		log.info("예약 확인");
		model.addAttribute("rid", decodeRid(rid));
		return "/admin/tabling/tmp";
	}
	
	private String decodeRid(String encode) {
	    return new String(Base64.getDecoder().decode(encode.getBytes()));
	}

}
