package org.hwine.service.decanting;

import java.security.Principal;
import java.util.List;

import org.hwine.domain.decanting.AvgVO;
import org.hwine.domain.decanting.FollowVO;
import org.hwine.domain.member.FollowerVO;
import org.hwine.domain.product.DecantingBookVO;
import org.hwine.domain.product.ProductVO;
import org.hwine.domain.product.SimpleWineVO;

/**
* 디켄팅북 관련 서비스
* @author 조일우
* @since 2023.03.09
* @version 1.0 
* 
* <pre>
* 수정일        		수정자       				수정내용
* ----------  --------    ---------------------------
* 2023.03.09  	조일우       		최초 생성
* 2023.03.11	조일우			작성, 수정 기능 구현
* 2023.03.13	조일우			팔로우 기능 구현
* 2023.03.15	조일우			작성, 수정 기능 보안
* 2023.03.16	조일우			미로그인 접근 기능 구현
* </pre>
* 
*/

public interface DecantingService {
	//디켄팅 북 입력
	public void DWrite(String name, String w_id, String content, int rating, int sweetness, int tannin, int body,
			int acidity, int hide);
	//디켄팅 북 출력
	public DecantingBookVO getReview(String db_id);
	//팔로우 리스트 출력
	public List<FollowerVO> getFollowList(String m_email, int start, int end);
	//H-믈리 팔로우 입력
	public void follow(int follow,String f_id);
	//수정 가능 여부 출력
	public int getAble(String r_id, String m_email);
	//회원 등급 출력
	public int getGrade(String m_email);
	//와인 정보 출력
	public DecantingBookVO getWine(String r_id);
	
	public void followInsert(String f_id, String m_email);
	
	public List<DecantingBookVO> getReviewList(String db_id, int start, int end, int sort, String type);
	
	public List<DecantingBookVO> getMyReviewList(String name, int start, int end, int sort, String type);
	
	public FollowVO following(String db_id, String name);
	
	public int getReviewNum(String db_id,int start, int end, int sort, String type);
	
	public int getMyReviewNum(String name, int start, int end, int sort, String type);
	
	public DecantingBookVO getWineMin(String w_id);
	
	public String checkDB(String w_id, String name);
	
	public DecantingBookVO getMyReview(String name);
	
	public AvgVO getHAvg(String db_id);

	public AvgVO getMyAvg(String name);
	
	public List<ProductVO> getblList(String db_id, String name);
	
	public List<ProductVO> getbrList(String db_id, String name, int acid, int body, int sweet, int tannin);
	
	public SimpleWineVO isWineThere(String name);
	
	public List<SimpleWineVO> getAnvWine();
	
}
	