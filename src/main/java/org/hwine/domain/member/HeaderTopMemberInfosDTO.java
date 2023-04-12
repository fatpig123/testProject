package org.hwine.domain.member;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class HeaderTopMemberInfosDTO implements Serializable {

	private static final long serialVersionUID = 1L;
	
	
	private int cartCnt;
	private int pickupCnt;
	private int tastingcardCnt;
	private int tablingCnt;
}
