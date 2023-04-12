package org.hwine.domain.tabling;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.ToString;

/**
 * 테이블링 캘린더의 '한 시간'에 대한 정보
 * @author : 김주현
 */
@Getter
@AllArgsConstructor
@ToString
public class TablingCalendarTime {

	private int hour;
	private int cnt; //예약건 수
	private boolean available;
	
	public TablingCalendarTime(int hour) {
		this.hour = hour;
		this.available = true;
	}
	
	public void changeAvailable() {
		this.available = false;
	}
	
	public void addCnt() {
		this.cnt++;
	}
}
