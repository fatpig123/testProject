package org.hwine.domain.order;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class PickUpOrderVO {

	private String po_id; // 픽업 주문 번호
	private Date po_register_date; // 주문 날짜
	private Date po_booking_date; // 예약 날짜
	private Date po_visited_date; // 방문한 날짜
	private int po_status; // 주문 상태 1: 주문 완료, 2: 주문 취소, 3: 픽업 완료
	private int po_total_price; // 주문 총 가격
	private String m_email; // 주문자
	private String s_code; // 픽업 장소 ex) 더 현대 서울, 더 현대 대구
	private String pm_code; // 주문 결제 방법
	private int po_mileage; // 주문 시 사용한 마일리지
	private String po_phone; // 주문자 핸드폰 번호
	private String po_name; // 주문자 이름
	
	private List<PickUpOrderItemVO> items; //주문 상품 리스트
	
	private StoreVO store;
	private PaymentMethodVO payment;
}
