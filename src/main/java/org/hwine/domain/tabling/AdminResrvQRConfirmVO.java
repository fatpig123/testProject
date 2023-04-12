package org.hwine.domain.tabling;

import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class AdminResrvQRConfirmVO {
	
	private String scode;
	private String confirm;
	private String rid;
	private String table;
	private String adminNote;
	
	public AdminResrvQRConfirmVO(AdminResvQRCheckDTO dto) {
		this.scode = dto.getScode();
		this.confirm = dto.getConfirm();
		this.rid = dto.getRid();
		this.table = dto.getTable();
	}
	
	public void addAdminNote(String memail) {
		String note = "\n"+memail+"이 예약 확정함.";
		this.adminNote = note;
	}
}
