package org.hwine.service.order;



import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hwine.domain.member.MemberVO;
import org.hwine.domain.order.OrderPageItemVO;
import org.hwine.domain.order.PickUpDTO;
/*import org.hwine.domain.order.OrderUserInfoVO;
import org.hwine.domain.order.OrderVO;*/
import org.hwine.domain.order.PickUpOrderItemVO;
import org.hwine.domain.order.PickUpOrderVO;
import org.hwine.domain.sms.Sms;
import org.hwine.domain.sms.SmsVO;
import org.hwine.mapper.order.OrderMapper;
import org.hwine.service.sms.SmsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import net.nurigo.sdk.message.response.SingleMessageSentResponse;

@Service
@Log4j

/*
 * *Author : 차민수 기능 : 주문 서비스 및 내부 로직 구현
 */
public class OrderServiceImpl implements OrderService {

	// OrderMapper 의존성 주입
	@Setter(onMethod_ = @Autowired)
	private OrderMapper mapper;
	
	@Setter(onMethod_ = @Autowired)
	private SmsService sMapper;
	
	/*
	 * Author : 차민수
	 * 기능 : 주문할 상품 조회
	 * 매개변수 : 상품 아이디
	 */
	@Override
	public List<OrderPageItemVO> getOrderProdcut(List<String> w_id) {
		
		log.info("주문할 상품 조회");
		List<OrderPageItemVO> items = new ArrayList<>();
		for (int i = 0; i < w_id.size(); i++) {
			items.add(mapper.orderProducts(w_id.get(i)));
		}
		return items;
	}

	/*
	 * Author : 차민수
	 * 기능 : 주문 시 로그인 유저 조회
	 * 매개변수 : 멤버 아이디
	 */
	@Override
	public MemberVO getUser(String m_email) {
		log.info("로그인 한 유저 조회");
		return mapper.orderUser(m_email);
	}
	/*
	 * Author : 차민수
	 * 기능 : 주문하기에 따른 주문 등록, 매개변수 : PickUpOrderVO
	 */
	@Override
	@Transactional
	public int insertOrder(PickUpOrderVO order) {
		
		log.info("주문하기 버튼 클릭에 따른 주문 등록");
		
		int count = 0;
		List<PickUpOrderItemVO> items = new ArrayList<>();
		items = order.getItems();
		log.info(items);
		log.info("주문 상품 리스트 삽입됨");
		count = mapper.insertPickupOrders(order);
		for (int i = 0; i < items.size(); i++) {
			if (items.get(i).getPoi_quantity() == 0) {
				log.info("재고가 0 인 상품이 주문됨");
				return 0;
			}
			count += mapper.insertItem(order.getM_email(), items.get(i).getW_id(), items.get(i).getPoi_quantity());
			count += mapper.deleteFromCart(order.getM_email(), items.get(i).getW_id());
			count += mapper.amountUpdate(-1, items.get(i).getW_id(), order.getS_code());
		}
		count += mapper.deleteMileage(order.getM_email(), order.getPo_mileage(), order.getPo_total_price());
		return count;
	}

	/*
	 * Author : 차민수
	 * 기능 : 주문 후 주문 내역 조회, 매개변수 : PickUpOrderVO
	 */
	@Override
	public PickUpOrderVO getOrderComplete(String m_email) {
		log.info("주문 완료 후 주문 내역 조회");
		return mapper.orderOk(m_email);
	}
	
	/*
	 * Author : 차민수
	 * 기능 : 로그인한 유저의 주문 내역 조회
	 */
	@Override
	public List<PickUpOrderVO> getOrderList(String m_email, int po_status) {
		log.info("주문 내역 조회");
		List<PickUpOrderVO> orders = mapper.orderList(m_email, po_status);
		
		return mapper.orderList(m_email, po_status);
	}

	/*
	 * Author : 차민수
	 * 기능 : 주문 내역 리스트에서 주문 상세 내역 조회
	 */
	@Override
	public PickUpOrderVO getOrderDetail(String po_id) {
		log.info("주문 리스트에서 주문 상세 내역 조회");
		return mapper.order(po_id);
	}
	
	/*
	 * Author : 차민수
	 * 기능 : 주문 취소
	 */
	@Transactional
	@Override
	public int orderCancel(String m_email, String po_id, int po_mileage) {
		
		int result = 0;
		PickUpOrderVO vo = new PickUpOrderVO();
		vo = mapper.order(po_id);
		List<PickUpOrderItemVO> items = new ArrayList<>();
		items = vo.getItems();
		for (int i = 0; i < items.size(); i++) {
			result += mapper.amountUpdate(1, items.get(i).getW_id(), vo.getS_code());
		}
		result += mapper.orderCancel(m_email, po_id);
		result += mapper.returnMileage(po_mileage, m_email);
		vo = mapper.order(po_id);
		
		return result;
	}
	
	@Transactional
	@Override
	public PickUpDTO sendOrderMsg(PickUpDTO dto, String m_email) {
		
		log.info("주문 문자 전송 서비스 진입 -> " + dto);
		//문자 내용 생성
		StringBuilder content = new StringBuilder();
		Sms sms = Sms.PICKUP;
		content.append(sms.getContent());
		content.append("안녕하세요. H-WINE 입니다.\n");
		if (dto.getOrderStatus() == 1) {
			content.append(dto.getPickupName());
			content.append("님, 와인 픽업 주문이 완료되었습니다.\nH-WINE 을 이용해 주셔서 감사합니다.\n");
			content.append("고객님께서 예약하신 픽업 날짜는 ");
			Date pickupDate = dto.getPickupDate();
			SimpleDateFormat format = new SimpleDateFormat("yyyy년MM월dd일(E)");
			content.append(format.format(pickupDate));
			content.append(" 입니다.\n");
			content.append("상품 준비가 완료되면 다시 문자로 알려드리겠습니다.");
			log.info(content.toString());
		}
		else if (dto.getOrderStatus() == 2){
			content.append(dto.getPickupName());
			content.append("님께서 요청하신 주문번호 ");
			content.append(dto.getPickupId());
			content.append(" 주문 취소 완료되었습니다.\n항상 H-WINE 을 이용해주셔서 감사합니다.");
			log.info(content.toString());
		}
		else if (dto.getOrderStatus() == 3) {
			content.append(dto.getPickupName());
			content.append("님, 테이스팅 카드 구매가 완료되었습니다.\nH-WINE 을 이용해 주셔서 감사합니다.\n");
			content.append("매장에 방문하셔서 구매하신 테이스팅 카드 QR 코드를 직원에게 보여주시면 테이스팅 바를 사용할 수 있는 실물 카드를 드립니다.\n감사합니다.");
			log.info(content.toString());
		}
		else if (dto.getOrderStatus() == 4) {
			content.append(dto.getPickupName());
			content.append("님, 픽업 예약하신 상품이 준비가 완료되었습니다.\n예약하신 픽업 매장에 방문하셔서 주문 상세 내역에서 픽업 QR 코드를 직원에게 보여주세요.\n");
			content.append("H-WINE 을 이용해 주셔서 감사합니다");
		}
		
		
		//문자전송
		SingleMessageSentResponse response = sMapper.sendMsg(dto.getTo(), sms, content.toString());
		
		SmsVO vo = new SmsVO();
		vo.setS_content(content.toString());
		vo.setS_type(response.getType().toString());
		vo.setS_status(response.getStatusCode());
		log.info("response StatusCode : " + response.getStatusCode());
		vo.setM_email(m_email);
		vo.setS_phone(dto.getTo());
		int result = sMapper.insertSmsDB(vo);
		if (result != 1) log.info("DB에 문자 INSERT 안됨");
		else log.info("DB 문자 INSERT 됨, VO : " + vo);
		return dto;
	}
	
}
