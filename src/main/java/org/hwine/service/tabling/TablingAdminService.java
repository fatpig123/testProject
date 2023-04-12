package org.hwine.service.tabling;

import java.util.List;

import org.hwine.domain.tabling.AdminReservationDTO;
import org.hwine.domain.tabling.AdminResvQRCheckDTO;
import org.hwine.domain.tabling.AdminResvUpdateForm;
import org.hwine.domain.tabling.AdminTablingMainDTO;

public interface TablingAdminService {
	
	AdminTablingMainDTO getAllMainInfo(String adminId);
	AdminTablingMainDTO getAllMainInfoByTotalAdmin(String scode);

	List<AdminReservationDTO> getReservationList(String adminId);
	List<AdminReservationDTO> getReservationListByTotalAdmin(String scode);
	
	int getTodayReservationCnt(String adminId);
	
	AdminReservationDTO getResvDetail(String rid);
	
	int modifyReservation(AdminResvUpdateForm form);
	
	AdminResvQRCheckDTO findQRInfo(String rid);
	
	void confirmResv(String loginUserId, AdminResvQRCheckDTO dto);
	
}
