package org.hwine.domain.tabling;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import lombok.Getter;
import lombok.ToString;

/**
 * 테이블링 캘린더의 '하루'에 대한 정보
 * @author : 김주현
 */
@Getter
@ToString
public class TablingCalendarDay {
	
	private LocalDate date; //일자
	private List<TablingCalendarTime> hours; //시간대
	private boolean available; //예약가능한 지
	private List<String> reservedEmails; //예약자 정보들

	public TablingCalendarDay(LocalDate date, List<TablingCalendarTime> hours) {
		this.date = date;
		this.hours = hours;
		this.reservedEmails = new ArrayList<>();
		this.available = true;
	}
	
	//예약 불가 상태로 변경
	public void changeAvailable() {
		this.available = false;
	}
	
	public void addReservedEmail(String email) {
		this.reservedEmails.add(email);
	}
	
}
