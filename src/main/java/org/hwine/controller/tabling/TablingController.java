package org.hwine.controller.tabling;

import org.hwine.domain.tabling.TableSelectedOptionDTO;
import org.hwine.service.tabling.TablingService;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
* 테이블링 Controller
* @author : 김주현
* @since 2023.03.15
* @version 1.0 
* 
* <pre>
* 수정일       수정자       수정내용
* ----------  --------    ---------------------------
* 2023.03.15  김주현       	최초 생성
* 2023.03.21  김주현		예약 로직
* 2023.03.23  김주현		지점 접근 로직
* </pre>
* 
*/

@Controller
@RequestMapping("/tabling")
@RequiredArgsConstructor
@Log4j
public class TablingController {

	private final TablingService tablingService;
	
	@GetMapping("/store")
	public String tableWrite(Authentication authentication, @RequestParam String store, Model model) {
		log.info("지점 접근");
		model.addAttribute("info", tablingService.getStoreInfo(store));
		return "/table/store";
	}
	
	@PostMapping("/seats")
	public String tableWrite2(Authentication authentication, @ModelAttribute("options") TableSelectedOptionDTO dto) {
		log.info("좌석 선택");
		if(dto.getStoreId().equals("scode2"))
			return "/table/seats_daegu";
		else
			return "/table/seats";
	}
	
	@PostMapping("/reservation")
	public String reserve(Authentication authentication, TableSelectedOptionDTO dto){
		log.info("예약 진행");
		tablingService.confirmReservation(authentication.getName(), dto);
		return "redirect:/mypage/tabling";
	}
	
}
