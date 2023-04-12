package org.hwine.domain.order;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class PaymentMethodVO {

	private String pm_code;
	private String pm_company;
	private int pm_method;
}
