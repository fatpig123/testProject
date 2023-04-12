package org.hwine.domain.tabling;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.ToString;

@Getter
@AllArgsConstructor
@ToString
public class AdminTablingMainDTO {
	
	private int[] counts;
	private List<AdminReservationDTO> todayReservations;
	private int completeCnt;
	
	
}
