package org.hwine.domain.tabling;

import java.time.LocalDate;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.ToString;

@Getter
@AllArgsConstructor
@ToString
public class TablesAvailableDTO {

	private List<TablesAvailableVO> availableList; //해당 지점 테이블 이용가능한지	
	private LocalDate selectedDate;
	private int selectedTime;
	private int headCount;
}
