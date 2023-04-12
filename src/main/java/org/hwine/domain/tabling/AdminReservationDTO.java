package org.hwine.domain.tabling;

import java.time.LocalDate;
import java.time.LocalDateTime;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class AdminReservationDTO {

	private String rid;
	private LocalDateTime regdate;
	private LocalDate rdate;
	private int rtime; //11 ~ 21
	private int	headcnt;
	private int rstatus;
	private String stid;
	private String member;
	private String scode;
	private String rmsg;
	private String radminNote;
	
	public AdminReservationDTO(AdminReservationVO vo) {
		this.rid = vo.getR_id();
		this.regdate = vo.getR_register_date();
		this.rdate = vo.getR_date();
		this.rtime = vo.getR_time();
		this.headcnt = vo.getR_head_count();
		this.rstatus = vo.getR_status();//TablingUtils.proccessResvStatusNoshow(vo);
		this.stid = vo.getSt_id();
		this.member = TablingUtils.processMemberInfo(vo.getM_email(), vo.getM_name());
		this.scode = vo.getS_code();
		this.rmsg = vo.getR_msg();
		this.radminNote = vo.getR_admin_note();
	}
}
