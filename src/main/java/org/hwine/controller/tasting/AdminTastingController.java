package org.hwine.controller.tasting;


import java.util.HashMap;
import java.util.Map;

import org.hwine.service.order.AdminOrderService;
import org.hwine.service.order.OrderService;
import org.hwine.service.tastingCard.AdminTastingCardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin/tastingCard/")
public class AdminTastingController {
	
	@Setter(onMethod_ = @Autowired)
	private AdminTastingCardService adminTastingCardService;
	
	@Setter(onMethod_ = { @Autowired })
	private OrderService oService;
	
	@Setter(onMethod_ = @Autowired)
	private AdminOrderService adminOrderService;
	
	@GetMapping("/confirm")
	public String tastingCardConfirm() {
		return "/admin/order/TastingCardConfirm";
	}
	
	@GetMapping("/confirm/detail")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> confirmDetail(@RequestParam("tc_id") String tc_id) {
		
		log.info("QR 코드를 통한 모달 페이지 띄우기 -> 컨트롤러 진입");
		Map<String, Object> responseMap = new HashMap<>();
		responseMap.put("card", adminTastingCardService.getTastingByQR(tc_id));
		responseMap.put("user", oService.getUser(adminTastingCardService.getTastingByQR(tc_id).getTc_to()));
		log.info(responseMap);
		return ResponseEntity.ok(responseMap);
	}
	
	@PostMapping(value = "/confirm/detail/tasting/ok", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<Integer> confirmDetailOk(@RequestBody Map<String, Object> body) {
		
		String tc_confirm_admin = String.valueOf(body.get("tc_confirm_admin"));
		String tc_id = String.valueOf(body.get("tc_id"));
		log.info("QR 코드를 통한 모달 페이지 띄우고 ADMIN 아이디 : " + tc_confirm_admin);
		log.info("QR 코드를 통한 모달 페이지 띄우고 주문 번호 : " + tc_id);
		int result = adminTastingCardService.confirmTastingCard(tc_confirm_admin, tc_id);
		log.info(result);
		return new ResponseEntity<>(result, HttpStatus.OK);
	}
	
}
