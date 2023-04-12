package org.hwine.mapper.member;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.options;

import java.time.LocalDate;

import org.hwine.domain.member.AuthVO;
import org.hwine.domain.member.MemberVO;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

/**
 * 회원관련 mapper 테스트
 * 
 * @author : 김주현
 * @since 2023.03.06
 * @version 1.0
 * 
 *          <pre>
* 수정일       수정자       수정내용
* ----------  --------    ---------------------------
* 2023.03.06  김주현       	최초 생성
* 2023.03.10  김주현       	회원가입 로직 생성
 *          </pre>
 * 
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml", })
public class MemberMapperTests {

	@Autowired
	private MemberMapper memberMapper;

	@Autowired
	private BCryptPasswordEncoder encoder;

	private static String EMAIL = "tj52sh9@naver.com";
	private static String EMAIL_NEW = "tj52sh91@naver.com";
	private static String PHONE = "01020230425";

//	@Test
//	public void 회원정보찾기() {
//		MemberVO foundMember = memberMapper.findMember(EMAIL);
//		Assert.assertEquals(foundMember.getMEmail(), EMAIL);
//	}

//	@Test
//	@Transactional
//	public void 회원가입_성공() {
//		String password = encoder.encode("1111");
//		
//		String[] paths = {"white_decating", "white_glass", "white_grape1", "white_grape2", "white_grape3", "white_oak"};
//		
//		String startPath = "https://hwine.s3.ap-northeast-2.amazonaws.com/profile_imgs/";
//		String endPath = ".png";
//		String img = startPath + paths[5] + endPath;
//		
//		LocalDate nowDate = LocalDate.now();
//		AuthVO auth = new AuthVO("shgmlwls@gmail.com", "ROLE_MEMBER");
//		MemberVO memberVO = new MemberVO("shgmlwls@gmail.com", password, "노희진", "노량진수산시장", img, PHONE + 1, 1, nowDate, 1, 0,
//				"BASIC", nowDate, nowDate);
//		int res1 = memberMapper.insertMember(memberVO);
//		int res2 = memberMapper.insertMemberAuth(auth);
//		Assert.assertTrue(res1 + res2 == 2);
//	}
	
	@Test
	//@Transactional
	public void 관리자_등록() {
		String password = encoder.encode("admin");
		String startPath = "https://hwine.s3.ap-northeast-2.amazonaws.com/profile_imgs/admin";
		String endPath = ".png";
		
		
		  String[] names = {"정봉화","A조일우3", "A노희진3", "A차민수3", "A김주현3"}; String[]
		  nicknames = {"전체관리자3", "대구관리자5", "대구관리자6", "대구관리자7", "대구관리자8"}; 
		  String[] roles = {"ROLE_ADMIN", "ROLE_ADMIN", "ROLE_ADMIN", "ROLE_ADMIN",  "ROLE_ADMIN"};
		
		for(int i = 1; i < 5; i++) {
			LocalDate nowDate = LocalDate.now();
			String img = startPath + i + endPath;
			AuthVO auth = new AuthVO("admin3"+i, "ROLE_ADMIN");
			AuthVO auth2 = new AuthVO("admin3"+i, "ROLE_ADMIN_DAEGU");
			MemberVO memberVO = new MemberVO("admin3"+i, password, names[i], nicknames[i], img, PHONE, -3, nowDate, 1, 0,
					"ADMIN", nowDate, nowDate);
			int res1 = memberMapper.insertMember(memberVO);
			int res2 = memberMapper.insertMemberAuth(auth);
			int res3 = memberMapper.insertMemberAuth(auth2);
		}
		//Assert.assertTrue(res1 + res2 > 2);
		
		

		//Assert.assertTrue(res1 + res2 == 2);
	}

//	@Test(expected = SQLIntegrityConstraintViolationException.class)
//	@Transactional
//	public void 회원가입_중복_실패() {
//		String password = encoder.encode("1111");
//		LocalDate nowDate = LocalDate.now();
//		AuthVO auth = new AuthVO(EMAIL, "ROLE_MEMBER");
//		MemberVO memberVO = new MemberVO(EMAIL, password, "김주현", "카야", "img.png", PHONE + 1, 1, nowDate, 1, 0, "BASIC",
//				nowDate, nowDate);
//
//		int res1 = memberMapper.insertMember(memberVO);
//		int res2 = memberMapper.insertMemberAuth(auth);
//		Assert.assertTrue(res1 + res2 != 2);
//	}
	@Test
	public void 이메일_중복검사_이미존재() {
		Assert.assertEquals(memberMapper.findExistEmail(EMAIL), EMAIL);
	}

	@Test
	public void 이메일_중복검사() {
		Assert.assertEquals(memberMapper.findExistEmail(EMAIL_NEW), null);
	}

	@Test
	public void 휴대폰_중복검사_이미존재() {
		Assert.assertEquals(memberMapper.findExistPhone(PHONE), EMAIL);
	}

	@Test
	public void 휴대폰_중복검사_없는아이디() {
		Assert.assertEquals(memberMapper.findExistPhone(PHONE + "1"), null);
	}
	
}
