package org.hwine.service.order;

import java.util.List;
import java.util.Map;

import org.hwine.domain.member.MemberVO;
import org.hwine.domain.order.Criteria;
import org.hwine.domain.order.PickUpOrderVO;

public interface AdminOrderService {

	/* 주문 내역 조회*/
	List<PickUpOrderVO> getList(Criteria cri, String m_email);
	
	List<PickUpOrderVO> getListScode(Criteria cri, String s_code);
	
	/* 주문 상태 업데이트*/
	int updateOrderStatus(int po_status, String m_email, String po_id, int po_mileage);
	
	/* QR 코드를 통한 주문 상태 업데이트*/
	int qrCodeConfirm(String po_confirm_admin, String po_id);
	
	Map<String, Object> adminOrderMain(String m_email);
	
	Map<String, Object> adminOrderMainScode(String s_code);
	
	MemberVO checkAdminScode(String m_email);
}
