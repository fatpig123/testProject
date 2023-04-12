package org.hwine.domain.member;

import java.util.List;

import org.hwine.domain.order.MyRecentPickupVO;
import org.hwine.domain.tabling.MyTablingResvDTO;
import org.hwine.domain.tabling.MyTablingResvVO;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class MypageInfoDTO {

	private String memail;
	private int grade;

	private int tastingCardCnt;
	private int mileage;
	private int pickupCnt;
	private int tablingCnt;
	private int decantingBookCnt;
	private int followhCnt;
	
	//누적주문 금액
	private int totalPriceForYear;

	// 주문 obj
	private List<MyRecentPickupVO> pickup;
	private boolean pickupSoon;
	// 테이블링 obj
	private MyTablingResvDTO tabling;
	private boolean tablingSoon;

	public MypageInfoDTO(String memail, int grade, int mileage) {
		this.memail = memail;
		this.grade = grade;
		this.mileage = mileage;
	}

	public void addMypageTopInfo(int[] nums) {
		this.tastingCardCnt = nums[0];
		this.pickupCnt = nums[1];
		this.tablingCnt = nums[2];
		this.decantingBookCnt = nums[3];
		this.followhCnt = nums[4];
	}
	
	public void addPickupInfo(List<MyRecentPickupVO> vo) {
		this.pickup = vo;
	}
	
	public void decidePickupSoon(boolean soon) {
		this.pickupSoon = soon ? true : false;
	}
	
	public void addTablingInfo(MyTablingResvVO vo) {
		this.tabling = new MyTablingResvDTO(vo);
	}
	
	public void decideTablingSoon(boolean soon) {
		this.tablingSoon = soon ? true : false;
	}
	
	public void addTotalPrice(int price) {
		this.totalPriceForYear = price;
	}
	
}
