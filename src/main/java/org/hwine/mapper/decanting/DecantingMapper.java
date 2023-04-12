package org.hwine.mapper.decanting;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hwine.domain.decanting.AvgVO;
import org.hwine.domain.decanting.FollowVO;
import org.hwine.domain.member.FollowerVO;
import org.hwine.domain.product.DecantingBookVO;
import org.hwine.domain.product.ProductVO;
import org.hwine.domain.product.SimpleWineVO;

/**
* 디켄팅북 관련 맵퍼
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

@Mapper
public interface DecantingMapper {
	
	public void Dwrite(@Param("m_email") String m_email, @Param("w_id") String w_id,@Param("content") String content,
			@Param("rating") int rating,@Param("sweetness") int sweetness,@Param("tannin") int tannin,
			@Param("body") int body,@Param("acidity") int acidity,@Param("hide") int hide);

	public DecantingBookVO getReview( @Param("db_id") String db_id);

	public DecantingBookVO getMyReview( @Param("name") String name);
	
	public List<FollowerVO> getFollowList(@Param("m_email")String m_email, @Param("start") int start, @Param("end") int end);

	public void unfollow(@Param("f_id") String f_id);
	
	public void follow(@Param("f_id") String f_id);

	public int getAble(@Param("r_id") String r_id, @Param("m_email") String m_email);

	public int getGrade(String m_email);

	public DecantingBookVO getWine(String r_id);

	public void followInsert(@Param("m_email") String m_email, @Param("db_id") String db_id);

	public List<DecantingBookVO> getReviewList(@Param("db_id") String db_id, @Param("start") int start, @Param("end") int end, @Param("sort") int sort, @Param("type") String type);

	public List<DecantingBookVO> getMyReviewList(@Param("name") String name, @Param("start") int start, @Param("end") int end, @Param("sort") int sort, @Param("type") String type);

	public FollowVO following(@Param("db_id")String db_id,@Param("name") String name);

	public int getReviewNum(@Param("db_id")String db_id,  @Param("start") int start, @Param("end") int end, @Param("sort") int sort, @Param("type") String type);

	public int getMyReviewNum(@Param("name") String name,  @Param("start") int start, @Param("end") int end, @Param("sort") int sort, @Param("type") String type);

	public DecantingBookVO getWineMin(String w_id);

	public String checkDB(@Param("w_id") String w_id, @Param("name") String name);

	public AvgVO getHAvg(String db_id);

	public List<ProductVO> getblList(@Param("db_id") String db_id, @Param("name") String name);

	public List<ProductVO> getbrList(@Param("db_id") String db_id, @Param("name") String name,
			@Param("acid") int acid, @Param("body") int body, @Param("sweet") int sweet, @Param("tannin") int tannin);

	public AvgVO getMyAvg(String name);

	public SimpleWineVO isWineThere(String name);

	public List<SimpleWineVO> getAnvWine();
	
	
}
