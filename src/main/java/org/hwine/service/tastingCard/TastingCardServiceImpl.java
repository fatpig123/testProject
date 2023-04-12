package org.hwine.service.tastingCard;

import java.util.List;

import org.hwine.domain.tastingCard.TastingCardVO;
import org.hwine.mapper.tastingCard.TastingCardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class TastingCardServiceImpl implements TastingCardService {

	@Setter(onMethod_ = @Autowired)
	private TastingCardMapper tastingCardMapper;
	
	@Override
	public List<TastingCardVO> getList(String m_email) {
		log.info("와인 테이스팅 카드 주문 내역 진입");
		log.info(tastingCardMapper.getTastingCard(m_email));
		return tastingCardMapper.getTastingCard(m_email);
	}
	
	@Override
	public int buyTastingCard(String to_email, String m_email, int tc_money) {
		
		log.info("와인 테이스팅 카드 구매 서비스 진입");
		int result = 0;
		result += tastingCardMapper.purchaseTastingCard(to_email, m_email, tc_money);
		return result;
	}

}
