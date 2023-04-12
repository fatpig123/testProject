package org.hwine.mapper.tastingCard;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hwine.domain.tastingCard.TastingCardVO;

@Mapper
public interface AdminTastingCardMapper {

	TastingCardVO getTastingCardById(@Param("tc_id") String tc_id);
	
	int confirmTastingCard(@Param("tc_id") String tc_id, @Param("tc_confirm_admin") String tc_confirm_admin);
}
