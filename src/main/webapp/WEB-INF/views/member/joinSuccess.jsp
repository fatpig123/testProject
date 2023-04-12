<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<section id="contents" style="margin-top: 122px;">

	<div class="wrap">
		<div class="content member join join_ok_page ok_page">
			<div class="inner">
				<div class="ok_area">
					<img src="/resources/asset/images/shop/default/join_ok.png" alt="회원가입 완료">
					<p class="tit">
						H-WINE의 진심에 공감해주신 <br class="pc_hidden">${mname} 님을 환영합니다.
					</p>
					<div class="btn_area col2">
						<button type="button" class="btn_txt btn_black"
							onclick="location.href='/'"
							>메인으로 가기</button>
						<button type="button" class="btn_txt btn_white"
							onclick="location.href='/login'"
							>로그인 하기</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- page_script -->
	<script>
		
	</script>
	<!-- //page_script -->
</section>

