package org.hwine.controller.tasting;

import java.text.ParseException;
import java.util.Map;

import org.hwine.service.order.OrderService;
import org.hwine.service.tastingCard.TastingCardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/")
public class TastingController {

	@Setter(onMethod_ = { @Autowired })
	private TastingCardService tastingCardService;
	
	@Setter(onMethod_ = { @Autowired })
	private OrderService oService;
	
	@GetMapping("/mypage/wineTastingCard")
	public String tasting(Model model) {
		
		log.info("와인 시음권 내역 컨트롤러 진입");
		Authentication loggedInUser = SecurityContextHolder.getContext().getAuthentication();
		String m_email = loggedInUser.getName();
		log.info(tastingCardService.getList(m_email));
		model.addAttribute("cardList", tastingCardService.getList(m_email));
		return "/mypage/wineTastingCard";
	}
	
	@GetMapping("/order/wineTastingCardOrderWrite")
	public String tastingOrder(Model model) {
		
		log.info("와인 시음권 구매 컨트롤러 진입");
		Authentication loggedInUser = SecurityContextHolder.getContext().getAuthentication();
		String m_email = loggedInUser.getName();
		model.addAttribute("user", oService.getUser(m_email));
		return "/order/wineTastingCardOrderWrite";
	}
	
	@PostMapping(value="/order/TastingCardWrite", produces = {MediaType.APPLICATION_JSON_VALUE}, consumes = {MediaType.APPLICATION_JSON_VALUE})
	public ResponseEntity<Integer> cardOrderWrite(@RequestBody Map<String, Object> map) throws ParseException {
		
		log.info("테이스팅 카드 주문서 컨트롤러 진입");
		int result = 0;
		String tc_to = String.valueOf(map.get("tc_to"));
		String tc_from = String.valueOf(map.get("tc_from"));
		int tc_money = Integer.parseInt(String.valueOf(map.get("tc_money")));
		
		log.info("tc_to : " + tc_to + " tc_from : " + tc_from + " tc_money : " + tc_money);
		
		result = tastingCardService.buyTastingCard(tc_to, tc_from, tc_money);
		log.info(result);
		
		/* order = oService.getOrderComplete(order.getM_email()); */
		
		return new ResponseEntity<>(result, HttpStatus.OK);
	}
}
