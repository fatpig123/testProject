package org.hwine.service.order;

import java.util.List;

import org.hwine.domain.member.MemberVO;
import org.hwine.domain.order.OrderPageItemVO;
import org.hwine.domain.order.PickUpDTO;
import org.hwine.domain.order.PickUpOrderVO;

/* *Author : 차민수
 * 기능 : 주문 서비스에서 활용될 메서드 선언  
 */
public interface OrderService {

	// 주문서 페이지에 주문에 필요한 정보 조회
	List<OrderPageItemVO> getOrderProdcut(List<String> w_id);
	
	// 로그인한 유저 정보 조회
	MemberVO getUser(String m_email);
	
	// 주문하기에 따른 주문 전체 정보 등록, 매개변수 : PickUpOrderVO
	int insertOrder(PickUpOrderVO order);
	
	// 주문 완료 후, 주문 내역 조회
	PickUpOrderVO getOrderComplete(String m_email);
	
	// 로그인한 유저 내역 조회
	List<PickUpOrderVO> getOrderList(String m_email, int po_status);
	
	// 주문 리스트에서 주문 내역 조회
	PickUpOrderVO getOrderDetail(String po_id);
	
	// 주문 취소 -> 주문 상태 변경 및 마일리지 반환
	int orderCancel(String m_email, String po_id, int po_mileage);
	
	// 문자 전송
	PickUpDTO sendOrderMsg(PickUpDTO dto, String m_email);
}
