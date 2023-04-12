package org.hwine.mapper.order;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.hwine.domain.member.AuthVO;
import org.hwine.domain.member.MemberVO;
import org.hwine.domain.order.Criteria;
import org.hwine.domain.order.PickUpOrderVO;

public interface AdminOrderMapper {

	List<PickUpOrderVO> getOrderListAdmin1(Criteria cri);
	List<PickUpOrderVO> getOrderListAdmin2(Criteria cri);
	List<PickUpOrderVO> getOrderListAdmin3(Criteria cri);
	
	int adminPickupUpdate(@Param("po_status") int po_status, @Param("m_email") String m_email, @Param("po_id") String po_id);
	
	int adminReturnMileage(@Param("po_mileage") int po_mileage, @Param("m_email") String m_email);
	
	int confirmPickup(@Param("po_confirm_admin") String po_confirm_admin, @Param("po_id") String po_id);
	
	List<MemberVO> checkAdmin();
	
	List<PickUpOrderVO> adminOrderMain();
	List<PickUpOrderVO> adminOrderMain1();
	List<PickUpOrderVO> adminOrderMain2();
	
	int todayToBePickuped();
	int todayToBePickuped1();
	int todayToBePickuped2();
	
	int todayPickuped();
	int todayPickuped1();
	int todayPickuped2();
	
	int newPickup();
	int newPickup1();
	int newPickup2();
	
	int todayCanceledPickup();
	int todayCanceledPickup1();
	int todayCanceledPickup2();
	
	int tomorrowPickup();
	int tomorrowPickup1();
	int tomorrowPickup2();
	
	MemberVO checkScode(@Param("m_email") String m_email);
}
