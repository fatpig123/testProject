package org.hwine.service.tastingCard;

import java.util.List;

import org.hwine.domain.tastingCard.TastingCardVO;

public interface TastingCardService {

	List<TastingCardVO> getList(String m_email);
	
	int buyTastingCard(String to_email, String m_email, int tc_money);
}
