package org.hwine.controller.order;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hwine.domain.member.MemberVO;
import org.hwine.domain.order.Criteria;
import org.hwine.domain.order.PickUpOrderVO;
import org.hwine.service.member.MemberService;
import org.hwine.service.order.AdminOrderService;
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

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RequestMapping("/admin/order/")
@Controller
@Log4j
public class AdminOrderController {
	
	@Setter(onMethod_ = @Autowired)
	private AdminOrderService adminOrderService;
	
	@Setter(onMethod_ = { @Autowired })
	private OrderService oService;

	@Setter(onMethod_ = { @Autowired })
	private MemberService mService;
	
	@GetMapping("/controll")
	public String orderAdmin(Criteria cri, Model model, Authentication authentication) {
		
		Authentication loggedInUser = SecurityContextHolder.getContext().getAuthentication();
		String m_email = loggedInUser.getName();
		List<PickUpOrderVO> list = adminOrderService.getList(cri, m_email);
		MemberVO admin = adminOrderService.checkAdminScode(m_email);
		log.info("주문 리스트 : " + list);
		if(!list.isEmpty()) {
			model.addAttribute("list", list);
			model.addAttribute("admin", admin);
			log.info(admin);
		}
		else {
			model.addAttribute("listkCheck", "empty");
		}
		return "/admin/order/pickupOrdersAdmin";
	}
	
	@GetMapping("/controll/scode")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> orderAdminScode(Criteria cri, @RequestParam("s_code") String s_code) {
		
		log.info(s_code + "지점에 따른 주문 리스트");
		Map<String, Object> responseMap = new HashMap<>();
		List<PickUpOrderVO> list = adminOrderService.getListScode(cri, s_code);
		responseMap.put("list", list);
		return ResponseEntity.ok(responseMap);
	}
	
	@GetMapping("/controll/detail")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> adminOrderDetail(@RequestParam("po_id") String po_id, @RequestParam("m_email") String m_email) {

		log.info("관리자 주문 상세 내역 컨트롤러 진입");
		log.info(po_id + m_email);
		
		Map<String, Object> responseMap = new HashMap<>();
		responseMap.put("order", oService.getOrderDetail(po_id));
		log.info(oService.getOrderDetail(po_id));
		responseMap.put("user", oService.getUser(m_email));
		return ResponseEntity.ok(responseMap);
	}
	
	@PostMapping(value = "/update/pickup", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<Integer> orderCancelAdmin(@RequestBody Map<String, Object> body) {
		
		log.info("관리자 주문 상태 변경 컨트롤러 진입");
		int result = 0;
		String po_id = String.valueOf(body.get("po_id"));
		String m_email = String.valueOf(body.get("m_email"));
		String mileage = String.valueOf(body.get("po_mileage"));
		int po_mileage = Integer.parseInt(mileage.replace("[", "").replace("]", ""));
		log.info(po_mileage);
		int po_status = Integer.parseInt(String.valueOf(body.get("po_status")));
		result += adminOrderService.updateOrderStatus(po_status, m_email, po_id, po_mileage);
		log.info("관리자 주문 상태 변경 완료");
		return new ResponseEntity<>(result, HttpStatus.OK);
		
	}
	
	@GetMapping("/confirm")
	public String pickUpConfirm(@RequestParam("po_id") String po_id) {
		return "/admin/order/pickupConfirm";
	}
	
	@GetMapping("/confirm/detail")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> confirmDetail(@RequestParam("po_id") String po_id) {
		
		log.info("QR 코드를 통한 모달 페이지 띄우기 -> 컨트롤러 진입");
		Map<String, Object> responseMap = new HashMap<>();
		responseMap.put("order", oService.getOrderDetail(po_id));
		log.info(oService.getOrderDetail(po_id));
		return ResponseEntity.ok(responseMap);
	}
	
	@PostMapping(value = "/confirm/detail/ok", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<Integer> confirmDetailOk(@RequestBody Map<String, Object> body) {
		
		String po_confirm_admin = String.valueOf(body.get("po_confirm_admin"));
		String po_id = String.valueOf(body.get("po_id"));
		log.info("QR 코드를 통한 모달 페이지 띄우고 ADMIN 아이디 : " + po_confirm_admin);
		log.info("QR 코드를 통한 모달 페이지 띄우고 주문 번호 : " + po_id);
		int result = adminOrderService.qrCodeConfirm(po_confirm_admin, po_id);
		log.info(result);
		return new ResponseEntity<>(result, HttpStatus.OK);
	}
	
	@GetMapping("/main")
	public String orderMain() {
		return "/admin/order/orderMain";
	}
	
	@GetMapping("/main/list")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> mainList() {
		
		log.info("픽업 관리자 메인 페이지 리스트 컨트롤러 진입");
		Authentication loggedInUser = SecurityContextHolder.getContext().getAuthentication();
		String m_email = loggedInUser.getName();
		Map<String, Object> responseMap = new HashMap<>();
		responseMap = adminOrderService.adminOrderMain(m_email);
		log.info(responseMap);
		return new ResponseEntity<>(responseMap, HttpStatus.OK);
	}
	
	@GetMapping("/main/list/scode")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> mainListScode(@RequestParam("s_code") String s_code) {
		
		log.info("픽업 관리자 메인 페이지 리스트 컨트롤러 진입");
		Map<String, Object> responseMap = new HashMap<>();
		responseMap = adminOrderService.adminOrderMainScode(s_code);
		log.info(responseMap);
		return new ResponseEntity<>(responseMap, HttpStatus.OK);
	}
}
