package org.hwine.controller;

import java.security.Principal;
import java.util.List;

import org.hwine.domain.decanting.AvgVO;
import org.hwine.domain.member.HeaderTopMemberInfosDTO;
import org.hwine.domain.product.MainWineListFoodDTO;
import org.hwine.domain.product.chartVO;
import org.hwine.service.decanting.DecantingService;
import org.hwine.service.home.HomeService;
import org.hwine.service.member.MemberService;
import org.hwine.service.product.AdminProductService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@Log4j
public class HomeController {

	private final HomeService homeService;
	private final MemberService memberService;
	private final DecantingService decantingService;
	private final AdminProductService productService;

	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String home(Model model, Principal principal) {
		log.info("메인 (신상품, 베스트상품 6개씩)" + principal);
		if (principal != null) {
			AvgVO myAvg = null;
			myAvg = decantingService.getMyAvg(principal.getName());
			if (myAvg != null) {
				model.addAttribute("MyAvg", myAvg);
				model.addAttribute("recProList",
						decantingService.getbrList(null, principal.getName(), (int) Math.round(myAvg.getAcidAvg()),
								(int) Math.round(myAvg.getBodyAvg()), (int) Math.round(myAvg.getSweetAvg()),
								(int) Math.round(myAvg.getTanninAvg())));
			}
		}
		model.addAttribute("mainProduct", homeService.mainProduct());
		return "home";
	}

	@RequestMapping(value = { "/admin" }, method = RequestMethod.GET)
	public String adminHome(Authentication authentication, Model model) {
		// log.info("관리자 페이지 진입 -> " + authentication.getName());
		model.addAttribute("admin", memberService.getAdminInfo(authentication.getName()));
		model.addAttribute("reqOrdList", productService.getReqOrdList(authentication));
		model.addAttribute("salesChart", productService.getSalesChart(0, null, 0, authentication));
		model.addAttribute("ctgrChart", productService.getCtgrChart(0, 0, authentication));
		model.addAttribute("genderChart", productService.getMemberChart(0, 0, 0, null,authentication));
		model.addAttribute("ageChart", productService.getMemberChart(0, 0, 1, null, authentication));
		model.addAttribute("genderAgeChart", productService.getMemberChart(0, 0, 2, null, authentication));

		model.addAttribute("todaySales", productService.getTodaySales());
		model.addAttribute("todayPickup", productService.getTodayPickup());
		model.addAttribute("todaySignup", productService.getTodaySignup());
		
		return "/admin/index";
	}

	// 세션 업데이트
	@GetMapping("/updateHeader")
	public ResponseEntity<HeaderTopMemberInfosDTO> updateSessionHeaderInfo(Authentication authentication) {

		if (authentication == null) {
			return new ResponseEntity<>(null, HttpStatus.BAD_REQUEST);
		} else {
			return new ResponseEntity<>(memberService.getTopMemberInfos(authentication.getName()), HttpStatus.OK);
		}
	}
	
	@GetMapping("/getWineFoodList/{wfood}")
	public @ResponseBody ResponseEntity<MainWineListFoodDTO> getWineFoodList(@PathVariable String wfood) {
		log.info("컨트롤러: " + wfood);
		return new ResponseEntity<>(homeService.getWineListWithFood(wfood), HttpStatus.OK);
	}
}