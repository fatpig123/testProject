package org.hwine.mapper.tastingCard;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.hwine.domain.tastingCard.TastingCardVO;

public interface TastingCardMapper {

	List<TastingCardVO> getTastingCard(@Param("m_email") String m_email);
	
	int purchaseTastingCard(@Param("to_email") String to_email, @Param("m_email") String m_email, @Param("tc_money") int tc_money);
}
