package org.hwine.domain.tabling;

import java.time.LocalDate;
import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * 테이블링 예약 VO
 * @author : 김주현
 */

@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class ReservationVO {
	
	private String r_id;
	private LocalDateTime r_register_date;
	private LocalDate r_date;
	private int r_time; //11 ~ 21
	private int r_head_count;
	private int r_status;
	private String st_id;
	private String m_email;
	private String r_msg;
	
	public ReservationVO(LocalDateTime r_register_date, LocalDate rDate, int rTime, int rHeadCount, String stId,
			String mEmail, String r_msg) {
		this.r_register_date = r_register_date;
		this.r_date = rDate;
		this.r_time = rTime;
		this.r_head_count = rHeadCount;
		this.st_id = stId;
		this.m_email = mEmail;
		this.r_msg = r_msg;
	}
	
}
