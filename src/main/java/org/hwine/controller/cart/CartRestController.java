package org.hwine.controller.cart;

import java.util.HashMap;
import java.util.Map;

import org.hwine.service.cart.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/mypage")
public class CartRestController {

	@Setter(onMethod_ = { @Autowired })
	private CartService cService;
	
	/*
	 * Author : 차민수
	 * 기능 : 장바구니 담기 시, 존재 여부에 따른 추가 혹은 수량 변경 매개변수 : 사용자 아이디, 상품 아이디,
	 * 상품 수량 기타 : 장바구니 추가 시, 페이지 전환없이 수행하기위해 JSP단에서 ajax로 요청, 그에 따른 응답을 위해
	 * ResponseBody 어노테이션 활용, 결과 값은 HttpBody에 담아 반환
	 */
	@PostMapping(value = "/cartList", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<Map<String, Object>> addCart(@RequestBody Map<String, Object> body) {
		
		Authentication loggedInUser = SecurityContextHolder.getContext().getAuthentication();
		String m_email = loggedInUser.getName();
		String w_id = String.valueOf(body.get("w_id"));
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("result", cService.isExist(m_email, w_id));
		log.info("장바구니 상품 추가 및 수량 조절 컨트롤러 진입");
		return new ResponseEntity<>(map, HttpStatus.OK);

	}
	
}
