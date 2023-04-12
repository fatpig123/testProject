package org.hwine.domain.tabling;

import java.time.LocalDate;

import lombok.Getter;

@Getter
public class AdminResvQRCheckVO {

	private String r_id;
	private int r_status;
	private LocalDate r_date;
	private int r_time; //11 ~ 21
	private int r_head_count;
	private String st_id;
	private String r_msg;
	private String r_admin_note;
	
	private String s_code;
	private String s_name;
	private String m_name;
}
