package org.hwine.domain.tabling;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class TableReservationDTO {

	private String storeId;
	private String selectedDate;
	private int selectedTime;
	private String tableId;
	private int headCount;
}
