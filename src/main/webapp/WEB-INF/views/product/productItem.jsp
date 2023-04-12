<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<!--Plugin CSS file with desired skin-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/css/ion.rangeSlider.min.css" />
<!--Plugin JavaScript file-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/js/ion.rangeSlider.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'
	crossorigin='anonymous'></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
</head>

<style>
/* swiper */
.swiper-container {
	overflow: visible;
}

.swiper-slide {
	display: flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
	align-items: center; /* 위아래 기준 중앙정렬 */
	justify-content: center; /* 좌우 기준 중앙정렬 */
	opacity: 0.4;
	transition: opacity 0.3s;
	border: 1px solid #DDDDDD;
	border-radius: 10px;
}

.swiper-slide-active, .swiper-slide-active+.swiper-slide,
	.swiper-slide-active+.swiper-slide+.swiper-slide, .swiper-slide-active+.swiper-slide+.swiper-slide+.swiper-slide
	{
	opacity: 1
}

.greycolor {
	color: #B0B0B0;
}

.css-1li4bvi {
	padding: 24px 0px;
}

.css-m70di5 {
	border: none;
	margin: 0;
	padding: 0;
	background-color: #dee1e5;
	height: 1px;
}

.css-1bfzjjr {
	margin: 20px 0;
}

.css-zr2zhp {
	word-break: keep-all;
	color: rgb(0, 0, 0);
	font-weight: 700;
	font-size: 20px;
	line-height: 1.5;
	letter-spacing: -0.8px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}

.css-p9g1d2 {
	display: flex;
	-webkit-box-pack: justify;
	-webkit-box-align: center;
	align-items: center;
	/* padding: 12px 0px; */
}

.css-1w7ldmu {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	gap: 2px;
}

.css-xr0jx0 {
	display: inline-block;
	word-break: keep-all;
	color: #a4a8ae;
	font-size: 12px;
	line-height: 1.5;
	letter-spacing: -0.48px;
	margin-top: 10px;
}

.css-1dty2z6 {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
	gap: 4px;
	max-width: calc(100% - 20px);
}

.css-1s2hlme {
	cursor: pointer;
	background-color: #ffffff;
	padding: 24px 20px;
	border-radius: 20px;
	height: 250px;
}

.css-yzveeo {
	padding-top: 16px;
}

.css-1qj8w5r {
	width: 100%;
	-webkit-text-decoration: none;
	text-decoration: none;
}

.css-1l3swjr {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	gap: 8px;
	width: -webkit-max-content;
	width: -moz-max-content;
	width: max-content;
}

.css-1v47xyx {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	color: #222529;
	background-color: #ffffff;
	border: 1px solid #c2c5cb;
	font-size: 14px;
	letter-spacing: -0.56px;
	height: 48px;
	padding: 14px 12px;
	gap: 8px;
	width: 100%;
	cursor: pointer;
	-webkit-box-pack: justify;
	-webkit-justify-content: space-between;
	justify-content: space-between;
	border-radius: 8px;
}

.css-1li4bvi {
	padding: 24px 0px;
}

.css-m70di5 {
	border: none;
	margin: 0;
	padding: 0;
	background-color: #dee1e5;
	height: 1px;
}

.css-1bfzjjr {
	margin: 20px 0;
}

.css-zr2zhp {
	word-break: keep-all;
	color: rgb(0, 0, 0);
	font-weight: 700;
	font-size: 20px;
	line-height: 1.5;
	letter-spacing: -0.8px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}

.css-p9g1d2 {
	display: flex;
	-webkit-box-pack: justify;
	-webkit-box-align: center;
	align-items: center;
	/* padding: 12px 0px; */
}

.css-1w7ldmu {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	gap: 2px;
}

.css-xr0jx0 {
	display: inline-block;
	word-break: keep-all;
	color: #a4a8ae;
	font-size: 12px;
	line-height: 1.5;
	letter-spacing: -0.48px;
}

.css-1dty2z6 {
	padding-left: 15px;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
	gap: 4px;
	max-width: calc(100% - 20px);
}

.css-1s2hlme {
	cursor: pointer;
	background-color: #ffffff;
	padding: 20px 0px;
	border-radius: 20px;
	height: 250px;
}

.css-yzveeo {
	padding-top: 16px;
}

.css-1qj8w5r {
	width: 100%;
	-webkit-text-decoration: none;
	text-decoration: none;
}

.css-1l3swjr {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	gap: 8px;
	width: -webkit-max-content;
	width: -moz-max-content;
	width: max-content;
}

.css-1v47xyx {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	color: #222529;
	background-color: #ffffff;
	border: 1px solid #c2c5cb;
	font-size: 14px;
	letter-spacing: -0.56px;
	height: 48px;
	padding: 14px 12px;
	gap: 8px;
	width: 100%;
	cursor: pointer;
	-webkit-box-pack: justify;
	-webkit-justify-content: space-between;
	justify-content: space-between;
	border-radius: 8px;
}

.loadingIcon {
	width: 100%;
}

.followDB {
	border-bottom: 3px solid lgithgrey;
}

.layerPop {
	background: #fff;
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
	transition: all 600ms cubic-bezier(0.86, 0, 0.07, 1);
	top: 100%;
	position: fixed;
	left: 0;
	overflow: scroll;
}

.layerUp {
	top: 0;
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

.cate_label {
	margin-top: 10px;
}

.no-similar-wine {
	margin-top: 25px;
	text-align: center;
}

#details dt {
	padding-top: 5px;
}
</style>
<script>
//swiper
document.addEventListener("DOMContentLoaded", function() {

    var mySwiper = new Swiper('.swiper-container', {
    	slides: 4,
        slidesPerView: 1,
        slidesPerGroup: 1,
        observer: true,
        observeParents: true,
        spaceBetween: 24,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });
    
});
</script>
<!-- 와인 프로파일 레이어 -->
<div class="layer wine_profile_layer"></div>
<!-- //와인 프로파일 레이어 -->

<!-- 회원 등급현황 레이어 - 로그인 했을 때만 노출 -->
<div class="layer grade_layer">
	<div class="display_table">
		<div class="table_cell">
			<div class="layer_area">
				<button type="button" class="layer_close"
					onclick="commonUI.layer.close()">
					<span>Layer Close</span>
				</button>
				<div class="layer_tit">등급현황</div>
				<div class="layer_con">
					<ul class="grade_status">
						<li>
							<p class="ico_silver">
								<span><i>Silver</i></span>
							</p> <em>실버</em>
						</li>
						<li>
							<p class="ico_gold">
								<span><i>Gold</i></span>
							</p> <em>골드</em>
						</li>
						<li>
							<p class="ico_diamond">
								<span><i>Diamond</i></span>
							</p> <em>다이아몬드</em>
						</li>
						<li>
							<p class="ico_trinity">
								<span><i>Trinity</i></span>
							</p> <em>트리니티</em>
						</li>
					</ul>
					<div class="grade_ex">
						<dl>
							<dt>내 구입금액</dt>
							<dd>0 원 (주문 0 건)</dd>
						</dl>
						<div class="g_list_box">
							<ul>
								<li class="tit">회원<br class="mb_hidden">등급
								</li>
								<li class="tit">실버</li>
								<li class="tit">골드</li>
								<li class="tit">다이아몬드</li>
								<li class="tit">트리니티</li>
							</ul>
							<ul>
								<li class="tit">등급<br class="mb_hidden">조건
								</li>
								<li>일반회원</li>
								<li>200만원 <br class="mb_hidden">이상구매
								</li>
								<li>500만원 <br class="mb_hidden">이상구매
								</li>
								<li>1000만원 <br class="mb_hidden">이상구매
								</li>
							</ul>
						</div>
						<div class="btn_area">
							<button type="button" class="btn_txt btn_black"
								onclick="location.href='/shop/company/member_benefit'">
								<span>혜택 자세히보기</span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //회원 등급현황 레이어 -->

<!-- 알림설정 레이어 -->
<div class="layer push_layer" id="push_layer">
	<div class="display_table">
		<div class="table_cell">
			<div class="layer_area">
				<button type="button" class="layer_close"
					onclick="commonUI.layer.close()">
					<span>Layer Close</span>
				</button>
				<div class="layer_tit">알림설정</div>
				<div class="layer_con">
					<ul>
						<li>
							<div class="btn switch">
								<strong class="tit">푸시알림</strong>
								<div class="btn_switch_module js_switch css_switch">
									<input type="checkbox" id="btn_switch01"
										class="btn_switch_check" onchange="">
									<div class="btn_switch_area">
										<div class="btn_switch">
											<label class="bar" for="btn_switch01">&nbsp;</label>
										</div>
									</div>
								</div>
							</div>
							<p class="info">와인나라 앱에서 보내는 알림을 받을 수 있습니다.</p>
						</li>
						<li>
							<div class="btn switch">
								<strong class="tit">광고성 정보 수신 동의</strong>
								<div class="btn_switch_module js_switch css_switch">
									<input type="checkbox" id="btn_switch02"
										class="btn_switch_check" onchange="">
									<div class="btn_switch_area">
										<div class="btn_switch">
											<label class="bar" for="btn_switch02">&nbsp;</label>
										</div>
									</div>
								</div>
							</div>
							<p class="info">신규서비스 및 고객 맞춤 혜택 정보를 받을 수 있습니다.</p>
						</li>
						<li>
							<div class="btn switch">
								<strong class="tit">야간 수신 동의</strong>
								<div class="btn_switch_module js_switch css_switch">
									<input type="checkbox" id="btn_switch03"
										class="btn_switch_check" onchange="">
									<div class="btn_switch_area">
										<div class="btn_switch">
											<label class="bar" for="btn_switch03">&nbsp;</label>
										</div>
									</div>
								</div>
							</div>
							<p class="info">야간(오후 9시 ~ 오전8시)에 알림을 받을 수 있습니다.</p>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //알림설정 레이어 -->

<!-- 알림내역 레이어 -->
<div class="layer push_lists_layer" id="push_lists_layer">
	<div class="display_table">
		<div class="table_cell">
			<div class="layer_area">
				<button type="button" class="layer_close"
					onclick="commonUI.layer.close()">
					<span>Layer Close</span>
				</button>
				<div class="layer_tit">알림내역</div>
				<div class="layer_con">
					<ul>
						<li><strong class="tit">4월 이달의 와인</strong>
							<p class="info">봄에 어울리는 색, 그리고 향을 테마로 준비한 이달의 와인 5종을 소개합니다.</p>
							<div class="img">
								<img src="/resources/asset/images/shop/product/mb_recom_lnb.jpg"
									alt="">
							</div>
							<div class="btn_box">
								<span class="date">2022.04.01</span>
								<button type="button" class="btn_more">자세히보기</button>
							</div></li>
						<li><strong class="tit">아발론 브랜드 기획전</strong>
							<p class="info">최고 가성비 와인, 아바론 브랜드 기획전</p>
							<div class="btn_box">
								<span class="date">2022.04.01</span>
								<button type="button" class="btn_more">자세히보기</button>
							</div></li>
						<li><strong class="tit">아발론 브랜드 기획전</strong>
							<p class="info">최고 가성비 와인, 아바론 브랜드 기획전</p>
							<div class="btn_box">
								<span class="date">2022.04.01</span>
								<button type="button" class="btn_more">자세히보기</button>
							</div></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //알림내역 레이어 -->

<!-- 설정 레이어 -->
<div class="layer set_layer">
	<div class="display_table">
		<div class="table_cell">
			<div class="layer_area">
				<button type="button" class="layer_close btn_close"
					onclick="commonUI.layer.close()">
					<span>Layer Close</span>
				</button>
				<div class="layer_tit">설정</div>
				<div class="layer_con">
					<strong class="tit">푸시설정</strong>
					<div class="set_con">
						<span>알림설정</span>
						<div class="btn_switch_module js_switch css_switch">
							<input type="checkbox" id="btn_alarm" class="btn_switch_check"
								onchange="push_ajax('push',this);">
							<div class="btn_switch_area">
								<div class="btn_switch">
									<!-- <span class="txt left">ON</span> -->
									<label class="bar" for="btn_alarm">&nbsp;</label>
									<!-- <span class="txt right">OFF</span> -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //설정 레이어 -->

<input type="hidden" id="path_gb" value="MOBILE">

<link rel="stylesheet" type="text/css"
	href="/resources/asset/css/shop/slick.css">
<script type="text/javascript" src="/resources/asset/js/slick.min.js"></script>
<script type="text/javascript">

    //배너 슬라이드
    $('.top_banner .top_banner_slide').slick({
        dots: false,
        arrows: false,
        autoplay: true,
        autoplaySpeed: 8000,
        slidesToShow: 1,
    });
    $(window).scroll(function(){
        if(!$("#header").hasClass("fixed")){
            $('.top_banner .top_banner_slide').slick('refresh');
        }
    });

    $(".top_banner.time_out").hide();
    $(".top_banner.time_out").slideDown('300');
    setTimeout(function(){
        $(".top_banner.time_out").slideUp('300');
    }, 3000);
    
    function onEnterLogin() {
    	if (window.event.keyCode === 13) {
    		$("#loginBtn").trigger("click");
    	}
    }
    
    //모바일 gnb toggle menu
    $(".mb_gnb_area .menu_list li button").on("click", function(){
        $(this).next("ul").slideToggle();
        $(this).parent("li").siblings().find("ul").slideUp();
    });
    
    //테이스트 프로파일 타이틀 주석
    $(".ico_note").on("click", function(){
        $(this).toggleClass("on");
    });
    
    //선택한 sns 노출
    $(".sns_area li").on("click", function(){
        var selSns = $(this).find("span").attr("class");
        $(".sns_area .btn_sel span").attr("class", selSns);
        $(".sns_area").removeClass("on");
    });
    //선택한 store 노출
    $(".store_area li").on("click", function(){
        var selStore = $(this).find("span").text();
        $(".store_area .btn_sel span").text(selStore);
        $(".store_area").removeClass("on");
    });

    /*공유 및 URL 복사*/
	var img_url = "";
    if(img_url !== ''){
        img_url = 'https://am.witplus.com/uploads/product/';
    }
    function share_sns(e){
		RC_Method({page_type:'product_page', behavior: 'user_action', action: 'sharing'});
        var url = window.document.location.href;
        if(e == 'U'){
            var textarea = document.createElement("textarea");
            document.body.appendChild(textarea);
            textarea.value = url;
            textarea.select();
            document.execCommand("copy");
            document.body.removeChild(textarea);
            alert("URL이 복사되었습니다.");
        }else if(e == 'F'){
            window.open( 'http://www.facebook.com/sharer.php?u=' + encodeURIComponent(url) );
        }else if(e == 'K'){
			
            Kakao.init('b129fd9215e06b4366c1a76b2c37d98b');
            Kakao.Link.sendDefault({
                objectType: 'feed',
                content: {
                    title: '와인나라',
                    description: "",
                    imageUrl:'https://www.winenara.com/resources/asset/images/shop/default/pc_logo.png',
                    link: {
                        mobileWebUrl: location.href,
                        webUrl: location.href,
                    },
                },
                buttons: [
                    {
                    title: '와인나라',
                    link: {
                        mobileWebUrl: location.href,
                    },
                    },
                ]
            });
        }
    };
    
    $(document).ready(function(){
    	$("#loginBtn").on("click",function(){
    		if(!$("#login_user_id").val()){
        		alert("아이디를 입력하여 주세요.");
        		$("#login_user_id").focus();
        		return false;
        	}
    
        	if(!$("#login_passwd").val()){
        		alert("비밀번호를 입력하여 주세요.");
        		$("#login_passwd").focus();
        		return false;
        	}
            Cookie.Set('login_return_url_param', location.href, 1, true);

        	Csrf.Set(_CSRF_NAME_); //토큰 초기화
        	$.ajax({
        		type: 'POST',
        		url: "/shop/auth/login_check",
        		dataType: 'json',
        		data    : $("#LoginPostFrm").serialize(),
        		success: function(res) {
                    console.log(res);
        			if(res.status == 'Y'){
        				console.log(JSON.stringify(res.data));
        				// alert(res.msg);
        				location.href = res.url;
        			}else if(res.status == "N"){
        				alert(res.msg);
        				if(res.pass_err_cnt >= 5){
        					recaptcha_load();
        				}
        			}else if(res.status === 'AUTH_DENIED'){
        				alert(res.msg);
        				location.href = res.url;
        			}else if(res.status === 'OUT_YN'){
        				alert(res.msg);
        				return false;
        			}else if(res.status === 'TOKEN_ERROR'){
        				alert(res.msg);
        				return false;
        			}else if(res.status == 'D'){
                        $('#dormant_last_login_date').text(res.last_login_date);
                        $('#dormant_dormant_date').text(res.dormant_date);
                        if(confirm(res.msg)){
                            // location.href = res.url;
                            $('#dormant_layer').show();
                        }
                    }else {
        				alert(res.msg);
        			}
        		}
        	});
    
    	});
    });
    
    // 검색어 다시 불러오기
    //$(function(){
		//$("#keyword").on("click", function() {
		$('#keyword').click(function(){
    		get_keyword_list_ajax();
		});

		$('#mb_search_btn').click(function(){
    		get_keyword_list_ajax();
		});


    //});

	function get_keyword_list_ajax(){
		var html = "";
    	Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
            type: "POST",
            url : "/shop/product/get_keyword_list_ajax",
            data: { mode:'list' },
            success : function (res) {
            	if(typeof(res) == 'string'){	res = JSON.parse(res); }
                if(res.status == 'ok'){
    				var keyword_list = res.data.keyword_list;
    				if(keyword_list.length >0){
        				for (var i = 0; i <keyword_list.length; i++) {
        					html += '<li><span onclick="sch_item(';
        					html += "'"+keyword_list[i]['keyword']+"'";
        					html +=  ')" style="cursor:pointer;">'+keyword_list[i]['keyword']+'</span>';
        				  	html += '<button type="button" class="del_btn" onclick="del_item(';
                            html += "'"+keyword_list[i]['keyword']+"'";
                            html += ')"></button></li>';
        				}
        				$(".result_list").empty();
                        $(".result_list").html(html);
                   	}else{
                   		$(".result_list").empty();
                        $(".result_list").html('<li id="nodata">최근검색어 내역이 없습니다.</li>');
                   	}
    			}else{
                    //alert(res.msg);
                    return;
                }
            },
            error: function (res) {
                console.log("최근 검색어 리스트에 오류가 발생했습니다.");
               // alert(res.responseText);
            }
        });
	}
    
    // 키워드 개별 삭제
    function del_item(keyword){
    
    	var html = "";
    	Csrf.Set(_CSRF_NAME_); //토큰 초기화
    	$.ajax({
    		type: 'POST',
    		url: "/shop/product/update_keyword_ajax",
    		dataType: 'json',
    		data    : {keyword:keyword, mode:'single'},
    		success: function(res) {
    			if(typeof(res) == 'string'){	res = JSON.parse(res); }
    
    			if(res.status == 'ok'){
    
    				var keyword_list = res.data.keyword_list;
    				if(keyword_list.length >0){
        				for (var i = 0; i <keyword_list.length; i++) {
        					html += '<li><span onclick="sch_item(';
        					html += "'"+keyword_list[i]['keyword']+"'";
        					html +=  ')" style="cursor:pointer;">'+keyword_list[i]['keyword']+'</span>';
        				  	html += '<button type="button"  class="del_btn" onclick="del_item(';
                            html += "'"+keyword_list[i]['keyword']+"'";
                            html += ')"></button></li>';
        				}
        				$(".result_list").empty();
                        $(".result_list").html(html);
    				}else{
        				$(".result_list").empty();
                        $(".result_list").html('<li id="nodata">최근검색어 내역이 없습니다.</li>');
                	}
    			}
    		},
    		error: function (res) {
                alert("검색 키워드 삭제시 에러가 발생했습니다.");
                alert(res.responseText);
            }
    	});
    }
    
    // 키워드 전체 삭제
    function all_del_item(){
    	Csrf.Set(_CSRF_NAME_); //토큰 초기화
    	$.ajax({
    		type: 'POST',
    		url: "/shop/product/update_keyword_ajax",
    		dataType: 'json',
    		data    : {mode:'all'},
    		success: function(res) {
    			if(res.status == 'ok'){
    				$(".result_list").empty();
                    $(".result_list").html('<li id="nodata">최근검색어 내역이 없습니다.</li>');
    			}
    		},
    		error: function (res) {
                alert("검색 키워드 삭제시 에러가 발생했습니다.");
                alert(res.responseText);
            }
    	});
    }
    
    // 선택 키워드 검색
    function sch_item(keyword){
    	/*var form = document.searchForm;
    	form.keyword.value = keyword;
    	form.submit();
		*/
		location.href='/shop/product/search_product_lists?keyword='+keyword
    }

    $('.social_login .social_btn.naver').click(function(){
		Cookie.Set('join_gb', 'N', 1, true);
        Cookie.Set('sns_btn_type', 'L', 1, true);
		Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
		Cookie.Set('error_url', location.href, 1, true);
        Cookie.Set('login_return_url_param', location.href, 1, true);
		location.href = '/shop/auth/oauth';
	});

    $('.social_login .social_btn.kakao').click(function(){
		Cookie.Set('join_gb', 'K', 1, true);
        Cookie.Set('sns_btn_type', 'L', 1, true);
		Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
		Cookie.Set('error_url', location.href, 1, true);
        Cookie.Set('login_return_url_param', location.href, 1, true);
		location.href = '/shop/auth/oauth';
	});

    $('.social_login .social_btn.google').click(function(){
		Cookie.Set('join_gb', 'G', 1, true);
        Cookie.Set('sns_btn_type', 'L', 1, true);
		Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
		Cookie.Set('error_url', location.href, 1, true);
        Cookie.Set('login_return_url_param', location.href, 1, true);
		location.href = '/shop/auth/oauth';
	});

    $('.social_login .social_btn.face').click(function(){
		Cookie.Set('join_gb', 'F', 1, true);
        Cookie.Set('sns_btn_type', 'L', 1, true);
		Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
		Cookie.Set('error_url', location.href, 1, true);
        Cookie.Set('login_return_url_param', location.href, 1, true);
		location.href = '/shop/auth/oauth';
	});

    //PC 모바일 구분
    if (chkDevice.isPC()) {
        $("#path_gb").val('WEB');
    } else {
        $("#path_gb").val('MOBILE');
    }
    
    function setHeaderStore(store_code) {
        Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
            type: "POST",
            url : "/shop/auth/store_setting_ajax",
            data: { "store_code" : store_code },
            success : function (res) {
                console.log(res);
				location.reload();
            },
            error: function (res) {
                console.log(res.responseText);
            }
        });

    }

    /*
    * 바코드 스크립트
     */
    window.addEventListener("flutterInAppWebViewPlatformReady", function(event) {
        //호출코드 (호출가능시기확인 후 호출가능)
    });

    function jsOpenBarcode(){
        window.flutter_inappwebview.callHandler('scanBarcode');
    }

    //응답코드
    function resultBarcode(barcode){
        // console.log("barcode: ",barcode);
        var form = document.BarcodeForm;

        form.barcode.value = barcode;

        // form.submit();
        
        location.href='/shop/order/barcode_view?barcode='+barcode;
    }


    function openProfile() {
        Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
            type: "POST",
            url : "/shop/mypage/shopping/wine_profile_ajax",
            data: { },
            success : function (res) {
                $(".wine_profile_layer").html(res);
                commonUI.layer.open('wine_profile_layer');
            },
            error: function (res) {
                console.log(res.responseText);
            }
        });
    }

    function log_out(){
        Cookie.Set('logout_return_url', location.href, 1, true);
        location.href='/shop/auth/logout';
    }


    if( $("#btn_auto_login").size() > 0 ){
            }

    if( $("#btn_alarm").size() > 0 ){
            }

    function push_ajax(mode, target){
        var yn = "N";
        if(target.checked === true) { yn = 'Y'; }
        Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
            type: "POST",
            url: "/shop/mypage/push/push_setting_ajax",
            dataType:'json',
            data    : {"mode" : mode, "yn" : yn},
            success : function (res) {
                if(res.status == 'err'){
                    // alert(res.msg);
                } else {
                    //해당 주석 해제하면 최초 실행시에 click 트리거가 설정되어있어서 alert이 뜰 수 있음. 주의
                    // alert(res.msg);
                }
            },error: function (res) {
                alert(res.responseText);
            }
        });
    }
    $(document).on("click", ".followDB", function(e) {
		location.href="/decanting/decantingBook?db_id=" + $(this).next().val();r
    })
    $(document).on("click", ".followBtn1", function(e) {
		e.stopImmediatePropagation();
		var follow2 = parseInt($(this).next().val());
		var f_id2 = $(this).next().next().val();
		$.ajax({
			url : "/decanting/follow",
			type : "POST",
			context : this,
			data : {
				follow : follow2,
				f_id : f_id2
			},
			beforeSend : function(xhr) {
				let header = $(
						"meta[name='_csrf_header']")
						.attr("content");
				let token = $("meta[name='_csrf']")
						.attr("content");
				xhr.setRequestHeader(header, token);
			},
			success : function(data) {
				if (follow2 > 0) {
					$(this).css("background-color",
							"#46675c");
					$(this).text("팔로우");
					$(this).css("color","white");
					$(this).next().val(0);
				} 
				else {
					$(this).css("background-color",
							"lightgrey");
					$(this).text("팔로잉");
					$(this).css("color","white");
					$(this).next().val(1);
				}
			},
			error : function(request, status, error) {
				alert("code:" + request.status + "\n"
						+ "message:"
						+ request.responseText + "\n"
						+ "error:" + error);
			}

		});

    });

    $(document).ready(function() {
				$('.css-1bfzjjr').on('click',function(e){
					e.stopPropagation();  
					var dbid = $(this).children('.dbid').val();
					location.href='/decanting/decantingBook?db_id='+dbid;
				})
				
				    $(".followBtn1").on("click", function(e) {
						e.stopImmediatePropagation();
		var follow = parseInt($(this).next().val());
		var f_id = $(this).next().next().val();
		$.ajax({
			url : "/decanting/follow",
			type : "POST",
			context : this,
			data : {
				follow : follow,
				f_id : f_id
			},
			beforeSend : function(xhr) {
				let header = $(
						"meta[name='_csrf_header']")
						.attr("content");
				let token = $("meta[name='_csrf']")
						.attr("content");
				xhr.setRequestHeader(header, token);
			},
			success : function(data) {
				if (follow > 0) {
					$(this).css("background-color",
							"#46675c");
					$(this).css("color","white");
					$(this).text("팔로우");
					$(this).next().val(0);
				} 
				else {
					$(this).css("background-color",
							"lightgrey");
					$(this).css("color","white");
					$(this).text("팔로잉");
					$(this).next().val(1);
				}
			},
			error : function(request, status, error) {
				alert("code:" + request.status + "\n"
						+ "message:"
						+ request.responseText + "\n"
						+ "error:" + error);
			}

		});


    });
				$('.css-1mv6tvd').on('click',function(e){
					e.stopPropagation();  
					location.href="/";	
				})
				let start = 1;
				let	stopScroll = 0;
				if("${decantingListCnt <= 10}")
				stopScroll = 1
				let w_id = "${itemInfo.w_id}";
				$('#moreDB').on('click',function(e){
					$('body').css('overflow','hidden');
					$('#popupLayer').addClass('layerUp');
					w_id = "${decantingList[0].w_id }"
					$.ajax({
						url : "/product/getReview",
						type : "GET",
						context : this,
						data : {
							w_id : w_id,
							start : start
						},
						beforeSend : function(xhr) {
							let header = $(
									"meta[name='_csrf_header']")
									.attr("content");
							let token = $("meta[name='_csrf']")
									.attr("content");
							xhr.setRequestHeader(header, token);
						},
						success : function(data) {
							var layerHTML = "";
							if(data.length < 1){
								layerHTML += `				<img
									style="opacity: 0.5; width: 120px; margin: 0 auto; margin: 30px auto;
								    display: block;"
									src="/resources/asset/icons/sad_icon.png">
									<h2 style="text-align: center;">디켄팅 북이 더 이상 없습니다</h2>`;
							}
							else{
							for(let i = 0; i < data.length ; i++){
							layerHTML += `					
							<div class="follow">
								<div class="followPic">
								<a class="followPica" style="width: 44px; height: 44px;">
								<img class="followPicImg" src="\${data[i].m_profile_img}"></a>
								</div>
								<div class="followDesc">
								<span class="followName"
									style="line-height: var(- -base-line-clamp-line-height); - -base-line-clamp-line-height: 18px;"><a
									class="followNameIn" href="/1soleee_/" role="link" tabindex="0"><span
										class="followRealName">\${data[i].m_nickname }</span></a><span
									class="followers" style="line-height: 18px;">\${data[i].f_cnt }명이
										팔로우</span></span>
							</div>`
							<sec:authorize access="isAuthenticated()">
									layerHTML += `<div class="followBtn">`;
									
									if(data[i].f_id == null){
										layerHTML += `<button class="followBtn1" type="button" style="background-color: #46675c;">`;										
										layerHTML += `<div class="BtnCase" style="height: 100%;">`;
										layerHTML += `	<div class="Btntext">팔로잉</div>`;

										layerHTML += `</div>`;
										layerHTML += `</button>`;
										layerHTML += `<input type="hidden" value="-1"></input>`;
										layerHTML += `<input type="hidden" value="\${data[i].db_id}"></input>`;
									}
									else if(data[i].f_status == 1){
										layerHTML += `<button class="followBtn1" type="button">`;											
										layerHTML += `<div class="BtnCase" style="height: 100%;">`;
										layerHTML += `	<div class="Btntext">팔로잉</div>`;

										layerHTML += `</div>`;
										layerHTML += `</button>`;
										layerHTML += `<input type="hidden" value="\${data[i].f_status}">`;
										layerHTML += `<input type="hidden" value="\${data[i].f_id }"> `;
									}
									else{
										layerHTML += `<button class="followBtn1" type="button" style="background-color: #46675c;">`;	
										layerHTML += `<div class="BtnCase" style="height: 100%;">`;
										layerHTML += `	<div class="Btntext">팔로우</div>`;

										layerHTML += `</div>`;
										layerHTML += `</button>`;
										layerHTML += `<input type="hidden" value="\${data[i].f_status}">`;
										layerHTML += `<input type="hidden" value="\${data[i].f_id }"> 
											`;
									}
									</sec:authorize>
							layerHTML +=	`
								</div>
								</div>
						<div class="followDB">
						<div class="contentBox"><h2>\${data[i].db_content}</h2></div>
						</div>
						<input type="hidden" value="\${data[i].db_id}">`
							}
							}
							$('.decantingbook').append(layerHTML);
							$('.loadingIcon').hide();
							if(data.length < 10){
								endFollow = 1;
								scrollStop = 1;
							}
							start += data.length;
							
						},
						error : function(request, status, error) {
							alert("code:" + request.status + "\n"
									+ "message:"
									+ request.responseText + "\n"
									+ "error:" + error);
						}

					});
				})
				$('.css-1bfzjjr').on('click',function(e){
					$('body').css('overflow','hidden');
					$('#popupLayer').addClass('layerUp');
					w_id = "${decantingList[0].w_id }"
					$.ajax({
						url : "/product/getReview",
						type : "GET",
						context : this,
						data : {
							w_id : w_id,
							start : start
						},
						beforeSend : function(xhr) {
							let header = $(
									"meta[name='_csrf_header']")
									.attr("content");
							let token = $("meta[name='_csrf']")
									.attr("content");
							xhr.setRequestHeader(header, token);
						},
						success : function(data) {
							var layerHTML = "";

							for(let i = 0; i < data.length ; i++){
							layerHTML += `					
							<div class="follow">
								<div class="followPic">
								<a class="followPica" style="width: 44px; height: 44px;">
								<img class="followPicImg" src="\${data[i].m_profile_img}"></a>
								</div>
								<div class="followDesc">
								<span class="followName"
									style="line-height: var(- -base-line-clamp-line-height); - -base-line-clamp-line-height: 18px;"><a
									class="followNameIn" href="/1soleee_/" role="link" tabindex="0"><span
										class="followRealName">\${data[i].m_nickname }</span></a><span
									class="followers" style="line-height: 18px;">\${data[i].f_cnt }명이
										팔로우</span></span>
							</div>`
							<sec:authorize access="isAuthenticated()">
									layerHTML += `<div class="followBtn">`;
									
									if(data[i].f_id == null){
										layerHTML += `<button class="followBtn1" type="button" style="background-color: #46675c;">`;										
										layerHTML += `<div class="BtnCase" style="height: 100%;">`;
										layerHTML += `	<div class="Btntext">팔로잉</div>`;

										layerHTML += `</div>`;
										layerHTML += `</button>`;
										layerHTML += `<input type="hidden" value="-1"></input>`;
										layerHTML += `<input type="hidden" value="\${data[i].db_id}"></input>`;
									}
									else if(data[i].f_status == 1){
										layerHTML += `<button class="followBtn1" type="button">`;											
										layerHTML += `<div class="BtnCase" style="height: 100%;">`;
										layerHTML += `	<div class="Btntext">팔로잉</div>`;

										layerHTML += `</div>`;
										layerHTML += `</button>`;
										layerHTML += `<input type="hidden" value="\${data[i].f_status}">`;
										layerHTML += `<input type="hidden" value="\${data[i].f_id }"> `;
									}
									else{
										layerHTML += `<button class="followBtn1" type="button" style="background-color: #46675c;">`;	
										layerHTML += `<div class="BtnCase" style="height: 100%;">`;
										layerHTML += `	<div class="Btntext">팔로우</div>`;

										layerHTML += `</div>`;
										layerHTML += `</button>`;
										layerHTML += `<input type="hidden" value="\${data[i].f_status}">`;
										layerHTML += `<input type="hidden" value="\${data[i].f_id }"> 
											`;
									}
									</sec:authorize>
							layerHTML +=	`
								</div>
								</div>
						<div class="followDB">
						<div class="contentBox"><h2>\${data[i].db_content}</h2></div>
						</div>
						<input type="hidden" value="\${data[i].db_id}">`
							}
							
							$('.decantingbook').append(layerHTML);
							$('.loadingIcon').hide();
							if(data.length < 10){
								endFollow = 1;
							}
							start += data.length;
						},
						error : function(request, status, error) {
							alert("code:" + request.status + "\n"
									+ "message:"
									+ request.responseText + "\n"
									+ "error:" + error);
						}

					});
				})
				$('#moreFollow').on('click', function(){
					if(stopScroll > 0){
						Swal.fire({
						      text: '더 이상 디켄팅북이 없습니다',
						      icon: 'warning',
						      confirmButtonColor: '#46675c',
						      confirmButtonText: '확인'
						    })
											
					}
					else{
					$('.decantingbook').append(`<img src="/resources/asset/icons/loading.gif" class="loadingIcon">`);				
						
							$.ajax({
								url : "/product/getReview",
								type : "GET",
								context : this,
								data : {
									w_id : w_id,
									start : start
								},
								beforeSend : function(xhr) {
									let header = $(
											"meta[name='_csrf_header']")
											.attr("content");
									let token = $("meta[name='_csrf']")
											.attr("content");
									xhr.setRequestHeader(header, token);
								},
								success : function(data) {
									var layerHTML = "";

									for(let i = 0; i < data.length; i++){
									layerHTML += `					
									<div class="follow">
									  
										<div class="followPic">
										<a class="followPica" style="width: 44px; height: 44px;">
										<img class="followPicImg" src="\${data[i].m_profile_img}"></a>
										</div>
										<div class="followDesc">
										<span class="followName"
											style="line-height: var(- -base-line-clamp-line-height); - -base-line-clamp-line-height: 18px;"><a
											class="followNameIn" href="/1soleee_/" role="link" tabindex="0"><span
												class="followRealName">\${data[i].m_nickname }</span></a><span
											class="followers" style="line-height: 18px;">\${data[i].f_cnt }명이
												팔로우</span></span>
									</div>`
									<sec:authorize access="isAuthenticated()">
											layerHTML += `<div class="followBtn">`;
											
											if(data[i].f_id == null){
												layerHTML += `<button class="followBtn1" type="button" style="background-color: #46675c;">`;										
												layerHTML += `<div class="BtnCase" style="height: 100%;">`;
												layerHTML += `	<div class="Btntext">팔로잉</div>`;

												layerHTML += `</div>`;
												layerHTML += `</button>`;
												layerHTML += `<input type="hidden" value="-1"></input>`;
												layerHTML += `<input type="hidden" value="\${data[i].db_id}"></input>`;
											}
											else if(data[i].f_status == 1){
												layerHTML += `<button class="followBtn1" type="button">`;											
												layerHTML += `<div class="BtnCase" style="height: 100%;">`;
												layerHTML += `	<div class="Btntext">팔로잉</div>`;

												layerHTML += `</div>`;
												layerHTML += `</button>`;
												layerHTML += `<input type="hidden" value="\${data[i].f_status}">`;
												layerHTML += `<input type="hidden" value="\${data[i].f_id }"> `;
											}
											else{
												layerHTML += `<button class="followBtn1" type="button" style="background-color: #46675c;">`;	
												layerHTML += `<div class="BtnCase" style="height: 100%;">`;
												layerHTML += `	<div class="Btntext">팔로우</div>`;

												layerHTML += `</div>`;
												layerHTML += `</button>`;
												layerHTML += `<input type="hidden" value="\${data[i].f_status}">`;
												layerHTML += `<input type="hidden" value="\${data[i].f_id }"> 
													`;
											}
									</sec:authorize>
									layerHTML +=	`
										</div>
										</div>
								<div class="followDB">
								<div class="contentBox"><h2>\${data[i].db_content}</h2></div>
								</div>
								<input type="hidden" value="\${data[i].db_id}">`
									}
									
									$('.decantingbook').append(layerHTML);
									$('.loadingIcon').remove();
									if(data.length < 10){
										stopScroll = 1;
									}
									start += data.length;
								},
								error : function(request, status, error) {
									alert("code:" + request.status + "\n"
											+ "message:"
											+ request.responseText + "\n"
											+ "error:" + error);
								}

						})
					}
				})
				
				$('.layer_close').on('click',function(){
					$('body').css('overflow','');
					$('#popupLayer').removeClass('layerUp');
				})
				
				$('#decantingLogIn').on('click',function(){
					location.href = "/decanting/decantingBook?w_id=" + "${itemInfo.w_id}"					
				})
				
				$('#decantingLogOut').on('click',function(){
					Swal.fire({
					      text: '로그인이 필요합니다',
					      icon: 'warning',
					      showCancelButton: true,
					      confirmButtonColor: '#46675c',
					      cancelButtonColor: 'lightgrey',
					      confirmButtonText: '로그인',
					      cancelButtonText: '취소',
					      reverseButtons: true, // 버튼 순서 거꾸로
					    }).then((result) => {
					      if (result.isConfirmed) {
							location.href = "member/login";	
					      }
						});
				})
				
			});
</script>
<style>
#popupLayer {
	z-index: 1000;
	width: 100vw;
	height: 100vh;
	background-color: white;
	max-width: 465px;
	right: 0;
	left: 0;
	margin: 0 auto;
	overflow: scroll;
}

/* body {
	overflow: hidden;
} */
.follows {
	display: flex;
	flex-direction: column;
}

.follow {
	display: flex;
	flex-direction: row;
	width: 100%;
	margin-top: 10px;
}

.followPic {
	flex-direction: column;
	margin-right: 12px;
	width: 66px;
	height: 54px;
	position: relative;
}

.followName {
	flex-direction: column;
	position: absolute;
	top: 50%;
	transform: translate(0, -50%);
}

.followers {
	display: flex;
}

.followDesc {
	flex-direction: column;
	width: 100%;
	position: relative;
}

.followBtn {
	flex-direction: column;
	margin: auto;
}

.followBtn1 {
	border: none;
	border-radius: 8px;
	background-color: lightgrey;
	width: 82px;
	height: 32px;
}

.Btntext {
	color: white;
	margin: auto;
	width: 50px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.BtnCase {
	position: relative;
}

.followPica {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	border-radius: 50%;
}

.followtitle {
	text-align: center;
	font-size: 16px;
}

.followRealName {
	font-weight: bold;
}

.decantingbook {
	padding: 20px;
}

.followDB {
	padding: 0 5px;
	min-height: 80px;
}

.prd_name .prdname {
	font-weight: 600;
	color: black;
	height: 20px;
	overflow: hidden;
	text-overflow: ellipsis;
}
</style>

<!-- contents -->
<section id="contents" class="mb_margin_0" style="margin-top: 0px;">
	<script src="/resources/asset/js/wn.product.js"></script>
	<div class="lnb product_lnb product_view_lnb lnb_wrap" style="background-color: #90b7aa;">
		<div class="pc_hidden">
			<a href="javascript:history.go(-1);" class="prev">이전</a>
			<div class="select_brand" id="select_brand"
				style="width: 300px; margin: 0 auto;">
				<h2 class="my_value js_selectBtn"
					style="background-color: #90b7aa; font-size: 18px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; ">${itemInfo.w_name_kor }</h2>
			</div>
			<p class="cart">
				<a href="/mypage/cartList"><span>Cart List</span> </a>
			</p>
		</div>
	</div>
	<div class="wrap">
		<div class="content product product_view_page product_lists_page">
			<div class="line_map mb_hidden">
				<ul>
					<li onclick="location.href='/shop/main'" style="cursor: pointer;">HOME</li>
					<li onclick="location.href='/shop/product/product_lists'"
						style="cursor: pointer;">ALL WINES</li>
					<li onclick="location.href='/shop/product/product_view'"
						style="cursor: pointer;">PRODUCT</li>
				</ul>
			</div>
			<div class="product_view_wrap">
				<div class="main_prd_detail">
					<div class="main_img_area">
						<div
							class="main_img js_main_img easyzoom easyzoom--overlay easyzoom--with-toggle"
							style="padding-top: 100px;">
							<img style="width: 100%;"
								data-src="/uploads/product/550/c5729ae85ce559950658fb4487df567d.png"
								alt="" class="lozad" src="${itemInfo.w_img}" data-loaded="true">

							<!-- 아래에도 확대이미지 경로를 넣어주셔야합니다. -->
							<div class="easyzoom-flyout zoom_btn_active lozad"
								style="display: none">
								<img
									data-src="/uploads/product/550/c5729ae85ce559950658fb4487df567d.png"
									style="position: absolute; top: 0px; left: 0px;">
							</div>
						</div>
						<!-- 신상품이면 활성화 -->
						<!-- <div class="label_wrap">
								<span class="icon new">NEW</span>
							</div> -->
					</div>
				</div>
				<style>
.stockinfo {
	margin: 10px;
	color: #46675c;
	font-weight: bold;
	margin: 10px;
	font-weight: bold;
	border: 1px solid;
	width: 30px;
	height: 22px;
	text-align: center;
	border-radius: 6px;
	color: white;
	background-color: #46675c;
	padding-top: 2px;
}
</style>
				<div class="info_area">
					<div class="more_info">
						<div class="over_wrap tit_wrap" style="margin-left: 10px;">
							<p class="prd_name">${itemInfo.w_name_kor }</p>
							<%-- <p class="prd_name">${itemInfo.w_type }</div>
								<p class="prd_name">${itemInfo.wv_nation_kor }</div> --%>
							<p class="prd_en_name">${itemInfo.w_name }</p>
							<p style="margin-bottom: 10px; font-weight: 500;">Store Info.</p>
							<select name="stockStatus"
								style="width: 50%; border: none; border-bottom: 2px solid #46675c; color: #46675c; font-weight: 600;">
								<option value="seoul" data-value="${itemStockInfo[0].sws_stock}">${itemStockInfo[0].s_name}</option>
								<option value="daegu" data-value="${itemStockInfo[1].sws_stock}">${itemStockInfo[1].s_name}</option>
							</select>
							<div style="display: flex;">
								<p style="margin-top: 12px;">재고</p>
								<p id="display" class="stockinfo">${itemStockInfo[0].sws_stock }</p>
								<p style="margin-top: 12px;">병</p>
							</div>

							<script>
							  	$(document).ready(function() {
							 		  $('select[name="stockStatus"]').change(function() {
							 		    let dataValue = $('option:selected', this).data('value');
							 		    $('#display').text(dataValue);
							 		  });
							 		}); 
								</script>

							<div class="share_area">
								<button type="button" class="open">공유</button>
								<div class="share_layer">
									<button type="button" class="facebook"
										onclick="share_sns('F');">페이스북으로 공유하기</button>
									<button type="button" class="kakao" onclick="share_sns('K');">카카오로
										공유하기</button>
									<button type="button" class="url" onclick="share_sns('U');">URL로
										공유하기</button>
									<button type="button" class="close">공유하기 레이어 닫기</button>
								</div>
								<script>
		                                $('.share_area .open').on('click', function(){
		                                    $(this).addClass('on');
		                                })
		                                $('.share_area .close').on('click', function(){
		                                    $('.share_area .open').removeClass('on');
		                                })
		                            </script>
							</div>
						</div>

						<ul class="cate_label">
							<li class="label" style="font-size: 15px; font-weight: 700;">품종</li>
							<li class="label"
								style="background: #c2e0b3; height: 22px; padding-top: 5px">${itemInfo.wv_variety_kor }
								(${itemInfo.wv_variety })</li>
						</ul>
						<ul class="cate_label">
							<li class="label" style="font-size: 15px; font-weight: 700;">생산지</li>
							<li class="label"
								style="background: #c2e0b3; height: 22px; padding-top: 5px">${itemInfo.wr_nation_kor}
								(${itemInfo.wr_nation})</li>
							<li class="label"
								style="background: #c2e0b3; height: 22px; padding-top: 5px">${itemInfo.wr_area_kor }
								(${itemInfo.wr_area })</li>
						</ul>
						<ul class="cate_label">
							<li class="label" style="font-size: 15px; font-weight: 700;">생산자</li>
							<li class="label"
								style="background: #c2e0b3; height: 22px; padding-top: 5px"">${itemInfo.wm_maker_kor }
								(${itemInfo.wm_maker })</li>
						</ul>
						<c:choose>
							<c:when test="${ itemInfo.w_alcohol != null }">
								<ul class="cate_label">
									<li class="label"
										style="font-size: 15px; height: 22px; padding-top: 5px; font-weight: 700;">알콜
										도수</li>
									<li class="label"
										style="background: #c2e0b3; height: 22px; padding-top: 5px">${ itemInfo.w_alcohol }</li>
								</ul>
							</c:when>
						</c:choose>

						<div class="price_box"
							style="padding-left: 9px; padding-top: 12px;">
							<p class="price info_box">
								<ins>
									<fmt:formatNumber value="${itemInfo.w_price }" pattern="#,###" />
									</strong>원
								</ins>
								<ins style="color: #46675c;">
									(
									<c:out value="${itemInfo.w_volume }" />
									ml)
								</ins>
							</p>
						</div>
						<sec:authorize access="!isAuthenticated()">
							<button type="button" id="decantingLogOut"
								class="btn_txt btn_black" style="margin-top: 15px;">
								<span>디켄팅북 작성하기</span>
							</button>
						</sec:authorize>
						<sec:authorize access="isAuthenticated()">
							<button type="button" id="decantingLogIn"
								class="btn_txt btn_black" style="margin-top: 15px;">
								<span>디켄팅북 작성하기</span>
							</button>
						</sec:authorize>
						<div class="buy_process" style="z-index: 501;">
							<div class="hide_process"></div>
							<div class="btn_area"
								style="display: flex; justify-content: center;">
								<button type="button" id="insertCart"
									class="btn_txt cart_btn show_btn">장바구니</button>
								<button type="button" id="directPickUp"
									class="btn_txt buy_btn btn_black show_btn">픽업예약</button>
								<!--모바일-->
							</div>
						</div>
						<dl class="details" style="padding: 10px 30px; padding-top: 30px;">
							<dt style="padding-top: 5px;">바디</dt>
							<input type="hidden" id="w_bd" value="${ itemInfo.w_body }" />
							<dd>
								<span class="label" id="w_bd1">가벼움</span> <span class="label"
									id="w_bd2">약간가벼움</span> <span class="label" id="w_bd3">중간</span>
								<span class="label" id="w_bd4">약간무거움</span> <span class="label"
									id="w_bd5">무거움</span>
							</dd>

							<dt style="padding-top: 5px;">당도</dt>
							<input type="hidden" id="w_swt" value="${ itemInfo.w_sweetness }" />
							<dd>
								<span class="label" id="w_swt1">낮음</span> <span class="label"
									id="w_swt2">약간낮음</span> <span class="label" id="w_swt3">중간</span>
								<span class="label" id="w_swt4">약간높음</span> <span class="label"
									id="w_swt5">높음</span>
							</dd>

							<dt style="padding-top: 5px;">산도</dt>
							<input type="hidden" id="w_acdt" value="${ itemInfo.w_acidity }" />
							<dd>
								<span class="label" id="w_acdt1">낮음</span> <span class="label"
									id="w_acdt2">약간낮음</span> <span class="label" id="w_acdt3">중간</span>
								<span class="label" id="w_acdt4">약간높음</span> <span class="label"
									id="w_acdt5">높음</span>
							</dd>

							<dt style="padding-top: 5px;">탄닌</dt>
							<input type="hidden" id="w_tnn" value="${ itemInfo.w_tannin }" />
							<dd>
								<span class="label" id="w_tnn1">약함</span> <span class="label"
									id="w_tnn2">약간약함</span> <span class="label" id="w_tnn3">중간</span>
								<span class="label" id="w_tnn4">약간강함</span> <span class="label"
									id="w_tnn5">강함</span>
							</dd>

							<style>
.style-color {
	background-color: #F6EC9C
}
.cate_label li{
	    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    max-width: 350px;
}
</style>

							<dt style="padding-top: 5px;">아로마</dt>
							<dd style="display: flex; overflow: auto; white-space: nowrap;">
								<c:forEach items="${itemInfo.aromaNameList }" var="aroma">
									<div
										style="display: flex; flex-direction: column; align-items: center;">
										<%-- <span class="label">${aroma.wa_name }</span> --%>
										<span class="label"><img
											style="width: 50px; height: auto;" src="${aroma.wa_img_url }" /></span>
										<span class="label">${aroma.was_name }</span>
									</div>
								</c:forEach>
							</dd>

							<dt style="padding-top: 5px;">음식매칭</dt>
							<dd style="display: flex; overflow: auto; white-space: nowrap;">
								<c:forEach items="${itemInfo.aromaNameList[0].foodNameList }"
									var="food">
									<div
										style="display: flex; flex-direction: column; align-items: center;">
										<%-- <span class="label">${food.wf_name }</span> --%>
										<span class="label"><img
											style="width: 50px; height: auto;" src="${food.wf_img_url }" /></span>
										<span class="label">${food.wfs_name }</span>
									</div>
								</c:forEach>
							</dd>
							<dt style="padding-top: 5px;">음용온도</dt>
							<dd>
								<span class="label"
									style="padding-top: 5px; padding-left: 15px;">${itemInfo.w_temperature }</span>
							</dd>
							<c:choose>
								<c:when test="${ itemInfo.w_ferment  != null }">
									<dt style="padding-top: 5px;">숙성</dt>
									<dd>
										<span class="label">${itemInfo.w_ferment }</span>
									</dd>
								</c:when>
							</c:choose>

						</dl>
					</div>
				</div>

				<div class="tab_area">
					<div class="tab_btn">
						<ul class="tab_btn_area">
							<li>
								<button type="button"
									onclick="RC_Method({page_type:'product_page', behavior: 'user_action', action: 'winery_info'})"
									class="on">
									<span>RELATED PRODUCT</span>
								</button>
							</li>

							<li>
								<button type="button"
									onclick="RC_Method({page_type:'product_page', behavior: 'user_action', action: 'winery_info'})"
									class="">
									<span>DECANTING BOOK(${decantingBookCnt })</span>
								</button>
							</li>
						</ul>
					</div>
					<!-- 비슷한 와인 추천 start -->
					<c:choose>
						<c:when test="${empty relatedProductList}">
							<div class="no-similar-wine">
								<span>비슷한 와인 상품이 없습니다!</span>
							</div>
						</c:when>
						<c:otherwise>
							<div class="tab_con prd_con on">
								<ul class="n_prd_list" id="SimilarWine"
									style="margin-bottom: 60px;">
									<c:forEach items="${relatedProductList }" var="item">
										<li>
											<div class="item" style="margin-bottom: 15px;">
												<div class="main_img">
													<a href="/product/item?w_id=${item.w_id}"
														class="prd_img table_box"> <picture>
														<img src="${item.w_img }" alt=""></picture>
													</a>
													<p class="vivino">
														평균평점<em style="color: #bd0808;">${item.avg_db_rating }</em>
													</p>
													<div class="label_wrap"></div>
												</div>

												<div class="info">
													<div class="more_info">
														<p class="prd_name">
															<span class="en prdname"
																style="overflow: hidden; height: 20px;">${ item.w_name_kor }</span>
															<span class="en" style="overflow: hidden; height: 20px;">${ item.w_name }</span>
														</p>
													</div>
													<%-- <div class="cate_label">
															<span style="background: #F6EC9C">${item.w_type }</span> 
															<span style="background: #c2e0b3">${item.wr_nation_kor }</span> 
														</div> --%>
													<div class="cate_label"
														style="display: flex; align-items: center;">
														<span
															style="background: #E0D8EA; padding: 9px; display: none;"
															id="wine_nation_kor">${item.wr_nation_kor }</span>
														<div style="margin-left: 5px;">
															<!-- <img id="wine_nation_image" src=""> -->
														</div>
														<c:choose>
															<c:when test="${item.wr_nation_kor eq '이탈리아'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/icon_rec_flag_italia.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '프랑스'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/icon_rec_flag_france.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '스페인'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/icon_rec_flag_spain.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '독일'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/icon_rec_flag_germ.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '미국'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/icon_rec_flag_usa.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '칠레'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/icon_rec_flag_chile.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '아르헨티나'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/icon_rec_flag_argentina.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '호주'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/icon_rec_flag_aus.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '남아프리카'}">
																<img
																	style="width: 30px; margin-right: 5px; margin-top: 0px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/south-africa.jpg">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '포르투갈'}">
																<img style="margin-top: 0px;" id="wine_nation_image"
																	src="/resources/asset/images/shop/default/portugal.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '뉴질랜드'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/newzealand.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '오스트리아'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/austria.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '캐나다'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/canada.jpg">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '크로아티아'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/croatia.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '조지아'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/georgia.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '불가리아'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/bulgaria.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '슬로베니아'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/slovenia.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '우루과이'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/uruguai.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '그리스'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/greece.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '루마니아'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/rumania.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '이스라엘'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/israel.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '레바논'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/lebanon.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '몰도바'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/moldova.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '일본'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/japan.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '중국'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/china.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '대한민국'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/korea.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '헝가리'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/hungary.png">
															</c:when>
															<c:when test="${item.wr_nation_kor eq '영국'}">
																<img style="margin-top: 0px; margin-right: 5px;"
																	id="wine_nation_image"
																	src="/resources/asset/images/shop/default/uk.png">
															</c:when>
														</c:choose>

														<input type="hidden" value="${item.w_type }" id="wineType">
														<c:choose>
															<c:when test="${item.w_type eq '레드'}">
																<span
																	style="background: #ffd8d8; padding: 9px; margin-bottom: 0px">${item.w_type }
																	와인</span>
															</c:when>
															<c:when test="${item.w_type eq '로제'}">
																<span
																	style="background: #FFDEC6; padding: 9px; margin-bottom: 0px">${item.w_type }
																	와인</span>
															</c:when>
															<c:when test="${item.w_type eq '화이트'}">
																<span
																	style="background: #f3f5ff; padding: 9px; margin-bottom: 0px">${item.w_type }
																	와인</span>
															</c:when>
															<c:when test="${item.w_type eq '고도주'}">
																<span
																	style="background: #d8d3f6; padding: 9px; margin-bottom: 0px">${item.w_type }
																	와인</span>
															</c:when>
															<c:when test="${item.w_type eq '주정강화'}">
																<span
																	style="background: #d7edff; padding: 9px; margin-bottom: 0px">${item.w_type }
																	와인</span>
															</c:when>
															<c:when test="${item.w_type eq '스파클링'}">
																<span
																	style="background: #d8e6ff; padding: 9px; margin-bottom: 0px">${item.w_type }
																	와인</span>
															</c:when>
														</c:choose>

														<div style="display: flex;">
															<p class="price"
																style="font-size: 13px; margin-left: 7px; font-weight: bold;">
																<ins style="text-decoration: none;">
																	<fmt:formatNumber value="${item.w_price }"
																		pattern="#,###" />
																	</strong>원
																</ins>
															</p>
														</div>
													</div>
												</div>
											</div>
										</li>
									</c:forEach>
								</ul>

								<!-- <div class="btn_area" id="more_button_wine">
								<button type="button" onclick="getList('add')" class="btn_txt">
									<span>더보기</span>
								</button>
							</div> -->
							</div>
						</c:otherwise>

					</c:choose>


					<script>
						//무한 스크롤
						let startIdx = 1;
						let endIdx = 30;
						
				/* 		function addRelatedWineList() {
							let html = "";

							$.ajax({
										url : "/product/sortedAdded2",
										type : "GET",
										data : {
											startIdx : startIdx, //시작 값 고정
											endIdx : endIdx
										},
										beforeSend : function(xhr) {
											let header = $("meta[name='_csrf_header']")
													.attr("content");
											let token = $("meta[name='_csrf']").attr(
													"content");
											xhr.setRequestHeader(header, token);
										},
										success : function(data) {
											//alert("성공");

											for (let i = 0; i < data.length; i++) {
												
												html += "<li>"
												html += "<div class='item' style='margin-bottom: 15px;'>"
													html+="<div class='main_img' >"
														html+="<a href='/product/item?w_id='" + data[i].w_id + "class='prd_img table_box'>"
															html+="<picture><img src='" + { item.w_img } + "' alt=''></picture>"
														html+="</a>"
														html+="<div class='label_wrap'></div>"
													html+="</div>"
													html+="<div class='info'>"
														html+="<div class='more_info'>"
															html+="<p class='prd_name'>"
																html+="<span class='en'>" + data[i].w_name_kor + "</span>"
																html+="<span class='en'>" + data[i].w_name + "</span>"
															html += "</p>"
														html += "</div>"
														html += "<div class='cate_label'>"
														
															html += "<span style='background: #c2e0b3'>" + data[i].w_type + "</span>" 
															html += "<span style='background: #c2e0b3'>" + data[i].wr_nation_kor + "</span>" 
															html += "<span style='background: #c2e0b3'>" + data[i].wr_area_kor + "</span>"
														html += "</div>"
														html += "<div class='price_are'>"
															html += "<p class='price'>"
															html += "<ins>" + data[i].w_price + "</ins>"
															html += "</p>"
														html += "</div>"
													html += "</div>"
												html += "</div>"
											html += "</li>"
											}
											$('#SimilarWine').append(html);
											startIdx += 12;
											endIdx += 12;
										},

										error : function(request, status, error) {
											alert("code:" + request.status + "\n"
													+ "message:" + request.responseText
													+ "\n" + "error:" + error);
										}
									});
						} */
						
						//무한 스크롤
						$(window).scroll(function() {
							const scrT = Math.ceil($(window).scrollTop());
							if (scrT >= $(document).height() - $(window).height() - 1) {
								addRelatedWineList();
							}
						});
						
						</script>
					<!-- 비슷한 와인 추천 end -->
					<hr />

					<!-- 디캔팅 북 start -->
					<div class="css-1li4bvi">
						<div style="display: flex; margin-bottom: 20px;">
							<h2 color="black" overflow="ellipsis" class="css-zr2zhp">디캔팅
								북</h2>
							<h2 class="">
								<!-- 디캔팅 북 별점 평균 -->
								<section class="css-p9g1d2">
									<c:choose>
										<c:when test="${ avgRate == 1 }">
											<div class="css-1w7ldmu">
												<img
													src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
													alt="점수" class="css-1rp9e5o" />
											</div>
										</c:when>
										<c:when test="${ avgRate == 2 }">
											<div class="css-1w7ldmu">
												<img
													src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
													alt="점수" class="css-1rp9e5o" /> <img
													src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
													alt="점수" class="css-1rp9e5o" />
											</div>
										</c:when>
										<c:when test="${ avgRate == 3 }">
											<div class="css-1w7ldmu">
												<img
													src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
													alt="점수" class="css-1rp9e5o" /> <img
													src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
													alt="점수" class="css-1rp9e5o" /> <img
													src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
													alt="점수" class="css-1rp9e5o" />
											</div>
										</c:when>
										<c:when test="${ avgRate == 4 }">
											<div class="css-1w7ldmu">
												<img
													src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
													alt="점수" class="css-1rp9e5o" /> <img
													src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
													alt="점수" class="css-1rp9e5o" /> <img
													src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
													alt="점수" class="css-1rp9e5o" /> <img
													src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
													alt="점수" class="css-1rp9e5o" />
											</div>
										</c:when>
										<c:when test="${ avgRate == 5 }">
											<div class="css-1w7ldmu">
												<img
													src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
													alt="점수" class="css-1rp9e5o" /> <img
													src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
													alt="점수" class="css-1rp9e5o" /> <img
													src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
													alt="점수" class="css-1rp9e5o" /> <img
													src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
													alt="점수" class="css-1rp9e5o" /> <img
													src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
													alt="점수" class="css-1rp9e5o" />
											</div>
										</c:when>
									</c:choose>
									<h2 color="black" overflow="ellipsis" class="css-zr2zhp">(${avgRate })
										· ${ decantingBookCnt }개</h2>
								</section>
							</h2>
						</div>
						<div class="swiper-container myswiper">
							<div class="swiper-wrapper">
								<c:set var="i" value="1"></c:set>
								<c:choose>
									<c:when test="${ not empty decantingList }">
										<c:forEach items="${decantingList}" var="books">


											<section class="css-1bfzjjr swiper-slide">
												<input type="hidden" class="dbid" value="${books.db_id }">
												<div class="css-0" style="width: 400px;">
													<hr color="grayscale20" height="1" class="css-m70di5" />
													<div class="css-1s2hlme">
														<header class="css-15wxbq1">
															<div
																style="display: flex; justify-content: space-between;">
																<div class="css-1mv6tvd"
																	style="display: flex; justify-content: space-between;">
																	<img
																		src="https://hwine.s3.ap-northeast-2.amazonaws.com/profile_imgs/white_grape1.png"
																		alt="사용자 프로필 이미지" width="40" height="40"
																		class="css-10y0g0x"
																		style="border-radius: 50px; width: 60px; height: 60px;" />
																	<div style="margin-left: 10px; text-align: left;">
																		<c:out value="${books.m_nickname }"></c:out>
																		<p color="grayscale100" class="greycolor"
																			style="text-align: left;">${books.db_register_date }</p>
																		<p color="grayscale100" class="css-10mrvz5"></p>
																		<c:choose>
																			<c:when test="${ books.db_rating == 1 }">
																				<div class="css-1ouyxtx">
																					<img
																						src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
																						alt="점수" class="css-1rp9e5o" />
																				</div>
																			</c:when>
																			<c:when test="${ books.db_rating == 2 }">
																				<div class="css-1ouyxtx">
																					<img
																						src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
																						alt="점수" class="css-1rp9e5o" /> <img
																						src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
																						alt="점수" class="css-1rp9e5o" />
																				</div>
																			</c:when>
																			<c:when test="${ books.db_rating == 3 }">
																				<div class="css-1ouyxtx">
																					<img
																						src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
																						alt="점수" class="css-1rp9e5o" /> <img
																						src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
																						alt="점수" class="css-1rp9e5o" /> <img
																						src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
																						alt="점수" class="css-1rp9e5o" />
																				</div>
																			</c:when>
																			<c:when test="${ books.db_rating == 4 }">
																				<div class="css-1ouyxtx">
																					<img
																						src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
																						alt="점수" class="css-1rp9e5o" /> <img
																						src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
																						alt="점수" class="css-1rp9e5o" /> <img
																						src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
																						alt="점수" class="css-1rp9e5o" /> <img
																						src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
																						alt="점수" class="css-1rp9e5o" />
																				</div>
																			</c:when>
																			<c:when test="${ books.db_rating == 5 }">
																				<div class="css-1ouyxtx">
																					<img
																						src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
																						alt="점수" class="css-1rp9e5o" /> <img
																						src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
																						alt="점수" class="css-1rp9e5o" /> <img
																						src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
																						alt="점수" class="css-1rp9e5o" /> <img
																						src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
																						alt="점수" class="css-1rp9e5o" /> <img
																						src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
																						alt="점수" class="css-1rp9e5o" />
																				</div>
																			</c:when>
																		</c:choose>
																	</div>
																</div>
																<div style="display: flex;">
																	<sec:authorize access="isAuthenticated()">
																		<c:choose>
																			<c:when
																				test="${books.f_id  != null  && books.f_status == 1}">
																				<button class="followBtn1" type="button"
																					style="border-radius: 7px; background-color: lightgrey; color: white; width: 80px; height: 35px; margin: auto 0;">팔로잉</button>
																				<input type="hidden" value="1">
																				<input type="hidden" value="${books.f_id}">
																			</c:when>
																			<c:when
																				test="${books.f_id  != null  && books.f_status == 0}">
																				<button class="followBtn1" type="button"
																					style="border-radius: 7px; background-color: #46675c; color: white; width: 80px; height: 35px; margin: auto 0;">팔로우</button>
																				<input type="hidden" value="0">
																				<input type="hidden" value="${books.f_id}">
																			</c:when>
																			<c:otherwise>
																				<button class="followBtn1" type="button"
																					style="border-radius: 7px; background-color: #46675c; color: white; width: 80px; height: 35px; margin: auto 0;">팔로우</button>
																				<input type="hidden" value="-1">
																				<input type="hidden" value="${books.db_id}">
																			</c:otherwise>
																		</c:choose>


																	</sec:authorize>
																</div>
															</div>
														</header>
														<article style="margin-top: 5px;">
															<div class="css-1dty2z6">
																<p color="grayscale50" class="css-xr0jx0">${itemInfo.w_name}</p>
																<p color="grayscale100" overflow="ellipsis"
																	class="css-1mrhgvz">${books.db_content }</p>
															</div>
														</article>
													</div>
												</div>
											</section>
										</c:forEach>
										<script>
							  			
							  			</script>
										<!-- 디캔팅 북 더 보기 카드 하나  -->
										<c:if
											test="${ decantingBookCnt - fn:length(decantingList)  > 0}">
											<section class="css-1bfzjjr swiper-slide">
												<div class="css-0" style="width: 400px;">
													<hr color="grayscale20" height="1" class="css-m70di5" />
													<div class="css-1s2hlme">
														<header class="css-15wxbq1">
															<div
																style="display: flex; justify-content: space-between;">
																<div class="css-1mv6tvd"
																	style="display: flex; justify-content: space-between;"></div>
															</div>
														</header>
														<article style="margin-top: 15px;">
															<div class="css-1dty2z6">
																<h2 class="adsfadsfd" color="grayscale50"
																	style="font-size: large; margin-top: 55px; text-decoration-line: underline; text-align: center;">디캔팅
																	북 ${ decantingBookCnt - fn:length(decantingList) }개 더
																	보기</h2>
															</div>
														</article>
													</div>
												</div>
											</section>
										</c:if>
									</c:when>
								</c:choose>
							</div>
						</div>

						<section class="css-rcqk9j">
							<c:choose>
								<c:when test="${ decantingBookCnt == 0 }">

									<a class="css-1v47xyx" id="moreDB" width="100%"
										style="text-decoration-line: underline;"> <span
										style="margin: 0 auto;">아직 작성된 디캔팅 북이 없습니다!</span>
									</a>
								</c:when>
								<c:when
									test="${ decantingBookCnt - fn:length(decantingList) == 0}">
									<a id="moreDB" class="css-1v47xyx"
										style="text-decoration-line: underline;"> <span
										style="margin: 0 auto;">디캔팅 북 전체보기</span>
									</a>
								</c:when>
								<c:otherwise>
									<a id="moreDB" class="css-1v47xyx"
										style="text-decoration-line: underline;"> <span
										style="margin: 0 auto;">디캔팅 북 ${ decantingBookCnt - fn:length(decantingList) }개
											더 보기</span>
									</a>
								</c:otherwise>
							</c:choose>
						</section>
					</div>
					<!-- 디캔팅 북 end -->
				</div>

			</div>
		</div>
	</div>
	<div class="layer buy_process_layer">
		<div class="display_table">
			<div class="table_cell">
				<div class="layer_area">
					<div class="cart_txt">
						<p>장바구니에 상품이 담겼습니다.</p>
						<p>
							<a href="/mypage/cartList">바로가기</a>
						</p>
					</div>
					<div class="layer_tit">
						<span><c:out value="${itemInfo.w_name_kor}" /></span>
						<button type="button" class="layer_close"
							onclick="commonUI.layer.close()">
							<span>Layer Close</span>
						</button>
					</div>
					<div class="layer_con">
						<!-- <p class="info_txt">빈티지와 용량을 선택하세요.</p> -->
						<div class="border_style">
							<ul>
								<li class="9045" data-product-cd="${itemInfo.w_id}"
									data-base-price="${itemInfo.w_id}" data-product-gb="C"
									data-option-cd1="OPT_1" data-option-cd2="OPT_2"
									data-option-cd3="" data-value-cd1="OPT_1_1"
									data-value-cd2="OPT_2_2" data-value-cd3="" data-option-gb="C"
									data-option-value-nm1="750" data-option-value-nm2="2017"
									data-option-value-nm3="" data-option-price1="0"
									data-option-price2="0" data-option-price3=""
									data-stock-seq="9045" data-mandatory-yn="Y">
									<div class="select_line">
										<div class="checkbox type2">
											<input type="checkbox" id="9045" name="check[]" value="9045"
												autocomplete="off"> <label for="9045">&nbsp;</label>
										</div>
									</div>
									<div class="info_area">
										<div class="volume_line">
											<span><c:out value="${itemInfo.w_volume}"></c:out> ml</span>
											<!-- <span>2017</span> -->
										</div>

										<div class="total_price_line">
											<div>
												<span>상품금액</span>
												<ins class="supply_ins">
													<fmt:formatNumber value="${itemInfo.w_price}"
														pattern="#,###" />
													원
												</ins>
											</div>
											<div class="discount">
												<span>할인금액</span>
												<ins class="sale_ins">0원</ins>
											</div>
											<div class="total">
												<span>총 결제금액</span>
												<ins class="total_ins">
													<fmt:formatNumber value="${itemInfo.w_price}"
														pattern="#,###" />
													원
												</ins>
											</div>
										</div>


										<div class="count_line">
											<div class="quantity type2">
												<button type="button" class="min"
													onclick="change_qty(this, -1, ${itemInfo.w_price}, 0,${itemInfo.w_price} )">빼기</button>
												<input type="text" class="qty" value="1" readonly="">
												<button type="button" class="plus"
													onclick="change_qty(this, 1, ${itemInfo.w_price}, 0,${itemInfo.w_price} )">추가</button>
											</div>
										</div>
									</div>
								</li>

							</ul>
						</div>
						<div class="btn_area col2">
							<button type="button" class="btn_txt btn_black"
								onclick="product_chk('04E381', 'T', '2201');"
								style="width: 100%;">
								<span>픽업예약</span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 리뷰 레이어 (유형 퍼블 추가) -->
	<div class="layer review_img_layer">
		<div class="display_table">
			<div class="table_cell">
				<div class="layer_area">
					<button type="button" class="layer_close"
						onclick="commonUI.layer.close()">
						<span>Layer Close</span>
					</button>
					<div class="layer_tit">리뷰 보기</div>
					<div class="layer_con" id="review_div"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- //리뷰 레이어 (유형 퍼블 추가) -->

	<link rel="stylesheet" type="text/css"
		href="/resources/asset/css/shop/jqcloud.min.css">
	<link rel="stylesheet" type="text/css"
		href="/resources/asset/css/shop/slick.css">
	<link rel="stylesheet" type="text/css"
		href="/resources/asset/css/shop/easyzoom.css">
	<script type="text/javascript" src="/resources/asset/js/jqcloud.min.js"></script>
	<script type="text/javascript" src="/resources/asset/js/slick.min.js"></script>
	<script type="text/javascript" src="/resources/asset/js/easyzoom.js"></script>
	<!-- http://mistic100.github.io/jQCloud/demo.html -->
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script>

// 	리뷰 이미지 레이어 오픈 (유형 퍼블 추가)
    function reviewImgLayer(use_review_seq){
    	
    	Csrf.Set(_CSRF_NAME_); //토큰 초기화
    	$.ajax({
            type: "post",
            url : "/shop/product/review_view_ajax",
            data: {use_review_seq:use_review_seq},
            success : function (res) {
    			if(res != ""){
    				$("#review_div").empty();
    				$("#review_div").append(res);
    
    				commonUI.layer.open('review_img_layer');
    
    				 //리뷰 이미지 레이어 슬라이드
                    $(".review_img_layer .rv_slide").slick({
                        arrows: true,
                        dots: true,
                        infinite: true,
                    });
    			}
            },
            error: function (res) {
                //alert("error");
            }
        });
    }

    //상단 상품 이미지 easyzoom
    $(".zoom_btn").on("click", function() {
        var $easyzoom = $(".easyzoom").easyZoom();
        var api2 = $easyzoom.filter(".easyzoom--with-toggle").data("easyZoom");
        var $zoomImg = $(".zoom_btn_active");
        var $this = $(this);

        if ($this.data("active") === true) {
            $this.removeClass("on").data("active", false);
            api2.teardown();
            $zoomImg.hide();
            
        } else {
            $this.addClass("on").data("active", true);
            api2._init();
            $zoomImg.show();
        }
    });

    $('.sidedish>button').on('click', function(){
        $(this).toggleClass('on');
    })
    

	var withgoodwine	= false;
	var winery			= false;
	var tastingNote		= false;
	var notesort = "best";
	var note_keyword = '';
    var currentUrl = window.location.href;
    var pvIdx = currentUrl.indexOf('product_view')
    currentUrl = currentUrl.slice(pvIdx);

    var tabIdx = currentUrl.indexOf('tab');
    
    $('.black_bg').on('click', function(){
        $('.show_btn').show();
        $('.buy_process_btn').hide();
        $('.buy_process').removeClass('on');
    })

    $('.show_btn').on('click', function(){
        // $('.show_btn').hide();
        $('.buy_process_btn').show();
        $('.buy_process').addClass('on');
    })

    $('.js_select>button').on('click', function(){
        $(this).toggleClass('on')
    });
    
    $('.thumnail_btn_js').on('click', function(){
        $('.thumbnail li').removeClass('on');
        $(this).parent().addClass('on');

        var changeSrc = $(this).find('img').attr('src');
        $('.js_main_img').find('img').attr('src', changeSrc);
    });

    // 비비노 키워드
$(function() {
	var product_cd = '04E381';
	var words = [];	// 키워드 담을 배열
	var mobile_chk = 'MOBILE';
	
	Csrf.Set(_CSRF_NAME_); //토큰 초기화
    $.ajax({
        type: "POST",
        url : "/shop/product/vivino_keyword_ajax",
        data: {product_cd:product_cd},
        success : function (res) {
            if (typeof(res)=="string"){ res = JSON.parse(res); }
			
			if(res.status == "ok"){
				var vivino = res.list;
            	for(var i = 0;i < vivino.length;i++){
            		var tempObj = {};
            		tempObj['text'] = vivino[i]['keyword_kr'];
    				tempObj['weight'] = vivino[i]['score'];
    				tempObj['color'] = vivino[i]['keyword_rgb'];
    				
    				words.push(tempObj);
            	}
				var some_words_with_same_weight = $(".cloud_"+product_cd).jQCloud(words, {
                    width: 334,
                    height: 135
                });
				return false;
			}else{
				if(mobile_chk !== "MOBILE"){
					$(".cloud_"+product_cd).html("<p class='jq_nodata'><span>관련정보가 없습니다.</span></p>");
				}else{	// 모바일일때
					$("#source_a").css("display","none");
					$("#btn_ntc").css("display","none");
				}
				return false;
			}
        },
        error: function (res) {
            //alert("상품 리스트 조회시 에러가 발생했습니다.");
            //alert(res.responseText);
        }
    });
});

	// 슬라이드시 비비노 키워드 호출
	function vivino_keyword(){
		$('.main_img .slider').on('afterChange', function(event, slick, currentSlide){
	    	var product_cd = $(this).data('cd');
	    	 var words = [];	// 키워드 담을 배열
	    	
	    	Csrf.Set(_CSRF_NAME_); //토큰 초기화
	        $.ajax({
	            type: "POST",
	            url : "/shop/product/vivino_keyword_ajax",
	            data: {product_cd:product_cd},
	            success : function (res) {
	                if (typeof(res)=="string"){ res = JSON.parse(res); }
					
					if(res.status == "ok"){
						var vivino = res.list;
	                	for(var i = 0;i < vivino.length;i++){
	                		var tempObj = {};
	                		tempObj['text'] = vivino[i]['keyword_kr'];
	        				tempObj['weight'] = vivino[i]['score'];
	        				tempObj['color'] = vivino[i]['keyword_rgb'];
	        				
	        				words.push(tempObj);
	                	}
	    				var some_words_with_same_weight = $(".cloud_"+product_cd).jQCloud(words, {
	                        width: 334,
	                        height: 135
	                    });
						return false;
					}else{
						console.log("no_list");
						return false;
					}
	            },
	            error: function (res) {
	                //alert("상품 리스트 조회시 에러가 발생했습니다.");
	                //alert(res.responseText);
	            }
	        });
	    });
	};
	function imgAlert(str){
  	  Swal.fire({
  	  html : str
  	  })
  	}
	
	// 차민수 바로구매 새로운 로직
	$("#directPickUp").on("click", function(){
		
		let stock = $("#display").text();
		console.log(stock);
		if (stock == 0) {
			imgAlert("고르신 제품은 해당 매장에서 품절된 상품입니다.");
			return false;
		}
		console.log("바로구매 버튼 클릭");
		let w_id = [];
		w_id.push("${itemInfo.w_id}");
		window.location.href="/order/orderWrite?w_id="+w_id;
	});
	
	// 차민수 장바구니 새로운 로직
	$("#insertCart").on("click", function() {
		
		let w_id = "${itemInfo.w_id}";
		let csrfHeaderName = "${_csrf.headerName}";
		let csrfTokenValue = "${_csrf.token}";
		console.log(w_id);
		
		$.ajax({
			type : 'post',
			url : '/mypage/cartList',
			beforeSend : function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			},
			data : JSON.stringify({
				w_id : w_id
			}),
			contentType : "application/json",
			dataType : "JSON",
			success : function(data) {
				console.log("장바구니 상품 등록 구현");
				if (data.result == 0) {
					console.log("장바구니에 이미 상품 담겨 있음");
					imgAlert("상품이 이미 장바구니에 담겨있습니다.");
				}
				else{
					Swal.fire({
		            html: '상품이 장바구니에 담겼습니다.<br>장바구니로 이동하시겠습니까?',
		            icon: 'question',
		            showCancelButton: true,
		            confirmButtonColor: '#46675c',
		            confirmButtonText: '확인',
		            cancelButtonText: '취소',
		            reverseButtons: true
		        	}).then((result) => {
		           		if (result.isConfirmed) {
		            	    document.location.href="/mypage/cartList";
		                	console.log("장바구니 상품 담김");
		            	}
		        	})
				}
			},
			error:function(request,status,error){
                alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            }
		});
	});
	
	
	//수량 변경
	function change_qty(e, add, sale_price, special_price, supply_price){
		var qty				=	$(e).siblings('.qty').val();		// 현재 개수
		var change			=	parseInt(qty) + parseInt(add);
		var quantity_set_yn =   '';
		var quantity_set	=   1;
		let seoulStock = ${itemStockInfo[0].sws_stock};
		let daeguStock = ${itemStockInfo[1].sws_stock};
		console.log(seoulStock);
		console.log(daeguStock);
		if (seoulStock < daeguStock) {
			  smallerStock = seoulStock;
			  storeName = "${itemStockInfo[0].s_name}";
		} else {
			  smallerStock = daeguStock;
			  storeName = "${itemStockInfo[1].s_name}";
		}
		console.log(smallerStock);
		console.log(storeName);
		let alerted = false;
		if(change<1){
			return false;
		}
		else if (change >= 7) {
			imgAlert('1회 예약 병수는 <b>6병</b> 이내로 픽업예약 가능하며,<br>1일 <b>최대 30병</b>을 초과할 수 없습니다.<br><div id="alertCount"><b>대량주문은 점포로 문의해주세요.</b></div>');
			return false;
		}
		else if (change > smallerStock && !alerted) {
			imgAlert('<b>'+ storeName+ '</b>' + ' 매장에는 재고가 ' + '<b>' + smallerStock +'병</b> 있습니다.<br>주문 시 유의 바랍니다.');
			alerted = true;
		}
		
		$(e).siblings('.qty').val(change);
		quantity_set2	=   '';
		if( quantity_set_yn === 'Y' && change >= quantity_set2){
				$(e).parents("li").find('.supply_ins').text((supply_price*change).toLocaleString()+'원');
				$(e).parents("li").find('.sale_ins').text(( (supply_price*change) - (special_price*change) ).toLocaleString()+'원');
				$(e).parents("li").find('.total_ins').text((special_price*change).toLocaleString()+'원');
			
		}else{
			$(e).parents("li").find('.supply_ins').text((supply_price*change).toLocaleString()+'원');
			$(e).parents("li").find('.sale_ins').text(( (supply_price*change) - (sale_price*change) ).toLocaleString()+'원');
			$(e).parents("li").find('.total_ins').text((sale_price*change).toLocaleString()+'원');
		}
		
		if( $(".qty").hasClass("g_qty") ){
			$(".g_qty").val(change);
		}

	}

	function product_chk(product_cd, iscurr,store, set ='N'){ 
		var varUA = navigator.userAgent.toLowerCase(); //userAgent 값 얻기
		var app_use_yn = "N";
		var c_mandatory	= true;				//조합옵션 필수 체크 변수
		var s_mandatory	= true;				//개별옵션 필수 체크 변수
		var i_mandatory	= true;				//추가옵션 필수 체크 변수
		var qty_set		= true;				
		
		// 웹체크
		if(app_use_yn == "Y"){
            if ( varUA.indexOf('android') > -1) {
                //안드로이드
                alert("구매는 앱에서만 가능합니다.");
                location.href='https://play.google.com/store/apps?utm_source=apac_med&utm_medium=hasem&utm_content=Oct0121&utm_campaign=Evergreen&pcampaignid=MKT-EDR-apac-kr-1003227-med-hasem-ap-Evergreen-Oct0121-Text_Search_BKWS-BKWS%7cONSEM_kwid_43700058439439522_creativeid_477136134430_device_c&gclid=Cj0KCQjw_4-SBhCgARIsAAlegrUySF6V3T6hKmWHrsklb6fWZCpSkFq0X9LOrBd7h0UXrg3BTD9ft5QaAvH5EALw_wcB&gclsrc=aw.ds';
                return false;
            } else if ( varUA.indexOf("iphone") > -1||varUA.indexOf("ipad") > -1||varUA.indexOf("ipod") > -1 ) {
                //ios
                alert("구매는 앱에서만 가능합니다.");
                location.href='https://www.apple.com/kr/ios/ios-15/?&mtid=209254jz40384&aosid=p238&mnid=sEaXwcwi4-dc_mtid_209254jz40384_pcrid_554814771341_pgrid_128369994841_&cid=wwa-kr-kwgo-iphone-Brand-iOS-iOS-';
                return false;
            } else {
                //아이폰, 안드로이드 외
                alert("구매는 앱에서만 가능합니다.");
                location.href='https://play.google.com/store/apps/details?id=com.makeshop.powerapp.pyungan&hl=ko&gl=US';
                return false;
            }
        }
		
		var option_ea = 0;
		if( option_ea > 0 ) {
			
			if($("input[name='check[]']:checked").length < option_ea){
				alert("주문할 상품 옵션을 최소 " + option_ea + "개 이상 선택해주세요.");
				return false;
			}
		}else{ 
			if($("input[name='check[]']:checked").length < 1){
				alert("주문할 상품을 선택해 주세요.");
				return false;
			}
		}

		$('li[data-option-gb="C"]').each(function(idx){
			 if( $(this).data('mandatory-yn') === 'Y'){
				 c_mandatory = false;
			 }
			  return false;
		});

		$('li[data-option-gb="S"]').each(function(idx){
			 if( $(this).data('mandatory-yn') === 'Y'){
				 s_mandatory = false;
			 }
			  return false;
		});

		$('li[data-option-gb="I"]').each(function(idx){
			 if( $(this).data('mandatory-yn') === 'Y'){
				 i_mandatory = false;
			 }
			  return false;
		});

		var product_array = [];

		$("input[name='check[]']:checked").each(function(idx){
			var product_add = 'N';
			var product_info = {};
			product_info.price			=	$('.' + $(this).val() ).data('base-price');				//가격
			product_info.product_cd		=	$('.' + $(this).val() ).data('product-cd');				//상품코드
			product_info.is_mobile		=	commonUI.isMobile;										// 모바일으로 주문 여부
			product_info.qty			=	$('.' + $(this).val() ).find('.qty').val();				// 상품 갯수
			var idx_qty					=   $('.' + $(this).val() ).find('.qty').val();
			product_info.product_gb		=	$('.' + $(this).val() ).data('product-gb');	
			product_info.delivery_gb	=	'A';					//배송 구분
			product_info.order_gb		=   '2201';			//픽업 구분
			product_info.stock_seq		=	$('.' + $(this).val() ).data('stock-seq');	
		
			

			if( product_info.product_gb === 'P'){
				product_info.option_yn = 'N';
			}else if(product_info.product_gb === 'C'){
				product_info.packing		=   $( "#packing_"+ $(this).val() ).val();

				if( c_mandatory === false ){														//조합옵션이 필수일때 체크 유무
					if($('.' + $(this).val() ).data('mandatory-yn') === 'Y'){
						c_mandatory = true;
					}
				}

				product_info.option_yn = 'Y';
				product_info.options = [];
				product_info.options.push({
					'option_cd'		: $('.' + $(this).val() ).data('option-cd1'),
					'option_gb'		: "C",
					'value_cd'		: $('.' + $(this).val() ).data('value-cd1')
				});

				product_info.options.push({
					'option_cd'		: $('.' + $(this).val() ).data('option-cd2'),
					'option_gb'		: "C",
					'value_cd'		: $('.' + $(this).val() ).data('value-cd2')
				});

				if ($('.' + $(this).val() ).data('option-cd3'))
				{
					product_info.options.push({
						'option_cd'		: $('.' + $(this).val() ).data('option-cd3'),
						'option_gb'		: "C",
						'value_cd'		: $('.' + $(this).val() ).data('value-cd3')
					});
				}
				

			}else if(product_info.product_gb === 'I'){

				product_add = 'Y';
				if( !product_array[0]){
					alert('추가 상품외의 상품을 선택하지 않으셨습니다.');
					return false;
				}

				if( i_mandatory === false ){														//조합옵션이 필수일때 체크 유무
					if($('.' + $(this).val() ).data('mandatory-yn') === 'Y'){
						i_mandatory = true;
					}
				}

				product_array[0].options.push({
					'option_gb': 'I', 
					'option_cd': $('.' + $(this).val() ).data('option-cd'),
					'option_nm': $('.' + $(this).val() ).data('option-nm'),
					'value_cd': $('.' + $(this).val() ).data('value-cd'),
					'value_nm': $('.' + $(this).val() ).data('option-value-nm'),
					'option_qty' : product_info.qty,
					'option_price': $('.' + $(this).val() ).data('option-price'),
				});
			
			}else if(product_info.product_gb === 'S'){
				if( s_mandatory === false ){														//조합옵션이 필수일때 체크 유무
					if($('.' + $(this).val() ).data('mandatory-yn') === 'Y'){
						s_mandatory = true;
					}
				}

				product_info.option_yn = 'Y';
				product_info.options = [];
				product_info.options.push({
					'option_cd'		:$('.' + $(this).val() ).data('option-cd'),
					'option_gb'		: "S",
					'option_price'	: $('.' + $(this).val() ).data('option-price'),
					'value_cd'		: $('.' + $(this).val() ).data('value-cd')
				});
			
			}
		
			if (product_add === 'N')
			{
				product_array.push(product_info);
			}
		});

		if( qty_set === false){
			return;
		}

				if( !c_mandatory || !s_mandatory || !i_mandatory ){
			alert('필수 상품을 선택하지 않으셨습니다.');
			return false;
		}
		
		console.log(product_array);
		console.log(set);
		
		// 차민수 작성
		/* if(iscurr == 'F'){
			product.cartProduct(product_array, set);
		}else{
			product.buyProduct(product_array);
		} */
		function imgAlert(str){
	    	  Swal.fire({
	    	  html : str
	    	})
	    }
	    
		// 차민수 작성
		if (iscurr == 'F') {
			let csrfHeaderName = "${_csrf.headerName}";
			let csrfTokenValue = "${_csrf.token}";
			if (product_array[0].qty >= 7) {
				imgAlert('1회 예약 병수는 6병 이내로 픽업예약 가능하며,<br>일 최대 30병을 초과할 수 없습니다.<br><div id="alertCount"><b>대량주문은 점포로 문의해주세요.</b></div>');
				return false;
			}
			else {
				$.ajax({
					type : 'post',
					url : '/mypage/cartList',
					beforeSend : function(xhr) {
						xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
					},
					data : JSON.stringify({
						w_id : product_array[0].product_cd,
						cw_quantity : product_array[0].qty
					}),
					contentType : "application/json",
					dataType : "JSON",
					success : function(data) {
						console.log("장바구니 상품 등록 구현");
						$(".cart_txt").slideDown('300');
						 setTimeout(function() {
						  $(".cart_txt").slideUp('300');
						}, 2000);
					},
					error:function(request,status,error){
		                alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		            }
				});
			}
			
		}
		else {
			let w_id = [];
			let quantity = [];
			w_id.push(product_array[0].product_cd);
			window.location.href="/order/orderWrite?w_id="+w_id;
		}
		
	
	}

	/*공유 및 URL 복사*/
	var img_url = "";
    if(img_url !== ''){
        img_url = 'https://www.winenara.com/uploads/product/';
    }
	 Kakao.init('b129fd9215e06b4366c1a76b2c37d98b');
    function share_sns(e){
		RC_Method({page_type:'product_page', behavior: 'user_action', action: 'sharing'});
        var url = window.document.location.href;
        if(e == 'U'){
            var textarea = document.createElement("textarea");
            document.body.appendChild(textarea);
            textarea.value = url;
            textarea.select();
            document.execCommand("copy");
            document.body.removeChild(textarea);
            alert("URL이 복사되었습니다.");
        }else if(e == 'F'){
            window.open( 'http://www.facebook.com/sharer.php?u=' + encodeURIComponent(url) );
        }else if(e == 'K'){
			
           
            Kakao.Link.sendDefault({
                objectType: 'feed',
                content: {
                    title: '베니카 트레 비니스',
                    description: "세가지 다른 품종의 개성이 잘 담겨있으면서도 서로 완벽한 조화를 이루는 화이트 와인. 콜리오 지역 화이트의 특색이 잘 담긴 클래식한 와인. ",
                    imageUrl:'https://www.winenara.com/uploads/product/c5729ae85ce559950658fb4487df567d.png',
                    link: {
                        mobileWebUrl: 'https://www.winenara.com/shop/product/product_view?product_cd=04E381',
                        webUrl:'https://www.winenara.com/shop/product/product_view?product_cd=04E381',
                    },
                },
                buttons: [
                    {
                    title: '웹으로 이동',
                    link: {
                        mobileWebUrl: 'https://www.winenara.com/shop/product/product_view?product_cd=04E381',
                        webUrl : 'https://www.winenara.com/shop/product/product_view?product_cd=04E381',
                    },
                    },
                ]
            });
        }
    }

$("#js_select").on( "change", function() {
	getwineryList('init');
});

/*동일 와이너리 상품*/
var winerypage;
var product_local_cd = $("#product_local_cd").text().trim();
var product_make_company = "";

function getwineryList(mode){

	if( mode=="init"){
		winerypage = 1;
	}else{
		winerypage += 1;
	}

	console.log(winerypage);
	
    $.ajax({
        type: "get",
        url : "/shop/product/wineryrWine",
        data: { 'page' : winerypage, 'product_make_company' : product_make_company, 'sh_order_by':$("#js_select option:selected").val(), 'mode' : mode},
        success : function (res) {
			if(!res){
				console.log('마지막 페이지입니다.');
				// $("#more_winery_wine").hide();
                window.removeEventListener('scroll', moreShowList);

				if(mode === 'init'){
					var html = "<li class='nodata'>데이터가 없습니다.</li>";
					$("#wineryrWine").append(html);
				}

			}else{
				if(mode == "add"){
					$("#wineryrWine").append(res);
				}else{
					$("#wineryrWine").html(res);
				}
			}

            $('.main_img .slider').not('.slick-initialized').slick({
                dots: true,
                arrows: true
            });
            
            vivino_keyword();
        },
        error: function (res) {
            //alert("error");
        }
    });
}
/*동일 와이너리 상품*/
/*시음노트*/
function getNoteList(mode){

	$.ajax({
        type: "get",
        url : "/shop/product/NoteWine",
        data: { 'product_cd' : product_cd, 'mode' : mode, 'keyword' : note_keyword },
        success : function (res) {
			if(res){
				$(".tasting_note").empty();
				$(".tasting_note").append(res);
			}
        },
        error: function (res) {
            //alert("error");
        }
    });
}

/*시음노트*/
function like(use_review_seq){
	
	Csrf.Set(_CSRF_NAME_); //토큰 초기화
	$.ajax({
		type: "POST",
		url:"/shop/mypage/action/proc",
		data : {
			'mode'				: "L",
			use_review_seq		: use_review_seq
		},
		success : function(result){
			$(".tasting_note").empty();
			getNoteList(notesort);
		},
		error : function(a, b, c){
			//alert('오류가 발생했습니다.');
		}
	});
	
}

function unlike(use_review_seq){
	Csrf.Set(_CSRF_NAME_); //토큰 초기화
	$.ajax({
		type: "POST",
		url:"/shop/mypage/action/proc",
		data : {
			'mode'				: "UL",
			use_review_seq		: use_review_seq
		},
		success : function(result){
			$(".tasting_note").empty();
			getNoteList(notesort);
		},
		error : function(a, b, c){
			//alert('오류가 발생했습니다.');
		}
	});
}

function followEvent(follow_id, follow_target_seq){
	Csrf.Set(_CSRF_NAME_); //토큰 초기화
	$.ajax({
		type: "POST",
		url:"/shop/mypage/action/proc",
		data : {
			'mode'				: "F",
			'follow_id'			: follow_id,
			follow_target_seq	: follow_target_seq
		},
		success : function(result){
			$(".tasting_note").empty();
			getNoteList(notesort);
		},
		error : function(a, b, c){
			alert('삭제 중 오류가 발생했습니다.');
		}
	});
	
}

/*시음노트 정렬*/
$(document).ready(function(){ 
	$('.js_select li').click(function(){ 
		$('.js_select_btn li button').removeClass('on');
		$(this).children().addClass('on');
		if( $(this).index() === 0 ){
			$(".sort_btn").text("베스트순");
			notesort  = "best";
			getNoteList(notesort);
		}else if($(this).index() === 1){
			$(".sort_btn").text("최신등록순");
			notesort  = "new";
			getNoteList(notesort);
		}else if($(this).index() === 2){
			$(".sort_btn").text("높은 별점 순");
			notesort  = "point_high";
			getNoteList(notesort);
		}else if($(this).index() === 3){
			$(".sort_btn").text("낮은 별점 순");
			notesort  = "point_low";
			getNoteList(notesort);
		}
	})

    $("#header .top").addClass('mb_hidden');
    $("#header .bottom").addClass('mb_hidden');
    $("#contents").addClass('mb_margin_0');
        
    if(tabIdx !== -1){
        var currentTab = currentUrl.substr(tabIdx+4);
        currentUrl = currentUrl.slice(0, tabIdx-1);
        tabFn(currentTab);
    }

    $('.tab_area .tab_btn_area button').on('click', function(){
        var parentIdx = $(this).parent().index();
        tabFn(parentIdx);
    });
})

function noteSearch(){
	note_keyword = $("#note_keyword").val();
	getNoteList(notesort);
}
/*시음노트 정렬*/


function moreShowList(idx) {
// 	if((window.innerHeight + window.pageYOffset) >= document.querySelector("body").offsetHeight - window.innerHeight) {
    if ($(window).scrollTop() >= $(document).height() - ($(window).height() * 2.3 )) {
        if(wineryScroll){
            getwineryList('add');
        }else{
//             getList('add');
        }
    }
}

var wineryScroll = false;

function tabFn(idx){
    var parentIdx = Number(idx);
    //history.pushState(null, null, currentUrl+'&tab='+parentIdx); 함께보면좋은와인 에러나서 사용x

    // 페이지 로딩 최적화하기 위해 사용(사용자가 보지 않는 컨텐츠라면 리스트 호출 x, 최초 클릭시에만 실행 )
    wineryScroll = false;

    if( parentIdx === 2 && withgoodwine === false ) {
        // 함께 보면 좋은 와인
        window.removeEventListener('scroll', moreShowList);

//         getList('init');
        withgoodwine = true;
		
            
        window.addEventListener('scroll', moreShowList);
        
    }else if(  parentIdx === 3 && winery === false ){
        window.removeEventListener('scroll', moreShowList);

        // 동일 와이너리 상품
        getwineryList('init');
        winery = true;

        wineryScroll = true;
		 window.addEventListener('scroll', moreShowList);
        
    }else if(  parentIdx === 4 && tastingNote === false ){
        // 시음노트
        getNoteList(notesort);
        tastingNote = true;
    }else{
        console.log('?!!')
    }

    $('.tab_area .tab_btn_area button').removeClass('on');
    $('.tab_area .tab_btn_area button').parent().eq(parentIdx).find('button').addClass('on');

    var newBox = $('.tab_area .tab_con').eq(parentIdx);
    
    $('.tab_con.prd_con .main_img .slider').slick('unslick');
    $('.tab_area .tab_con').removeClass('on');
    newBox.addClass('on');
    
    // console.log(newBox);

    $(newBox).find('.main_img .slider').not('.slick-initialized').slick({
		lazyLoad: 'ondemand',
        dots: true,
        arrows: true
    });
}
//test
function chklayer(){
	//바로구매시 첫번째 상품 체크
	var i = 0;
	$('input:checkbox[name="check[]"]').each(function() {
		if(i===0 && $(this).is(":disabled")===false ){
			this.checked = true;
		}
		 
		i++;
	});

	 
		commonUI.layer.open('buy_process_layer');
	}


//리뷰
var tr_page;
getTastingReview('init');

function getTastingReview(mode){
	if( mode=="init"){
		tr_page = 1;
		$('#tasting_page').val(1);
	}else{
		//page += 1;
		tr_page = parseInt($('#tasting_page').val())+1;
	}

	$.ajax({
        type: "get",
        url : "/shop/product/tasting_view_ajax",
        data: {'mode' : mode, 'page' : tr_page, product_cd: '04E381'},
        success : function (res) {
			if($.trim(res) == ""){
				alert('마지막 페이지입니다.');
				
				return;
			}else{
				if(mode == 'init'){
					$(".tasting_review_lists").empty();
				}else{
					scrollVal=true;
					$('#tasting_page').val(parseInt($('#tasting_page').val())+1);
				}

				$(".tasting_review_lists").append(res);
				
				$(".tasting_review_lists>li").each(function(index, item){
					var rvImgLi = $(this).find("li").length;

					if(rvImgLi >= 5){
						$(this).find(".img").children().addClass("more");
					}
				});

			}
        },
        error: function (res) {
            //alert("error");
        }
    });
}

</script>

	<!--백로그 API-->
	<script type="text/JavaScript">

var cmd='';
if( cmd.length>2 ) {
	console.log(cmd);
	console.log('적재');
	RC_Method({
		sign_up_data: "",
		page_type:"product_view", 
		behavior:"page_view",
		extra : {
			list_type: cmd,
			product_id: '04E381'
		}
	});
}else{
	console.log('product_view');
	//중복 전달 방지하기 위해 푸터부분은 예외로 둠
	RC_Method({
		sign_up_data: "",
		page_type : 'product_view', 
		behavior:"page_view"
	});
}
	
</script>
</section>
<!-- //contents -->

<script language="javascript">    
    $(window).on('load resize', function(){
        if($(window).width() < 1023){
            var main_scroll_Event = (function(){
                // console.log(1);
                var $body = $("body");
                var $quickMenu = $("#footer .quick_menu");

                function _downEvent(){
                    // console.log(2);
                    $quickMenu.fadeOut();
                }

                function _upEvent(){
                    // console.log(3);
                    $quickMenu.fadeIn();
                }

                function _touch_event_binding(){
                    var startX = null;
                    var startY = null;

                    $body.bind("touchstart",function(e){
                        //console.log("touch start");
                        startY = e.originalEvent.touches[0].screenY;
                    });

                    $body.bind("touchend",function(e){
                        //console.log("touch end");
                        var lastY = e.originalEvent.changedTouches[0].screenY;
                        yMove = startY - lastY;

                        if(yMove < -50){
                            //console.log('Up');
                            _upEvent();
                            return false;
                        }else if(yMove > 50){
                            //console.log('Down');
                            _downEvent();
                            return false;
                        }
                    });
                }

                function _srcoll_event_binding(){
                    $body.on("mousewheel DOMMouseScroll", function(event){
                        var whellDownCheck = event.originalEvent.wheelDelta || -(event.originalEvent.detail);

                        if(whellDownCheck > 0){
                            //console.log('Up');
                            _upEvent();
                            return false;
                        }else if(whellDownCheck < 0){
                            //console.log('Down');
                            _downEvent();
                            return false;
                        }
                    });
                }

                _touch_event_binding();
                _srcoll_event_binding();
            })();
        }else{
            $("body").off();
            $("#footer .quick_menu").off();
        }
    });
</script>

<script type="text/JavaScript">
	var page = 'product_view';
	if( page == false){
		page = 'main';
	}
	
	if( page !== 'product_view' && page !== 'order_ok'){
		console.log(page);
		/*
			RC_Method({
				sign_up_data: "",
				page_type : page, 
				behavior:"page_view"
			});
			*/
	}
</script>
<!--백로그 API-->
<!--lazy_loading-->
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/lozad/dist/lozad.min.js"></script>
<script>
	const observer = lozad();
	observer.observe();
</script>
<style>
.layerPop {
	background: #fff;
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
	transition: all 600ms cubic-bezier(0.86, 0, 0.07, 1);
	top: 100%;
	position: fixed;
	left: 0;
	overflow: scroll;
}

.layerUp {
	top: 0;
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
</style>
<!--lazy_loading-->
<section id="popupLayer" class="layerPop" style="margin-top: 0px;">
	<button type="button" class="layer_close"
		onclick="commonUI.layer.close()">
		<span>Layer Close</span>
	</button>
	<div class="decantingbook">
		<div class="followtitle">${itemInfo.w_name_kor }의전체 디켄팅북</div>
		<img src="/resources/asset/icons/loading.gif" class="loadingIcon">

	</div>
	<section class="css-rcqk9j">
		<a class="css-1v47xyx" id="moreFollow"
			style="text-decoration-line: underline; width: 90%; margin: 0 auto">
			<span style="margin: 0 auto;">더 보기</span>
		</a>
	</section>
</section>

</body>

<script>
		$(document).ready(function(){
			let sssweetness = $("#w_swt").val(); 	
			$("#w_swt" + sssweetness).prop('style', "background: #c2e0b3; padding-top: 5px; height: 22px;");
		
			let aaacidity = $("#w_acdt").val();
			$("#w_acdt" + aaacidity).attr('style', "background: #c2e0b3; padding-top: 5px; height: 22px;");		
			
			let bbbody = $("#w_bd").val();
			$("#w_bd" + bbbody).attr('style', "background: #c2e0b3; padding-top: 5px; height: 22px;");
			
			let tttannin = $("#w_tnn").val();
			$("#w_tnn" + tttannin).attr('style', "background: #c2e0b3; padding-top: 5px; height: 22px;");
		});
		</script>
</html>
