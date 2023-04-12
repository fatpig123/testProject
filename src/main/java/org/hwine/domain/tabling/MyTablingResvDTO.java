package org.hwine.domain.tabling;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.TextStyle;
import java.util.Locale;

import lombok.Getter;
import lombok.ToString;

/**
 * 마이페이지: 예약 한 건에 대한 DTO
 * @author : 김주현
 */
@Getter
@ToString
public class MyTablingResvDTO {

	private String rid;
	private int rstatus;
	private String rregDate;
	private String rdate;
	private String rtime;
	private int rheadCnt;
	private String stid;
	private String rmsg;
	
	private String scode;
	private String sname;
	private String simgUrl;
	
	private boolean qr;
	
	public MyTablingResvDTO(MyTablingResvVO vo) {
		this.rid = vo.getR_id();
		this.rregDate = processRegDate(vo.getR_id());
		this.rdate = processRdate(vo.getR_date());
		this.rtime = processRtime(vo.getR_time());
		this.rheadCnt = vo.getR_head_count();
		this.rmsg = vo.getR_msg();
		this.stid = vo.getSt_id();
		this.scode = vo.getS_code();
		this.sname = vo.getS_name();
		this.simgUrl = vo.getS_img_urls().split("\\|")[0];
		this.rstatus = vo.getR_status();
	}
	
	//2시간 남은 예약 건에 대해 QR 코드 생성
	public boolean setQrStatus(MyTablingResvVO vo) {
		int tmp = vo.getR_time() - LocalDateTime.now().getHour();
		
		if(vo.getR_date().equals(LocalDate.now()) && (0 <= tmp && tmp <= 2)) {
			this.qr = true;
			return true;
		}
		return false;
	}
	

	// 예약 일자 가공
	private String processRegDate(String rId) {
		return rId.split("RESV_")[1].split("\\.")[0];
	}
	
	//예약 날짜 가공
	private String processRdate(LocalDate date) {
		DayOfWeek dayOfWeek = date.getDayOfWeek();
		String day = dayOfWeek.getDisplayName(TextStyle.SHORT, Locale.KOREAN);
		
		StringBuilder sb = new StringBuilder();
		date.getYear();
		sb.append(date.getYear()).append('.');
		sb.append(date.getMonth().getValue()).append('.');
		sb.append(date.getDayOfMonth()).append("(");
		sb.append(day).append(") · ");
		return sb.toString();
	}
	
	//예약 시간 가공
	private String processRtime(int time) {
		StringBuilder sb = new StringBuilder();
		
		if(time == 12)
			sb.append("오후 ").append(time);
		else if(13 <= time && time <= 23)
			sb.append("오후 ").append(time - 12);
		else
			sb.append("오전 ").append(time);
		
		
		sb.append("시· ");
		return sb.toString();
	}

}


