package org.hwine.service.tastingCard;

import java.util.List;

import org.hwine.domain.member.MemberVO;
import org.hwine.domain.tastingCard.TastingCardVO;
import org.hwine.mapper.order.AdminOrderMapper;
import org.hwine.mapper.tastingCard.AdminTastingCardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class AdminTastingCardServiceImpl implements AdminTastingCardService {
	
	@Setter(onMethod_ = @Autowired)
	private AdminTastingCardMapper adminTastingCardMapper;
	
	@Setter(onMethod_ = @Autowired)
	private AdminOrderMapper mapper;
	
	@Override
	public TastingCardVO getTastingByQR(String tc_id) {
		
		log.info("QR 찍어서 시음권 구매 조회 서비스 진입");
		return adminTastingCardMapper.getTastingCardById(tc_id);
	}
	
	@Transactional
	@Override
	public int confirmTastingCard(String tc_confirm_admin, String tc_id) {
		
		
		int result = 0;
		log.info("모달창에서 확인 버튼 클릭 서비스 진입");
		List<MemberVO> list = mapper.checkAdmin();
		for (int i = 0; i < list.size(); i++) {
			if (tc_confirm_admin.equals(list.get(i).getMEmail())) {
				log.info("일치하는 아이디 있음 : " + list.get(i).getMEmail());
				result += adminTastingCardMapper.confirmTastingCard(tc_id, tc_confirm_admin);
				log.info(result);
				return result;
			}
			else {
				log.info("입력한 관리자 아이디가 일치하지 않음");
			}
		}
		log.info(result);
		return result;
	}
	
}
