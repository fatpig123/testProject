package org.hwine.domain.member;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class MypageTopVO {

	private String m_email;
	private int m_mileage;
	private int m_grade;
	private int cnt;
	private int sep; //[reservation, pickup, books, followh, tcard]
}
