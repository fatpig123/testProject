package org.hwine.controller.order;

import org.hwine.domain.order.PickUpDTO;
import org.hwine.service.order.OrderService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/api/order")
@RequiredArgsConstructor
@Log4j
public class OrderRestController {

	private final OrderService oService;
	
	/**
	 * 주문 폼: 주문 후 주문 확인 문자 전송 요청
	 * @RequestBody PickUpDTO dto
	 * @return ResponseEntity<PickUpDTO>
	 */
	@PostMapping("/msg")
	public ResponseEntity<PickUpDTO> orderCompleteMsg(@RequestBody PickUpDTO dto) { //String to
		
		Authentication loggedInUser = SecurityContextHolder.getContext().getAuthentication();
		String m_email = loggedInUser.getName();
		log.info("문자 전송 컨트롤러 진입");
		return new ResponseEntity<>(oService.sendOrderMsg(dto, m_email), HttpStatus.OK);
	}
	
}
