package org.hwine.controller.order;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.hwine.domain.order.PickUpOrderItemVO;
import org.hwine.domain.order.PickUpOrderVO;
import org.hwine.service.member.MemberService;
import org.hwine.service.order.OrderService;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/")
public class OrderController {

	@Setter(onMethod_ = { @Autowired })
	private OrderService oService;

	@Setter(onMethod_ = { @Autowired })
	private MemberService mService;

	@GetMapping("/mypage/qrCodeTest")
	public String qr() {
		return "/mypage/qrCodeTest";
	}

	@GetMapping("/order/orderView")
	public String orderView(@RequestParam("po_id") String po_id, Model model) {

		Authentication loggedInUser = SecurityContextHolder.getContext().getAuthentication();
		String m_email = loggedInUser.getName();
		log.info("주문 내역 리스트에서 주문 상세 진입");
		model.addAttribute("order", oService.getOrderDetail(po_id));
		model.addAttribute("user", oService.getUser(m_email));
		return "/mypage/orderView";
	}

	@GetMapping("/mypage/order")
	@ResponseBody
	public List<PickUpOrderVO> orderList(@RequestParam("po_status") int po_status) {

		log.info("주문내역 컨트롤러 진입");
		Authentication loggedInUser = SecurityContextHolder.getContext().getAuthentication();
		String m_email = loggedInUser.getName();
		List<PickUpOrderVO> orders = oService.getOrderList(m_email, po_status);
		return orders;
	}

	@GetMapping("/mypage/orderList")
	public String orderList() {
		return "/mypage/orderList";
	}
	
	@GetMapping("/orderCancel")
	public String orderCancel() {
		return "/mypage/orderCancel";
	}

	@GetMapping(path = "/order/orderOk")
	public String orderOk(@RequestParam("po_id") String po_id, Model model) {

		Authentication loggedInUser = SecurityContextHolder.getContext().getAuthentication();
		String m_email = loggedInUser.getName();
		model.addAttribute("order", oService.getOrderComplete(m_email));
		model.addAttribute("user", oService.getUser(m_email));
		return "/order/orderOk";
	}

	/*
	 * Author : 차민수 기능 : 주문서 테이블에 상품 목록을 Model 에 담아 전달 매개변수 : 사용자 아이디 기타 : 상품 아이디
	 * 리스트, 바로 구매를 위한 수량 (기본값 1개)
	 */

	@GetMapping(value = "/order/orderWrite")
	public String orderWrite(@RequestParam(value = "w_id") List<String> w_id, Model model) {

		Authentication loggedInUser = SecurityContextHolder.getContext().getAuthentication();
		String m_email = loggedInUser.getName();
		log.info("로그인한 회원 :" + m_email);
		log.info("주문서 컨트롤러 진입");

		model.addAttribute("products", oService.getOrderProdcut(w_id));
		log.info(oService.getUser(m_email));
		model.addAttribute("user", oService.getUser(m_email));

		return "/order/orderWrite";

	}
	
	@PostMapping(value = "/order/orderWrite", produces = { MediaType.APPLICATION_JSON_VALUE }, consumes = {
			MediaType.APPLICATION_JSON_VALUE })
	public ResponseEntity<PickUpOrderVO> orderWrite(@RequestBody Map<String, Object> map) throws ParseException {

		log.info("주문서 페이지에서 주문 완료로 넘어감");
		PickUpOrderVO order = new PickUpOrderVO();
		ObjectMapper mapper = new ObjectMapper();
		int result = 0;
		String po_booking_date = (String) map.get("po_booking_date");
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
		Date date = formatter.parse(po_booking_date);

		order.setPo_booking_date(date);
		order.setPo_status(Integer.parseInt((String.valueOf(map.get("po_status")))));
		order.setPo_total_price(Integer.parseInt(String.valueOf(map.get("po_total_price"))));
		order.setM_email(String.valueOf(map.get("m_email")));
		order.setS_code(String.valueOf(map.get("s_code")));
		order.setPo_mileage(Integer.parseInt(String.valueOf(map.get("po_mileage"))));
		order.setPo_phone(String.valueOf(map.get("po_phone")));
		order.setPm_code(String.valueOf(map.get("pm_code")));
		order.setPo_name(String.valueOf(map.get("po_name")));

		List<PickUpOrderItemVO> items = mapper.convertValue(map.get("items"),
				new TypeReference<List<PickUpOrderItemVO>>() {
				});
		order.setItems(items);

		log.info(order);

		result = oService.insertOrder(order);
		if (result == 0 ) {
			log.info("컨트롤러에서 재고가 0인 상품 입력되어 return");
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		log.info(result);

		order = oService.getOrderComplete(order.getM_email());

		return new ResponseEntity<>(order, HttpStatus.OK);
	}

	/*
	 * Author : 차민수 기능 : ajax 통신을 통해 주문 상품 취소 매개변수 : 사용자 아이디 기타 : 상품 아이디 리스트, 바로 구매를
	 * 위한 수량 (기본값 1개)
	 */
	@PostMapping(value = "/order/orderCancel", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<Integer> orderCancel(@RequestBody Map<String, Object> body) {

		log.info("주문 취소 컨트롤러 진입");
		Authentication loggedInUser = SecurityContextHolder.getContext().getAuthentication();
		String m_email = loggedInUser.getName();
		int result = 0;
		String po_id = String.valueOf(body.get("po_id"));
		int po_mileage = Integer.parseInt(String.valueOf(body.get("po_mileage")));
		result = oService.orderCancel(m_email, po_id, po_mileage);
		log.info("주문 취소 됨, result : " + result);
		return new ResponseEntity<>(result, HttpStatus.OK);
	}

}
