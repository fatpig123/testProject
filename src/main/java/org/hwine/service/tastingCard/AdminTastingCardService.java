package org.hwine.service.tastingCard;

import org.hwine.domain.tastingCard.TastingCardVO;

public interface AdminTastingCardService {

	TastingCardVO getTastingByQR(String tc_id);
	
	int confirmTastingCard(String tc_confirm_admin, String tc_id);
}
