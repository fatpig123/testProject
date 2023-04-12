<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
</head>
<style>
body {
	padding: 0;
	margin: 0;
	overflow-x: hidden;
}

.topArea {
	width: 100%;
	background-color: #46675c;
	height: 210px;
}

.topArea .title {
	height: 100%;
	width: 50%;
	position: relative;
}

.topArea .title .name {
	display: block;
	margin: auto 0;
	font-size: 30px;
	color: white;
	position: absolute;
	top: 32%;
	left: 22px;
	font-weight: 500;
}

.topArea .title .titlename {
	display: block;
	margin: auto 0;
	font-size: 30px;
	color: white;
	position: absolute;
	left: 22px;
	top: 48%;
	font-weight: 500;
}

.topArea .sketch {
	display: block;
	position: absolute;
	right: 12px;
	top: 190px;
	width: 98px;
	height: 200px;
	top: 190px;
	width: 240px;
}

.sketch img {
	height: 230px;
	width: 241px;
}

.wineCategory {
	width: 100%;
	background-color: white;
	height: 45px;
	display: flex;
	overflow: auto;
	margin-left: 20px;
	margin-right: 20px;
}

.wineCategory {
	-ms-overflow-style: none; /* IE and Edge */
	scrollbar-width: none; /* Firefox */
}

.wineCategory::-webkit-scrollbar {
	display: none; /* Chrome, Safari, Opera*/
}

.wineCategory .category {
	height: 100%;
	display: flex;
}

.wineCategory .category span {
	text-align: center;
	margin: auto 0;
	font-size: 17px;
	opacity: 0.5;
	white-space: nowrap;
	margin-right: 20px;
}

.wineCategory .category .on {
	opacity: 1;
	font-weight: bold;
}

.seperator {
	width: 100%;
	background-color: lightgrey;
	height: 7px;
}

.filterLayer {
	width: 100%;
	background-color: white;
	height: 47px;
	border-bottom: 1px solid lightgrey;
	position: relative;
}

.filterLayer .cntArea {
	position: absolute;
	left: 20px;
	margin-top: 15px;
	opacity: 0.5;
	font-size: 16px;
}

.filterLayer .filterArea {
	height: 70%;
	width: 25%;
	position: absolute;
	right: 8px;
	margin-top: 8px;
}

.filterLayer .filterArea .filter {
	height: 100%;
	width: 100%;
	line-height: 32px;
	border: 1px solid lightgray;
}

.books {
	padding: 20px;
	padding-top: 0;
}

.books .sadIcon {
	height: 100px;
	position: absolute;
	top: 10%;
	right: 42%;
}

.books .noBook {
	position: absolute;
	top: 70%;
	right: 20%;
	transform: translate(-50%, -50%);
}

.book {
	position: relative;
	margin-top: 20px;
	display: flex;
	height: 200px;
	border-bottom: 1px solid gray;
	display: flex;
}

.book .wine_img {
	display: flex;
	flex-direction: row;
	width: 30%;
}

.book .wine_img img {
	width: 100%;
	height: 180px;
	margin: auto 0;
}

.book .wine_desc {
	display: flex;
	flex-direction: column;
	width: 70%;
}

.book .wine_desc div {
	font-size: 15px;
}

.book .wine_desc .regDate {
	color: #46675c;
	font-size: 13px;
}

.book .wine_desc .wineName {
	margin-top: 10px;
}

.book .wine_desc .wineEngName {
	margin-top: 5px;
	font-size: 11px;
	color: gray;
}

.book .wine_desc .wineStarDesc {
	margin-top: 30px;
	color: #46675c
}

.book .wine_desc .wineStars .wineStar {
	color: #46675c
}

.swiper-pagination-bullet-active-main {
	background: #46675c
}

.swiper-pagination {
	bottom: -15px !important;
}
</style>
<div class="topArea" style="position: relative;">
	<div class="title">
		<c:choose>
			<c:when test="list == null">
				<span class="name"> ${name }의 </span>

			</c:when>
			<c:otherwise>
				<span class="name"> ${bookList[0].m_nickname }의 </span>
			</c:otherwise>
		</c:choose>

		<span class="titlename">디켄팅 북</span>

	</div>
	<div class="sketch" style="top: -30px;">
		<img src="/resources/asset/icons/wine_sketch.png">
	</div>
</div>
<style>
.interesting {
	padding: 30px 20px;
}

.analysis {
	display: flex;
	flex-direction: column;
	padding: 20px;
}

.analysisBox {
	display: flex;
	margin-bottom: 10px;
}

.abox {
	border-right: 2px solid lightgray;
	width: 100%;
	text-align: center;
	display: flex;
	flex-direction: column;
}

.abox * {
	margin: 8px;
}

.followB {
	border-radius: 10px;
	background: #46675c;
	width: 100%;
	height: 50px;
	margin: 0 auto;
	color: white;
	font-size: 18px;
	border: 2px solid #46675c;
}

.bothLike {
	margin: 30px 0;
	overflow: visible;
}

.bothLike span {
	padding-top: 2px;
}

.bothDislike {
	border-top: 1px solid lightgray;
	padding: 10px 0;
	margin-top: 25px;
	overflow: visible;
}

.bothDislike span {
	padding-top: 2px;
}

.wineList {
	margin: 10px 0;
}

.wineChart {
	padding: 20px;
}

.swiper-wrapper {
	height: 180px;
}
</style>
<div class="analysis">
	<div class="analysisBox">
		<div class="abox">
			<strong>디켄팅 북 수</strong> <span>${reviewNum }</span>
		</div>
		<div class="abox">
			<strong>팔로우 수</strong> <span>${followVO.follow_cnt }</span>
		</div>
		<div class="abox" style="border: none;">
			<strong>팔로워 수</strong> <span>${followVO.follower_cnt }</span>
		</div>
	</div>
	<div class="followBox">
		<sec:authorize access="isAuthenticated()">
			<c:choose>
				<c:when test="${db_id == null }">

				</c:when>
				<c:when test="${followVO.f_id == null }">
					<button type="button" class="followB followBtn">팔로우</button>
					<input type="hidden" value="-1" />
					<input type="hidden" value="${db_id }">
				</c:when>
				<c:when test="${followVO.f_status == 1 }">
					<button type="button" class="followB followBtn">팔로잉</button>
					<input type="hidden" value="1" />
					<input type="hidden" value="${followVO.f_id }">
				</c:when>
				<c:otherwise>
					<button type="button" class="followB followBtn">팔로우</button>
					<input type="hidden" value="${followVO.f_status }" />
					<input type="hidden" value="${followVO.f_id }">
				</c:otherwise>
			</c:choose>
		</sec:authorize>
		<sec:authorize access="isAnonymous()">
			<button type="button" class="followB"
				onclick="location.href='/login'">팔로우</button>
			<input type="hidden" value="" />
			<input type="hidden" value="">
		</sec:authorize>
	</div>
</div>
<div class="seperator"></div>
<style>
.interesting strong {
	font-size: 20px;
	font-weight: bold;
}
.chartTitle{
    font-size: 20px;
    font-weight: bold;
}
.wineChart{
	position: relative;
}
</style>

<div class="wineChart" style="width: 100%;">
	<div class="chartTitle">와인 취향</div>
	<div class="Chart">
		<canvas id="myChart" style="width: 100%; margin: 0 auto;"></canvas>
	</div>
</div>

<div class="seperator"></div>
<div class="interesting  ">
	<strong>흥미로운 사실</strong>
	 <c:if test="${ blList != null}">
		<div class="bothLike swiper">
			<span>취향이 같은 와인</span>
			<div class="wineList swiper-wrapper">
				<c:forEach items="${blList }" var="bl">
					<div class="wineBrief swiper-slide">
						<img src="${bl.w_img }"> <span>${bl.w_name_kor }</span>
					</div>
				</c:forEach>
			</div>
			<div class="swiper-pagination"></div>

		</div>
	</c:if>
	<c:if test="${ brList != null}">
		<div class="bothDislike swiper">
			<span>취향이 같을 만한 와인</span>
			<div class="wineList swiper-wrapper">
			<c:forEach items="${brList }" var="br">
				<div class="wineBrief swiper-slide">
					<img src="${br.w_img }"> <span>${br.w_name_kor }</span>
				</div>
			</c:forEach>
			</div>
			<div class="swiper-pagination"></div>
		</div>
	</c:if>
	<c:if test="${ rList != null}">
		<div class="bothDislike swiper">
			<span>취향이 같을 만한 와인</span>
			<div class="wineList swiper-wrapper">
				<c:forEach items="${rList }" var="rl">
					<div class="wineBrief swiper-slide">
						<img
							src="${rl.w_img }">
						<span>${rl.w_name_kor }</span>
					</div>
				</c:forEach>
			</div>
			<div class="swiper-pagination"></div>
		</div>
	</c:if>


</div>
<div class="seperator"></div>
<div class="wineCategory">
	<div class="category">
		<span class="on">전체</span>
	</div>
	<div class="category">
		<span>레드</span>
	</div>
	<div class="category">
		<span>스파클링</span>
	</div>
	<div class="category">
		<span>화이트</span>
	</div>
	<div class="category">
		<span>로제</span>
	</div>
	<div class="category">
		<span>주정강화</span>
	</div>
	<div class="category">
		<span>고도주</span>
	</div>
	<div class="category" style="margin-right: 20px">
		<span>기타</span>
	</div>
</div>
<div class="seperator"></div>
<div class="filterLayer">
	<c:if test="${list.length != 0}">
		<span class="cntArea"> ${reviewNum } 개의 디켄팅북 </span>
	</c:if>
	<div class="filterArea">
		<select class="filter">
			<option>최신순</option>
			<option>가나다순</option>
			<option>평점순</option>
			<option>5점</option>
			<option>4점</option>
			<option>3점</option>
			<option>2점</option>
			<option>1점</option>
		</select>
	</div>


</div>

<div class="books">
	<c:choose>
		<c:when test="${!bookList.isEmpty() }">
			<c:forEach items="${ bookList}" var="book">
				<div class="book">
					<div class="wine_img">
						<img src="${book.w_img }">
					</div>
					<div class="wine_desc">
						<div class="regDate">작성일 ${book.db_register_date }</div>
						<div class="wineName">${book.w_name_kor }</div>
						<div class="wineEngName">${book.w_name }</div>
						<div class="wineStarDesc">이 와인의 별점!</div>
						<div class="wineStars">
							<c:forEach begin="1" end="${book.db_rating }">
								<img src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
									alt="점수" class="wineStar">
							</c:forEach>
							<c:forEach begin="${book.db_rating +1}" end="5">
								<img src="/resources/asset/icons/ic_16_toggle_star_line.webp"
									alt="점수" class="wineStar">
							</c:forEach>
						</div>

					</div>
				</div>
				<input type="hidden" value="${book.db_id }">
			</c:forEach>
		</c:when>
		<c:otherwise>
			<div class="book">
				<img class="sadIcon" src="/resources/asset/icons/sad_icon.png">
				<span class="noBook">작성된 디켄팅 북이 없습니다</span>
			</div>
		</c:otherwise>
	</c:choose>
</div>

<script>
const ctx = document.getElementById('myChart');

new Chart(ctx, {
  type: 'radar',
  data: {
    labels:  ['평점','당도', '산도', '탄닌', '바디']
	,

    datasets: [
    	<c:if test="${HAvg != null}">
    {
      label: 'H-믈리의 평균',
      data: [ ${HAvg.rateAvg},${HAvg.sweetAvg}, ${HAvg.acidAvg}, ${HAvg.tanninAvg}, ${HAvg.bodyAvg}],
      borderWidth: 2,
      borderColor : 'rgba(70, 103, 92,1)',
      pointBorderColor : 'rgba(70, 103, 92,1)',
      backgroundColor : 'rgba(70, 103, 92,0.5)'
    },

    </c:if>
    <c:if test="${MyAvg != null}">
     {
        label: '내 평균',
        data: [${MyAvg.rateAvg},${MyAvg.sweetAvg}, ${MyAvg.acidAvg}, ${MyAvg.tanninAvg}, ${MyAvg.bodyAvg}],
        borderWidth: 2,
        borderColor : '#edc5e0',
        pointBorderColor : 'rgba(237, 197, 224,1)',
        backgroundColor : 'rgba(237, 197, 224,0.5)',
            font: {
            	family: 'GmarketSansMedium',
              	size: 18
            }
      }
     </c:if>
     ]
    
    
  },
  options: {
	  responsive: false,
	   scales: {
	        r: {
	            suggestedMin: 0,
	            suggestedMax: 5,
				  ticks: {
				      stepSize: 1
				  },
			        pointLabels: {
			            display: true,
			            font: {
			            	family: 'GmarketSansMedium',
			              	size: 18
			            }
			          }
	        },

	    },
		
  }
});

	const swiper = new Swiper('.swiper', {
	      slidesPerView: 4,
	      spaceBetween: 10,
	      pagination: {
	          el: ".swiper-pagination",
	          dynamicBullets: true,
	        },
		});
	let start = 1 + parseInt("${bookList.size() }");
	let ctgr = "-";
	let DBsort = 0;
	const rnum = 10;
/* 	DBsort
	0 : 최신순
	1 : 가나다순
	2 : 평점순
	3 : 5점
	4 : 4점
	5 : 3점
	6 : 2점
	7 : 1점 */
	function sortEncode(d){
		if(d == "최신순"){
			DBsort = 0;
		}
		else if(d == "가나다순"){
			DBsort = 1;
		}
		else if(d == "평점순"){
			DBsort = 2;
		}
		else if(d == "5점"){
			DBsort = 3;
		}
		else if(d == "4점"){
			DBsort = 4;
		}
		else if(d == "3점"){
			DBsort = 5;
		}
		else if(d == "2점"){
			DBsort = 6;
		}
		else if(d == "1점"){
			DBsort = 7;
		}
		else {
			DBsort = 0;
		}
	}

		$(document).ready(function(){
			let scrollStop = 0;
			$('#Allcontents').scroll(function(e) {
				var elem = $("#Allcontents");
			    if(elem[0].scrollHeight - elem.scrollTop() - 10 <= elem.outerHeight() && scrollStop != 1) {
			    	$('.books').append(`<img src="/resources/asset/icons/loading.gif" class="loadingIcon">`);
			    	let html = "";
			    	sortEncode($('.filter').val());
			    	$.ajax({
						type: 'get',
						dataType: 'json',
						url: '/decanting/newBookList',
						data:{
							start : start,
							db_id : "${bookList[0].db_id}",
							ctgr : ctgr,
							sort : DBsort
						},
						context : this,
	/* 					beforeSend : function(xhr) {
							let header = $("meta[name='_csrf_header']")
									.attr("content");
							let token = $("meta[name='_csrf']").attr(
									"content");
							xhr.setRequestHeader(header, token);
						}, */
						success:function(data){
							start += 1
							if(data.length < rnum){
								scrollStop = 1;
							}
								for(let i = 0;i < data.length;i++){
									html += `<div class="book">
										<div class="wine_img">
										<img src="\${data[i].w_img}">
									</div>
									<div class="wine_desc">
										<div class="regDate">작성일 \${data[i].db_register_date }</div>
										<div class="wineName">\${data[i].w_name_kor }</div>
										<div class="wineEngName">\${data[i].w_name }</div>
										<div class="wineStarDesc">이 와인의 별점!</div>
										<div class="wineStars">`;
										for(let j = 0; j < data[i].db_rating; j++){
											html += `<img src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
												alt="점수" class="wineStar">`;
										};
										for(let j = data[i].db_rating; j < 5; j++){
											html += `<img src="/resources/asset/icons/ic_16_toggle_star_line.webp"
												alt="점수" class="wineStar">`;
										};
									html += `</div>

									</div>
								</div>
								<input type="hidden" value="\${data[i].db_id }">`
								}
								$('.books').append(html);
								$('.loadingIcon').remove();
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
			});
			$('.category').on('click',function(){
				start = 1;
				scrollStop = 0;
				let ctgrtmp = ctgr
				$('.filter').find('option:first').prop('selected', 'true');
				sortEncode($('.filter').val());
				let html = "";
				ctgr = $(this).children('span').text();
				if(ctgr == "전체"){
					ctgr = "-";
				}
				$.ajax({
					type: 'get',
					dataType: 'json',
					url: '/decanting/newBookList',
					data:{
						start : start,
						db_id : "${bookList[0].db_id}",
						ctgr : ctgr,
						sort : DBsort
					},
					context : this,
/* 					beforeSend : function(xhr) {
						let header = $("meta[name='_csrf_header']")
								.attr("content");
						let token = $("meta[name='_csrf']").attr(
								"content");
						xhr.setRequestHeader(header, token);
					}, */
					success:function(data){
						if(data == ""){
						    Swal.fire({
							      text: '해당하는 디켄팅북이 없습니다',
							      icon: 'warning',
							      confirmButtonColor: '#46675c',
							      confirmButtonText: '확인'
							    })
							    ctgr = ctgrtmp;
						}
						else{
							for(let i = 0;i < data.length;i++){
								html += `<div class="book">
									<div class="wine_img">
									<img src="\${data[i].w_img}">
								</div>
								<div class="wine_desc">
									<div class="regDate">작성일 \${data[i].db_register_date }</div>
									<div class="wineName">\${data[i].w_name_kor }</div>
									<div class="wineEngName">\${data[i].w_name }</div>
									<div class="wineStarDesc">이 와인의 별점!</div>
									<div class="wineStars">`;
									for(let j = 0; j < data[i].db_rating; j++){
										html += `<img src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
											alt="점수" class="wineStar">`;
									};
									for(let j = data[i].db_rating; j < 5; j++){
										html += `<img src="/resources/asset/icons/ic_16_toggle_star_line.webp"
											alt="점수" class="wineStar">`;
									};
								html += `</div>

								</div>
							</div>
							<input type="hidden" value="\${data[i].db_id }">`
							}
							if(data.length < rnum){
								scrollStop = 1;
							}
							start += rnum;
							$('.category span').removeClass('on');
							$(this).children('span').addClass('on');
							$('.books').html(html);
							$('.cntArea').text(data[0].cnt + ' 개의 디켄팅북');
							
						}
						
					},
					error : function(request, status, error) {
						alert("code:" + request.status + "\n"
								+ "message:"
								+ request.responseText + "\n"
								+ "error:" + error);
					}
				})
			})
			let curVal;
			$('.filter').on('focus',function(){
				curVal = $(this).val();
			}).on('change',function(){
					start = 1;
					scrollStop = 0;
					let html = "";
					sortEncode($(this).val());
					if(ctgr == "전체"){
						ctgr = "-";
					}
					$.ajax({
						type: 'get',
						dataType: 'json',
						url: '/decanting/newBookList',
						data:{
							start : start,
							db_id : "${bookList[0].db_id}",
							ctgr : ctgr,
							sort : DBsort
						},
						context : this,
	/* 					beforeSend : function(xhr) {
							let header = $("meta[name='_csrf_header']")
									.attr("content");
							let token = $("meta[name='_csrf']").attr(
									"content");
							xhr.setRequestHeader(header, token);
						}, */
						success:function(data){
							if(data == ""){
							    Swal.fire({
								      text: '해당하는 디켄팅북이 없습니다',
								      icon: 'warning',
								      confirmButtonColor: '#46675c',
								      confirmButtonText: '확인'
								    })
								$(this).val(curVal);
							}
							else{
								curVal = $(this).val();
								for(let i = 0;i < data.length;i++){
									html += `<div class="book">
										<div class="wine_img">
										<img src="\${data[i].w_img}">
									</div>
									<div class="wine_desc">
										<div class="regDate">작성일 \${data[i].db_register_date }</div>
										<div class="wineName" >\${data[i].w_name_kor }</div>
										<div class="wineEngName"    >\${data[i].w_name }</div>
										<div class="wineStarDesc">이 와인의 별점!</div>
										<div class="wineStars">`;
										for(let j = 0; j < data[i].db_rating; j++){
											html += `<img src="/resources/asset/icons/ic_16_toggle_star_fill.webp"
												alt="점수" class="wineStar">`;
										};
										for(let j = data[i].db_rating; j < 5; j++){
											html += `<img src="/resources/asset/icons/ic_16_toggle_star_line.webp"
												alt="점수" class="wineStar">`;
										};
									html += `</div>

									</div>
								</div>
								<input type="hidden" value="\${data[i].db_id }">`
								}
								if(data.length < rnum){
									scrollStop = 1;
								}
								$('.books').html(html);
								$('.cntArea').text(data[0].cnt + ' 개의 디켄팅북');
								start += rnum;
							}

						},
						error : function(request, status, error) {
							alert("code:" + request.status + "\n"
									+ "message:"
									+ request.responseText + "\n"
									+ "error:" + error);
						}
					})
				})
				
				
		})

		                  $(document).on("click", ".book", function(){
               location.href="/decanting/decantingBook?db_id=" + $(this).next().val();
            })
	 $(document).on("click", ".followBtn", function(e){
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
							"lightgray");
					$(this).css("border",
					"lightgray");
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
				
	</script>
