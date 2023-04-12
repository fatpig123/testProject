package org.hwine.mapper.order;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.hwine.domain.member.MemberVO;
import org.hwine.domain.order.OrderPageItemVO;
import org.hwine.domain.order.PickUpOrderVO;


/* *Author : 차민수
 * 기능 : 주문과 관련된 mapper
 */
public interface OrderMapper {
	
	// 주문 상품 정보 불러옴 매개변수 : 상품 아이디
	OrderPageItemVO orderProducts(@Param("w_id") String w_id);
	
	// 주문서 페이지에 로그인한 유저 불러옴 : 멤버 아이디
	MemberVO orderUser(@Param("m_email") String m_email);
	
	// 주문 전체 정보 입력 매개변수 : PickUpOrderVO
	int insertPickupOrders(PickUpOrderVO pickUp);
	
	// 주문한 상품 정보 입력, 매개변수 : PickUpOrderItemVO
	int insertItem(@Param("m_email") String m_email, @Param("w_id") String w_id, @Param("poi_quantity") int poi_quantity);
	
	// 주문한 상품 장바구니에서 삭제, 매개변수 : 사용자 아이디, 와인 아이디
	int deleteFromCart(@Param("m_email") String m_email, @Param("w_id") String w_id);
	
	// 주문 할 때 마일리지 사용 시 마일리지 차감 및 적립, 매개변수 : 사용자 아이디, 사용한 마일리지
	int deleteMileage(@Param("m_email") String m_email, @Param("po_mileage") int po_mileage, @Param("po_total_price") int po_total_price);
	
	// 주문 완료 후 주문 상세 내역 조회
	PickUpOrderVO orderOk(@Param("m_email") String m_email);
	
	// 로그인한 유저의 전체 주문 내역
	List<PickUpOrderVO> orderList(@Param("m_email") String m_email, @Param("po_status") int po_status);
	
	// 주문 내역 리스트에서 주문 상세 내역 조회
	PickUpOrderVO order(@Param("po_id") String po_id);
	
	// 주문 취소
	int orderCancel(@Param("m_email") String m_email, @Param("po_id") String po_id);
	
	// 주문 취소에 따른 마일리지 반환
	int returnMileage(@Param("po_mileage") int po_mileage, @Param("m_email") String m_email);
	
	// 주문에 따른 재고량 업데이트
	int amountUpdate(@Param("sws_stock") int sws_stock, @Param("w_id") String w_id, @Param("s_code") String s_code);
}
