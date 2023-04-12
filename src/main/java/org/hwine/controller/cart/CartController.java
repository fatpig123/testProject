package org.hwine.controller.cart;

import java.util.List;

import org.hwine.service.cart.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/mypage")
public class CartController {
	
	@Setter(onMethod_ = { @Autowired })
	private CartService cService;
	
	/*
	 * Author : 차민수
	 * 기능 : 장바구니 테이블에서 상품들을 Model 에 담아 전달
	 * 매개변수 : 사용자 아이디 기타 : 사용자 상품
	 */
	@GetMapping("/cartList")
	public String CartView(Model model) {
		
		Authentication loggedInUser = SecurityContextHolder.getContext().getAuthentication();
		String m_email = loggedInUser.getName();
		log.info(cService.getList(m_email));
		model.addAttribute("cartList", cService.getList(m_email));
		return "/mypage/cartList";
	}
	
	/*
	 * Author : 차민수
	 * 기능 : 장바구니 상품 전체 삭제, 선택 삭제 매개변수 : 사용자 아이디, 상품 아이디 기타 : 다수의 상품
	 * 아이디가 들어오는 경우를 위해 리스트에 상품 아이디를 담음 상품 아이디가 들어오지 않고, 삭제요청을 하는 경우 전체 삭제로 판단
	 */
	@GetMapping(value = "/removeCarts", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> removeCart(@RequestParam("m_email") String m_email, @RequestParam(value = "w_id", required = false) List<String> w_id) {
		
		log.info("삭제 컨트롤러 진입");
		
		if (w_id == null) {
			cService.removeCartAll(m_email);
		} else {
			cService.removeCart(m_email, w_id);
		}
		return new ResponseEntity<String>(HttpStatus.OK);

	}
	

}
