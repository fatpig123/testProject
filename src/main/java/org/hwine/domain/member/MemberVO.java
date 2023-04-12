package org.hwine.domain.member;

import java.time.LocalDate;
import java.util.List;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
* 회원 VO
* @author : 김주현
* @since 2023.03.06
* @version 1.0 
* 
* <pre>
* 수정일       수정자       수정내용
* ----------  --------    ---------------------------
* 2023.03.06  김주현       	최초 생성
* </pre>
* 
*/
@Getter
@ToString
@NoArgsConstructor
public class MemberVO {

	private String mEmail;
	private String mPassword;
	private String mName;
	private String mNickname;
	private String mProfileImg;
	private String mPhone;
	private int mGender; //1: 여자, 0: 남자
	private LocalDate mBirthDate;
	private int mEnabled; //1: 가입, 0: 탈퇴
	private int mGrade; //1: h믈리, 0: 일반 사용자
	private String mSocialCode;
	private LocalDate mRegisterDate;
	private LocalDate mUpdateDate;
	private int mMileage;
	private List<AuthVO> authList;
	
	public MemberVO(String mEmail, String mPassword, String mName, String mNickname, String mProfileImg, String mPhone,
			int mGender, LocalDate mBirthDate, int mEnabled, int mGrade, String mSocialCode, LocalDate mRegisterDate,
			LocalDate mUpdateDate) {
		super();
		this.mEmail = mEmail;
		this.mPassword = mPassword;
		this.mName = mName;
		this.mNickname = mNickname;
		this.mProfileImg = mProfileImg;
		this.mPhone = mPhone;
		this.mGender = mGender;
		this.mBirthDate = mBirthDate;
		this.mEnabled = mEnabled;
		this.mGrade = mGrade;
		this.mSocialCode = mSocialCode;
		this.mRegisterDate = mRegisterDate;
		this.mUpdateDate = mUpdateDate;
	}

}
