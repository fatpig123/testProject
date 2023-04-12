package org.hwine.domain.tabling;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.hwine.domain.member.AuthVO;
import org.hwine.domain.member.HeaderTopMemberInfosDTO;

public class TablingUtils {

	// 0: 예약 취소, 1: 방문예정, 2: 방문완료 -1:노쇼
	public static int proccessResvStatusNoshow333(AdminReservationVO vo) {
		if (vo.getR_status() == 1
				&& (LocalDate.now().equals(vo.getR_date()) && LocalDateTime.now().getHour() > vo.getR_time()))
			return -1;
		else
			return vo.getR_status();
	}

	// 유저 이메일 값 숨기기
	public static String processMemberInfo(String email, String name) {
		StringBuilder sb = new StringBuilder();
		sb.append(name).append('(');

		String front = email.split("@")[0];
		front = front.substring(0, 4);
		sb.append(front);
		for (int i = 0; i < 7 - front.length(); i++) {
			sb.append('*');
		}
		sb.append(')');
		return sb.toString();
	}

	// 예약시간
	public static String processReservationDateTime(LocalDate rdate, int rtime) {

		StringBuilder sb = new StringBuilder();

		String[] rdates = rdate.toString().split("-");
		sb.append(rdates[0]).append("년 ").append(rdates[1]).append("월 ").append(rdates[2]).append("일 ");
		sb.append(rtime).append("시");

		return sb.toString();
	}
	
	// 세션 업데이트
	public static void updateSessionHeaderInfo(HttpSession session, HeaderTopMemberInfosDTO dto) {
		Object obj = session.getAttribute("header_info");
		session.setAttribute("header_info", obj);
	}

}
