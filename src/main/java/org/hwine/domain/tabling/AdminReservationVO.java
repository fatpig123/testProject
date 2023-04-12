package org.hwine.domain.tabling;

import java.time.LocalDate;
import java.time.LocalDateTime;

import lombok.Getter;

@Getter
public class AdminReservationVO {

	private String r_id;
	private LocalDateTime r_register_date;
	private LocalDate r_date;
	private int r_time; //11 ~ 21
	private int r_head_count;
	private int r_status;
	private String st_id;
	private String m_email;
	private String s_code;
	private String m_name;
	private String r_msg;
	private String r_admin_note;
}
