package org.hwine.domain.tabling;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AdminResvUpdateForm {
	private String rid;
	private String rstatus;
	private String radminNote;
}
