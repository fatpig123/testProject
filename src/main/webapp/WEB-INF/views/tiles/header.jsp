<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@page import="org.hwine.domain.member.HeaderTopMemberInfosDTO"%>

<style>
.profileImg {
	vertical-align: middle;
	width: 50px;
	height: 50px;
	border-radius: 50%;
	margin-right: 0.5em;
}

.header_wine_box {
	margin: 2em auto;
}

.header_wine_box ul {
	display: flex;
	flex-direction: row;
	justify-content: flex-start;
	flex-wrap: wrap;
	margin-left: -7px;
	margin-right: -7px;
	padding: initial;
}

.header_wine_box ul li {
	width: 25%;
	box-sizing: border-box;
	padding: 0 7px;
}

.header_wine_box ul li a {
	display: flex;
	flex-direction: column;
	align-items: center;
	cursor: pointer;
}

.cs-link-img.common-background-image {
	width: 60px;
	height: 60px;
	border-radius: 100%;
	display: block;
	background-repeat: no-repeat;
	background-position: 50% 50%;
	/*background-size: cover, 71.6% auto;*/
	background-color: #f8f8f8;
	position: relative;
}

.cs-link-txt {
	margin: 5px auto;
}

#w_type .ico_red {
	background: url(/resources/asset/images/shop/default/ico_wine_red.png)
		no-repeat 50% 0;
	background-size: 12px;
}

#w_type .ico_white {
	background: url(/resources/asset/images/shop/default/ico_wine_white.png)
		no-repeat 50% 0;
	background-size: 12px;
}

#w_type .ico_sparkling {
	background:
		url(/resources/asset/images/shop/default/ico_wine_sparkling.png)
		no-repeat 50% 0;
	background-size: 12px;
}

#w_type .ico_rose {
	background: url(/resources/asset/images/shop/default/ico_wine_rose.png)
		no-repeat 50% 0;
	background-size: 12px;
}
</style>

<!-- header -->
<header id="header" class="header">
	<input type="hidden" id="session_id" value="">

	<div class="top" style="height: 62px; background: white;">
		<div class="wrap">
			<ul class="left_menu">
				<li class="mb_btn_menu">
					<button type="button"
						onclick="$('.mb_gnb_area').show();updateHeaderInfo();">Mobile
						Menu</button>
					<div class="mb_gnb_area">
						<div class="mb_gnb_con">
							<button type="button" class="mb_gnb_close"
								onclick="$('.mb_gnb_area').hide();">닫기</button>
							<sec:authorize access="isAnonymous()">
								<div class="mb_gnb_no_member lang_select">
									<div class="btn_area col2">
										<a href="/login" class="btn_txt btn_dgray"
											onclick="$('.mb_gnb_area').hide();">로그인</a> <a
											href="/joinForm" class="btn_txt btn_black">회원가입</a>
									</div>
								</div>
							</sec:authorize>
							<sec:authorize access="isAuthenticated()">
								<div class="mb_gnb_member">
									<div class="top_box">
										<div class="grade">
											<h2>
												<img
													src=<sec:authentication property="principal.mprofilImg" />
													class="profileImg" /> 반갑습니다, <strong class="name"><sec:authentication
														property="principal.mnickname" /></strong>님
											</h2>
										</div>
									</div>
									<ul>
										<li class=""><a href="/shop/mypage/note/wish_lists">
												<p>장바구니</p> <strong id="cartCnt">0</strong>
										</a></li>
										<li class=""><a href="/shop/mypage/shopping/order_lists">
												<p>주문/결제</p> <strong id="pickupCnt">0</strong>
										</a></li>
										<li><a href="/shop/mypage/note/mileage_lists">
												<p>테이스팅 카드</p> <strong id="tastingcardCnt">0</strong>
										</a></li>
										<li><a href="/mypage/tabling">
												<p>테이블링</p> <strong id="tablingCnt">0</strong>
										</a></li>
									</ul>
								</div>
							</sec:authorize>


							<ul class="menu_list">
								<li><a href="/mypage/orderList">픽업내역</a></li>
								<li><a href="/mypage/wineTastingCard">시음권내역</a></li>
								<li><a href="/mypage/tabling">테이블링 내역</a></li>
								<li><a href="/decanting/bookList">나의 디켄팅북</a></li>
								<li><a href="/decanting/followList">나의 H-믈리</a></li>
							</ul>

							<div class="header_wine_box">
								<ul>
									<li><a href="javascript:;"><span
											class="cs-link-img common-background-image"
											style="background-image: url(/resources/asset/images/shop/default/ico_wine_red.png)"></span>
											<span class="cs-link-txt">레드</span></a></li>
									<li><a href="javascript:;"><span
											class="cs-link-img common-background-image"
											style="background-image: url(/resources/asset/images/shop/default/ico_wine_white.png)"></span>
											<span class="cs-link-txt">화이트</span></a></li>
									<li><a href="javascript:;"><span
											class="cs-link-img common-background-image"
											style="background-image: url(/resources/asset/images/shop/default/ico_wine_rose.png)"></span>
											<span class="cs-link-txt">로제</span></a></li>
									<li><a href="javascript:;"><span
											class="cs-link-img common-background-image"
											style="background-image: url(/ resources/ asset/ images/ shop/ default/ ico_wine_sparkling.png"></span>
											<span class="cs-link-txt">스파클링</span></a></li>
								</ul>
							</div>

							<sec:authorize access="isAuthenticated()">
								<form action="/logout" method="post">
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />
									<button type="submit" class="logout btn">로그아웃</button>
								</form>
							</sec:authorize>
							<!-- 202209 UI/UX 수정 -->
						</div>
					</div>
				</li>
			</ul>

			<h1 class="logo">
				<a href="/"> <!-- mb이미지 --> <img
					src="/resources/asset/images/shop/default/pc_logo.png"
					alt="WINENARA 1987" draggable="false" style="margin: 0;"> <!-- pc이미지 -->
				</a>
			</h1>

			<ul class="right_menu">
				<li class="cart"><a href="/mypage/cartList"><span>Cart
							List</span><span class="list-count"></span></a></li>
				<li class="mypage mb_hidden">
					<button type="button" onclick="commonUI.header.Mypage.clickFn()">
						<img src="/resources/asset/images/shop/default/pc_icon_mypage.png"
							alt="My Page">
					</button>
					<div class="mypage_layer">
						<div class="no_login">
							<a href="/login">로그인</a> <a href="/joinForm">회원가입</a>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>

	<div class="bottom">
		<h1 class="fixed_logo" style="display: none;">
			<a href="/shop/main"> <img
				src="/resources/asset/images/shop/default/pc_fixed_logo.png"
				alt="WINENARA 1987" draggable="false">
			</a>
		</h1>
		<div class="wrap">
			<div class="gnb">
				<ul>
					<li class=""><a href="/product/list">WINE</a>
						<div class="pc_category_gnb">
							<div class="flex_box">
								<div class="box wine">
									<ul>
										<li class="ico_red"><a
											href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10101">레드</a></li>
										<li class="ico_white"><a
											href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10102">화이트</a></li>
										<li class="ico_rose"><a
											href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10108">로제</a></li>
										<li class="ico_sparkling"><a
											href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10103">스파클링</a></li>
										<li class="ico_dessert"><a
											href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10104">디저트</a></li>
										<li class="ico_spirits"><a
											href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10105">주정강화</a></li>
									</ul>
									<ul>
										<li class="ico_france"><a
											href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10201">프랑스</a></li>
										<li class="ico_italia"><a
											href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10202">이탈리아</a></li>
										<li class="ico_spain"><a
											href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10203">스페인</a></li>
										<li class="ico_germ"><a
											href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10204">독일</a></li>
										<li class="ico_usa"><a
											href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10206">미국</a></li>
										<li class="ico_chile"><a
											href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10205">칠레</a></li>
										<li class="ico_argentina"><a
											href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10209">아르헨티나</a></li>
										<li class="ico_aus"><a
											href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10207">호주</a></li>
										<li class="ico_etc"><a
											href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10210">기타
												구대륙</a></li>
										<li class="ico_etc"><a
											href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10211">기타
												신대륙</a></li>
									</ul>
								</div>
							</div>
						</div></li>
					<li class=""><a href="#">NEW</a></li>
					<li class=""><a href="/product/list">BEST</a></li>
				</ul>
				<button type="button" class="pc_category"
					onclick="$(this).toggleClass('on');$('.bottom .wrap>.pc_category_gnb').toggleClass('on');">
					<span></span>
				</button>
			</div>
			<div class="pc_category_gnb">
				<div class="flex_box">
					<div class="box wine">
						<p class="tit">
							<strong>WINE</strong>
						</p>
						<ul>
							<li class="ico_red"><a
								href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10101">레드</a></li>
							<li class="ico_white"><a
								href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10102">화이트</a></li>
							<li class="ico_rose"><a
								href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10108">로제</a></li>
							<li class="ico_sparkling"><a
								href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10103">스파클링</a></li>
							<li class="ico_dessert"><a
								href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10104">디저트</a></li>
							<li class="ico_spirits"><a
								href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10105">주정강화</a></li>
						</ul>
						<ul>
							<li class="ico_france"><a
								href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10201">프랑스</a></li>
							<li class="ico_italia"><a
								href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10202">이탈리아</a></li>
							<li class="ico_spain"><a
								href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10203">스페인</a></li>
							<li class="ico_germ"><a
								href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10204">독일</a></li>
							<li class="ico_usa"><a
								href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10206">미국</a></li>
							<li class="ico_chile"><a
								href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10205">칠레</a></li>
							<li class="ico_argentina"><a
								href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10209">아르헨티나</a></li>
							<li class="ico_aus"><a
								href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10207">호주</a></li>
							<li class="ico_etc"><a
								href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10210">기타
									구대륙</a></li>
							<li class="ico_etc"><a
								href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10211">기타
									신대륙</a></li>
						</ul>
					</div>
					<div class="box">
						<p class="tit">
							<a href="/shop/product/group_product_lists?group_cd=1901"><strong>NEW
									&amp; BEST</strong></a>
						</p>
					</div>
					<div class="box">
						<p class="tit">
							<strong>고객센터</strong>
						</p>
						<ul>
							<li><a href="/shop/cs/notice_lists">공지사항</a></li>
							<li><a href="/shop/cs/faq_lists">자주하는 질문</a></li>
							<li><a href="/shop/cs/qna_write">1:1문의</a></li>
							<li><a href="/shop/cs/nomem_cert">비회원 주문조회</a></li>
						</ul>
						<div class="info">
							<a href="tel:0807320101">080-732-0101</a>
							<p>
								<em>[운영시간]</em> 10:00~17:00<br> (점심시간 12:00~13:00)<br>
								<em>[휴무]</em> 주말 및 공휴일
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<button type="button" onclick="commonUI.header.Search.clickFn()"
			class="fixed_search_btn">PC Search</button>
		<a href="/shop/mypage/shopping/mypage" class="fixed_mypage"><img
			src="/resources/asset/images/shop/default/pc_icon_mypage.png"
			alt="My Page"></a> <a href="/shop/cart/cart_lists"
			class="fixed_cart"> </a>
	</div>

	<!-- mb_lnb -->
	<div class="mb_lnb pc_hidden">
		<ul>
			<li class="btn_order"><button type="button"
					onclick="openPopAdEvent();">
					<span>TABLING</span>
				</button></li>
			<li class="btn_search">
				<button type="button" onclick="location.href='/product/list'">
					<span>WINE</span>
				</button>
			</li>
			<li class="btn_home">
				<button type="button" style="padding-top: 0px; padding-left: 5px;">
					<span>mobile Home</span>

				</button>
			</li>
			<li class="btn_wish">
				<button type="button" onClick="location.href='/decanting/bookList'">
					<span>D - BOOK</span>
				</button>
			</li>
			<li class="btn_mypage">
				<button type="button" onclick="location.href='/mypage'">
					<span>MY PAGE</span>
				</button>
			</li>
		</ul>
	</div>

	<form action="https://www.winenara.com/shop/order/barcode_view"
		id="BarcodeForm" name="BarcodeForm" method="post"
		accept-charset="utf-8">
		<input type="hidden" name="witplus_csrf_token"
			value="ae7bb0f4d45fe5ee03cd137c138c50ea"> <input
			type="hidden" name="barcode" value="">
	</form>
	<!-- //mb_lnb -->

	<!-- <form
		action="https://www.winenara.com/shop/product/search_product_lists"
		id="searchForm" name="searchForm" method="get" accept-charset="utf-8">
		<div class="search_layer">
			<div class="search_box">
				<button type="button" class="btn_close" onclick="commonUI.header.Search.clickFn()">Search</button>
				<input type="text" name="keyword" id="keyword" placeholder="오늘 마시고 싶은 와인을 검색해 보세요." autocomplete="off"
					class="srch_close_event" value="">
					
				<button type="submit" id="s_btn">검색</button>
			</div>

			<div class="search_result srch_close_event" id="search_block">
				<div class="result_inner">
					<div class="allDelete off">
						<h2 class="tit">최근검색어</h2>
						<button type="button" class="btn del_btn"
							onclick="all_del_item();">전체삭제</button>
					</div>
					<ul id="result_list" class="result_list">
						<li id="nodata">최근검색어 내역이 없습니다.</li>
					</ul>
				</div>
			</div>

		</div>
	</form> -->
</header>
<!--lazy_loading-->
<style>
.rec {
	display: flex;
	height: 100%;
	margin-bottom: 15px;
}

.recImg {
	border-radius: 20px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

.recWine {
	display: flex;
	flex-direction: column;
	padding: 7px 15px;
}

.recDesc {
	border-top: 3px solid #46675c;
	padding-top: 10px;
	font-size: 14px;
}

.recBox {
	max-width: 100% !important;
}

.chat-messages {
	padding-bottom: 200px;
}

.outgoing .message-content {
	background-color: #46675c;
	color: white;
}
</style>
<section id="popupDark" style="margin-top: 0px;"></section>


<section id="popupChat" class="layerPop" style="margin-top: 0px;">

	<div class="chat-container" style="overflow: hidden;">
		<div class="chat-header">
			<h3>H Wine 소믈리에</h3>
		</div>
		<div class="chat-messages">
			<h3>와인을 추천해주는 챗 봇입니다.</h3>
			<h3>검색하고싶은 와인을 설명해보세요</h3>
			<h3>예시 : 굴과 어울리는 40대 남자에게 선물하기 좋은 와인</h3>
			<div class="message incoming">
				<div class="message-content">
					<p>안녕하세요. 원하시는 와인을 설명해주세요</p>
				</div>
			</div>
			<!-- <div class="message incoming">
				<div class="message-content recBox" >
					<div class="rec">
						<img class="recImg" src="https://wine21.speedgabia.com/WINE_MST/TITLE/0155000/W0155816.jpg" style="border-radius: 20px;">
						<div class="recWine">
							<span class="recName">원글라스 피노 그리지오</span>
							<span class="recDesc">오렌지와 잘 어울리는 라이트 스타일의 화이트 와인입니다. 향긋하고 리프레시한 맛이 특징입니다.</span>
						</div>
					</div>
										<div class="rec">
						<img class="recImg" src="https://wine21.speedgabia.com/WINE_MST/TITLE/0155000/W0155816.jpg" style="border-radius: 20px;">
						<div class="recWine">
							<span class="recName">원글라스 피노 그리지오</span>
							<span class="recDesc">오렌지와 잘 어울리는 라이트 스타일의 화이트 와인입니다. 향긋하고 리프레시한 맛이 특징입니다.</span>
						</div>
					</div>
										<div class="rec">
						<img class="recImg" src="https://wine21.speedgabia.com/WINE_MST/TITLE/0155000/W0155816.jpg" style="border-radius: 20px;">
						<div class="recWine">
							<span class="recName">원글라스 피노 그리지오</span>
							<span class="recDesc">오렌지와 잘 어울리는 라이트 스타일의 화이트 와인입니다. 향긋하고 리프레시한 맛이 특징입니다.</span>
						</div>
					</div>
										<div class="rec">
						<img class="recImg" src="https://wine21.speedgabia.com/WINE_MST/TITLE/0155000/W0155816.jpg" style="border-radius: 20px;">
						<div class="recWine">
							<span class="recName">원글라스 피노 그리지오</span>
							<span class="recDesc">오렌지와 잘 어울리는 라이트 스타일의 화이트 와인입니다. 향긋하고 리프레시한 맛이 특징입니다.</span>
						</div>
					</div>

				</div>
				
			</div> -->
		</div>
		<div class="FindMsg"
			style="position: absolute; bottom: 83px; left: 0; right: 0; margin: 0 auto; width: 140px; animation: wavy 1s infinite; animation-delay: calc(.1s * var(- -i)); display: none;">↓
			추천 와인을 찾았어요!</div>
		<div class="chat-input" style="background: white;">
			<div class="input-wrapper">
				<input type="text" id="textInput" placeholder="메세지를 입력해주세요"
					onkeypress="return enterGo(event)">
			</div>
			<button>
				<img class="fa fa-paper-plane"
					src="/resources/asset/images/shop/default/wSend.png">
			</button>
		</div>
	</div>

</section>


<style>
.message {
	animation: fadein 1s;
}

.outgoing {
	flex-direction: row-reverse;
}

.layerPop {
	background: #fff;
	width: 100%;
	height: 90%;
	margin: 0;
	padding: 0;
	transition: all 600ms cubic-bezier(0.86, 0, 0.07, 1);
	top: 100%;
	position: fixed;
	left: 0;
	overflow: scroll;
}

.layerUp {
	top: 10%;
}

.layer_close {
	top: 7px;
	right: 0;
	width: 64px;
	height: 50px;
	line-height: 50px;
	position: absolute;
	background: url(/resources/asset/images/shop/default/mb_icon_close.png)
		50% 50% no-repeat;
	overflow: hidden;
	text-indent: -9999px;
	z-index: 30;
}

.chat-container h3 {
	text-align: center;
	margin: 15px;
}

#msgLoading {
	animation: fadein 2s;
}

.waviy {
	animation: fadein 2s;
}

@
keyframes fadein {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
@
keyframes wavy { 0%,40%,100% {
	transform: translateY(0)
}
20












%
{
transform












:












translateY










(












-20px












)












}
}
</style>
<script>
$('.btn_home').on('click',function(e){
	$('body').css('overflow','hidden');
	$('#popupChat').addClass('layerUp');
	$('#popupDark').css('z-index','100');
	
})
$('#popupDark').on('click',function(){
	$('body').css('overflow','');
	$('#popupChat').removeClass('layerUp');
	$('#popupDark').css('z-index','-1'); 
})

	let queNum = 1;
	let secQueArv = 0;
	let trdQueArv = 0;
	const input = $('.chat-input input');
	const button = $('.chat-input button');
	let messages = $('.chat-messages');
	
	button.on('click', function() {
		const value = input.val();
		if (value !== '') {
			 const message = $('<div></div>').addClass('message outgoing');
			 const answer = $('<div></div>').addClass('message incoming');
			 message.html(`
			   <div class="message-content">
			     <p>\${value}</p>
			   </div>
			 `);
			 messages.append(message);
			 message.addClass('out animated');
			 $('.chat-messages').scrollTop($('.chat-messages')[0].scrollHeight);
			 input.val('');
				 messages.append(`<img id="msgLoading" style="width:16%;" src="/resources/asset/images/shop/default/chat_loading.gif">
				 				  <p class="waviy">해당하는 와인종류가 존재하는지 검색중...</p>`);
				 $('.chat-messages').scrollTop($('.chat-messages')[0].scrollHeight);
				 $.ajax({
						type: 'get',
						dataType: 'text',
						url: '/decanting/wineRec',
						data:{
							prompt : value
						},
						context : this,
						success:function(data){
							console.log('검증 데이터 도착');
							if(parseInt(data) == 1){
								queNum++;
								$('.waviy').text("와인 검색중...");
								 $.ajax({
										type: 'get',
										dataType: 'JSON',
										url: '/decanting/anvWine',
										data:{
										},
										context : this,
										success:function(data){
											console.log('기념일 데이터 도착');
											setTimeout(function() {
												
											$('#msgLoading').remove();
											$('.waviy').remove();
											var recWine = `<div class="message incoming recContainer\${queNum+100}" ><div class="message-content recBox" >
												<h3 style="margin-top:0px;">소믈리에가 와인을 꺼내는 중입니다 </h3>
												<h3>기다리는 동안 다가오는 기념읠에 이런와인 어떠신가요?</h3>`;
											
											for(var i = 0; i < data.length; i++){
												 recWine += `
												 
												 <div class="rec">
													<div class="recWine">
														<span class="recName" style="text-align: center;">\${data[i].a_date} \${data[i].a_name}을 위한 와인</span>

														<span class="recDesc" style="word-break: break-all;">
														<img class="recImg" src="\${data[i].w_img}" style="float: left;width: 150px;border-radius: 20px; margin-right: 10px; margin-bottom:10px;">
														\${data[i].name}<br><br>\${data[i].a_desc}</span>
													</div>
												</div>
												<input type="hidden" value="\${data[i].w_id}">`;
											 }		
											 
											recWine += `</div></div>`;
											
											if(trdQueArv == 0){
												
											
											messages.append(recWine);
											 messages.append(answer);
											 messages.append(`<img id="msgLoading" style="width:16%;" src="/resources/asset/images/shop/default/chat_loading.gif">
							 				  <p class="waviy">와인 검색중...</p>`);
											 $('.chat-messages').scrollTop($('.recContainer'+queNum+100).scrollTop());
											}
											}, 5000);
										},
										error : function(request, status, error) {
											alert("code:" + request.status + "\n"
													+ "message:"
													+ request.responseText + "\n"
													+ "error:" + error);
										}
								});
								 
								 console.log('지피티 데이터 출발');

								$.ajax({
									type: 'get',
									dataType: 'JSON',
									url: '/decanting/wineRec2',
									data:{
										prompt : value
									},
									context : this,
									success:function(data){
										console.log('지피티 데이터 도착');
										$('#msgLoading').remove();
										$('.waviy').remove();
										if(data.length < 1){
											 answer.html(`
													   <div class="message-content">
													     <p>해당하는 와인을 제공하지 않습니다.</p>
													   </div>
													 `);
											 messages.append(answer);
										} 
										else{
											 answer.html(`
													   <div class="message-content">
													     <p>\${data[0].mainDesc}</p>
													   </div>
													 `);
											 messages.append(answer);
											var recWine = `<div class="message incoming recContainer\${queNum}" ><div class="message-content recBox" >`;
	
											for(var i = 0; i < data.length; i++){
												 recWine += `
												 
												 <div class="rec">
													<img class="recImg" src="\${data[i].w_img}" style="border-radius: 20px;    width: 150px;">
													<div class="recWine">
														<span class="recName">\${data[i].name}</span>
														<span class="recDesc">\${data[i].desc}</span>
													</div>
												</div>
												<input type="hidden" value="\${data[i].w_id}">`;
											 }		
											 
											recWine += `</div></div>`;
											 messages.append(recWine);
										}
										 $('.recContainer'+queNum).scrollTop($('.recContainer'+queNum).scrollTop());
										 $('.FindMsg').show();
									},
									error : function(request, status, error) {
										alert("code:" + request.status + "\n"
												+ "message:"
												+ request.responseText + "\n"
												+ "error:" + error);
									}
								})
							}
							else{
								$('#msgLoading').remove();
								$('.waviy').remove();
								answer.html(`
										   <div class="message-content">
										     <p>\해당하는 와인이 없습니다</p>
										   </div>
										 `);
								messages.append(answer);
							}
						},
						error : function(request, status, error) {
							alert("code:" + request.status + "\n"
									+ "message:"
									+ request.responseText + "\n"
									+ "error:" + error);
						}
				})
			 
		}

	});
	function enterGo(event) {
	    if (event.which === 13) {
	    	$(".chat-input button").trigger("click");
	    }
	};
    $('.chat-messages').scroll(function () {
        if ($(this).scrollTop() + $(this).innerHeight() >= ($(this)[0].scrollHeight - 100)) {
            $('.FindMsg').hide();
        }
    });
	 $(document).on("click", ".rec", function(){
         location.href="/product/item?w_id=" + $(this).next().val();
      })
</script>

<script>
	function updateHeaderInfo(){
			 $.ajax({
					type: 'get',
					dataType: 'JSON',
					url: '/updateHeader',
					success:function(data){
						console.log(data);
						$('#cartCnt').text(data.cartCnt);
						$('#pickupCnt').text(data.pickupCnt);
						$('#tastingcardCnt').text(data.tastingcardCnt);
						$('#tablingCnt').text(data.tablingCnt);
					},
					error : function(request, status, error) {
						console.log("로그인 x");
					}
			});
	}
</script>