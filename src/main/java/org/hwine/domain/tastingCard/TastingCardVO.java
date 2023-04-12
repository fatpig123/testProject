package org.hwine.domain.tastingCard;

import java.util.Date;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter

public class TastingCardVO {

	private String tc_id; // 테이스팅 카드 di
	private Date tc_date; // 테이스팅 구매/선물 날짜
	private String tc_status; //테이스팅 구매 상태
	private String tc_to; // 테이스팅 카드 누구한테 선물할지, 구매 -> 자신에게 선물
	private String tc_from; //테이스팅 카드 누구로부터 선물받았는지 구매 -> 자신에게 선물 옴
	private int tc_money; //테이스팅 카드 구매 금액
}
