package org.hwine.domain.product;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

//상품 Criteria
@Data
@Getter
@Setter
@ToString
public class Criteria {

	private int pageNum;
	private int amount;
	private String type;
	private String keyword;

	public Criteria() {
		this(1, 10);
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}

	// 상품 이름 검색 배열
	private String[] productNameArr;

	//검색 타입 데이터 배열 변환
	public String[] getTypeArr() {
		return type == null ? new String[] {} : type.split("");
	}

	public String getListLink() {
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("").queryParam("pageNum", this.pageNum)
				.queryParam("amount", this.amount);
		return builder.toUriString();
	}
}