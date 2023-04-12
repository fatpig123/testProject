<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<html lang="ko">
<head>
<link rel="shortcut icon"
	href="${RESOURCES_PATH}/images/shop/default/favicon.ico"
	type="image/x-icon">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
.body{
font-family: 'NotoSansCJKkr', sans-serif;
}
h2 {
	font-size: x-large;
	text-align: center;
	margin: -70px 0 10px 0;
}

.memo {
	/*background-color: lightgray;*/
}

.resv_info {
	font-size: medium;
	/*text-align: center;*/
	margin: 20px 100px 30px 0;
}
</style>
</head>
<body>
	<div class="content" style="margin: 130px 0 110px 0; min-height: 100%;">
		<div class="wrap">
			<img id="tabling_success"
				src="/resources/asset/images/shop/table/success.gif" />
			<div class="memo">
			<h2>예약이 성공적으로 되었습니다.</h2>
			<div class="resv_info">
				<div>예약일시: 2023년 03월 24일 17시</div>
				<div>예약지점: 더현대 서울 와인웍스</div>
			</div>
			</div>
			<div class="btn_area col2">
				<button class="btn_txt" onclick="window.location.href='/'">
					<span>메인으로</span>
				</button>
				<button class="btn_txt">
					<span>예약 내역 확인</span>
				</button>
			</div>
		</div>
	</div>
</body>
</html>