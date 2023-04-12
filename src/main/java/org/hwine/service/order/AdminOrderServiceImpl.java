package org.hwine.service.order;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hwine.domain.member.MemberVO;
import org.hwine.domain.order.Criteria;
import org.hwine.domain.order.PickUpOrderVO;
import org.hwine.mapper.order.AdminOrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class AdminOrderServiceImpl implements AdminOrderService {
	
	@Setter(onMethod_ = @Autowired)
	private AdminOrderMapper mapper;
	
	@Override
	public List<PickUpOrderVO> getList(Criteria cri, String m_email) {
		
		log.info("주문 내역 서비스단 진입");
		MemberVO member = mapper.checkScode(m_email);
		List<PickUpOrderVO> vo = new ArrayList<>();
		for (int i = 0; i < member.getAuthList().size(); i++) {
			if (member.getAuthList().get(i).getRole().contains("SEOUL")) {
				vo = mapper.getOrderListAdmin1(cri);
			}
			else if (member.getAuthList().get(i).getRole().contains("DAEGU")) {
				vo = mapper.getOrderListAdmin2(cri);
			}
			else {
				vo = mapper.getOrderListAdmin3(cri);
			}
			
		}
		return vo;
	}
	
	@Transactional
	@Override
	public List<PickUpOrderVO> getListScode(Criteria cri, String s_code) {
		
		log.info("지점에 따른 서비스단 진입");
		List<PickUpOrderVO> vo = new ArrayList<>();
		if (s_code.equals("scode1")) {
			vo = mapper.getOrderListAdmin1(cri);
		}
		else if (s_code.equals("scode2")) {
			vo = mapper.getOrderListAdmin2(cri);
		}
		else {
			vo = mapper.getOrderListAdmin3(cri);
		}
		return vo;
	}
	
	@Transactional
	@Override
	public int updateOrderStatus(int po_status, String m_email, String po_id, int po_mileage) {
		
		log.info("관리자 주문 취소 서비스단 진입");
		int result = 0;
		result += mapper.adminPickupUpdate(po_status, m_email, po_id);
		if (po_status == 2) {
			result += mapper.adminReturnMileage(po_mileage, m_email);
		}
		return result;
	}
	
	@Override
	public int qrCodeConfirm(String po_confirm_admin, String po_id) {
		
		int result = 0;
		log.info("QR 코드를 통한 주문 상태 업테이트 서비스단 진입");
		List<MemberVO> list = mapper.checkAdmin();
		for (int i = 0; i < list.size(); i++) {
			if (po_confirm_admin.equals(list.get(i).getMEmail())) {
				log.info("일치하는 아이디 있음 : " + list.get(i).getMEmail());
				result += mapper.confirmPickup(po_confirm_admin, po_id);
				return result;
			}
			else {
				log.info("입력한 관리자 아이디가 일치하지 않음");
			}
		}
		return result;
		
	}
	
	@Transactional
	@Override
	public Map<String, Object> adminOrderMain(String m_email) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		MemberVO vo = mapper.checkScode(m_email);
		log.info(m_email);
		log.info(vo);
		for (int i = 0; i < vo.getAuthList().size(); i++) {
			if (vo.getAuthList().get(i).getRole().contains("SEOUL")) {
				map.put("todayList", mapper.adminOrderMain());
				map.put("todayToBePickuped", mapper.todayToBePickuped());
				map.put("todayPickuped", mapper.todayPickuped());
				map.put("todayCanceledPickup", mapper.todayCanceledPickup());
				map.put("tomorrowPickup", mapper.tomorrowPickup());
				map.put("newPickup", mapper.newPickup());
				
			}
			else if (vo.getAuthList().get(i).getRole().contains("DAEGU")) {
				map.put("todayList", mapper.adminOrderMain1());
				map.put("todayToBePickuped", mapper.todayToBePickuped1());
				map.put("todayPickuped", mapper.todayPickuped1());
				map.put("todayCanceledPickup", mapper.todayCanceledPickup1());
				map.put("tomorrowPickup", mapper.tomorrowPickup1());
				map.put("newPickup", mapper.newPickup1());
			}
			else {
				map.put("todayList", mapper.adminOrderMain2());
				map.put("todayToBePickuped", mapper.todayToBePickuped2());
				map.put("todayPickuped", mapper.todayPickuped2());
				map.put("todayCanceledPickup", mapper.todayCanceledPickup());
				map.put("tomorrowPickup", mapper.tomorrowPickup2());
				map.put("newPickup", mapper.newPickup2());
			}
			map.put("role", vo.getAuthList());
		}
		return map;
	}

	@Transactional
	@Override
	public Map<String, Object> adminOrderMainScode(String s_code) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		if (s_code.equals("scode1")) {
			map.put("todayList", mapper.adminOrderMain());
			map.put("todayToBePickuped", mapper.todayToBePickuped());
			map.put("todayPickuped", mapper.todayPickuped());
			map.put("todayCanceledPickup", mapper.todayCanceledPickup());
			map.put("tomorrowPickup", mapper.tomorrowPickup());
			map.put("newPickup", mapper.newPickup());
		}
		else if (s_code.equals("scode2")) {
			map.put("todayList", mapper.adminOrderMain1());
			map.put("todayToBePickuped", mapper.todayToBePickuped1());
			map.put("todayPickuped", mapper.todayPickuped1());
			map.put("todayCanceledPickup", mapper.todayCanceledPickup1());
			map.put("tomorrowPickup", mapper.tomorrowPickup1());
			map.put("newPickup", mapper.newPickup1());
		}
		else {
			map.put("todayList", mapper.adminOrderMain2());
			map.put("todayToBePickuped", mapper.todayToBePickuped2());
			map.put("todayPickuped", mapper.todayPickuped2());
			map.put("todayCanceledPickup", mapper.todayCanceledPickup());
			map.put("tomorrowPickup", mapper.tomorrowPickup2());
			map.put("newPickup", mapper.newPickup2());
		}
		return map;
	}

	@Override
	public MemberVO checkAdminScode(String m_email) {
		return mapper.checkScode(m_email);
	}




	
	
}
