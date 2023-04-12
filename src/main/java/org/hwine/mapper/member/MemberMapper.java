package org.hwine.mapper.member;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hwine.domain.member.AuthVO;
import org.hwine.domain.member.HeaderInfosVO;
import org.hwine.domain.member.MemberVO;
import org.hwine.domain.member.MypageTopVO;
import org.hwine.domain.order.MyRecentPickupVO;
import org.hwine.domain.tabling.MyTablingResvVO;

/**
 * 회원 관련 Mapper
 * 
 * @author : 김주현
 * @since 2023.03.10
 * @version 1.0
 * 
 *          <pre>
* 수정일       수정자       수정내용
* ----------  --------    ---------------------------
* 2023.03.06  김주현       	최초 생성(로그인)
* 2023.03.08  김주현       	회원가입 로직 추가
 *          </pre>
 * 
 */
@Mapper
public interface MemberMapper {

	/**
	 * 회원 찾기
	 * 
	 * @param String memail
	 * @return MemberVO
	 */
	MemberVO findMember(String memail);

	/**
	 * 권한 찾기
	 * 
	 * @param String memail
	 * @return List<AuthVO>
	 */
	List<AuthVO> findMemberAuth(String memail);

	/**
	 * 회원 가입_회원 등록
	 * 
	 * @param MemberVO member
	 * @return int
	 */
	int insertMember(MemberVO member);

	/**
	 * 회원 가입_권한 등록
	 * 
	 * @param AuthVO auth
	 * @return int
	 */
	int insertMemberAuth(AuthVO auth);

	/**
	 * 회원 가입_이메일 유효성 검사
	 * 
	 * @param String email
	 * @return String
	 */
	String findExistEmail(String email);

	/**
	 * 회원 가입_휴대폰 유효성 검사
	 * 
	 * @param String phone
	 * @return String
	 */
	String findExistPhone(String phone);

	/**
	 * 마이페이지 상단 정보들
	 * @param String memail
	 * @return List<MypageTopVO>
	 */
	List<MypageTopVO> selectMypageTopItems(String memail);
	List<MyRecentPickupVO> selectMypagePickupOrder(@Param("m_email") String m_email);
	List<MyTablingResvVO> selectMypageReservation(String memail); //테이블링
	
	/**
	 * 헤더 상단 정보들
	 * 
	 */
	List<HeaderInfosVO> selectHeaderMemberInfos(String memail);
	int selectTotalPriceForAYear(String memail);
}
