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
<meta charset="UTF-8">
</head>
<style>
.follows {
	display: flex;
	flex-direction: column;
	margin-top: 40px;
}

.follow {
	display: flex;
	flex-direction: row;
	width: 100%;
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
	font-size: 20px;
}
</style>
<div class="inner"
	style="margin-top: 25px; margin-bottom: 100px; padding: 0 20px;">
	<div class="followtitle">내가 팔로우한 H-믈리</div>
	<div class="follows" style="text-align: center;">
		<c:choose>
			<c:when test="${fn:length(followList) > 0}">
				<c:forEach var="follower" items="${followList}">
					<div class="follow">
						<div class="followPic">
							<a class="followPica" style="width: 44px; height: 44px;"><img
								class="followPicImg" src="${follower.m_profile_img}"></a>
						</div>
						<div class="followDesc" style="
    text-align: left;
">
							<span class="followName"
								style="line-height: var(- -base-line-clamp-line-height); - -base-line-clamp-line-height: 18px;"><a
								class="followNameIn"><span class="followRealName">${follower.m_nickname }</span></a><span
								class="followers" style="line-height: 18px;">${follower.cnt }명이
									팔로우</span></span>
						</div>
						<div class="followBtn">
							<button class="followBtn1" type="button">
								<div class="BtnCase" style="height: 100%;">
									<div class="Btntext">팔로잉</div>
								</div>
							</button>
							<input type="hidden" value="1"> <input type="hidden"
								value="${follower.f_id }">
						</div>
					</div>
					<input type='hidden' value="${follower.db_id }">
				</c:forEach>
			</c:when>
			<c:otherwise>
				<img
					style="opacity: 0.5; width: 120px; margin: 0 auto; margin-bottom: 20px;"
					src="/resources/asset/icons/sad_icon.png">
					팔로우 한 H-믈리가 없습니다
				</c:otherwise>
		</c:choose>

	</div>

</div>
<script>
	$(document).on("click", ".follow", function(e) {
			location.href="/decanting/bookList?db_id="+$(this).next().val();
	});
	 $(document).on("click", ".followBtn1", function(e) {
		 e.stopPropagation()
						var follow = parseInt($(this).next().val());
						f_id = $(this).next().next().val();
						$.ajax({
							url : "./follow",
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
									$(this).next().val(0);
									$(this).children().children().text('팔로우');
								} else {
									$(this).css("background-color",
											"lightgrey");
									$(this).next().val(1);
									$(this).children().children().text('팔로잉');
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
		let start = 1;
		$(document).ready(
				function() {
					$('.followBtn1').on(
							'click',
							function() {
								var follow = parseInt($(this).next().val());
								f_id = $(this).next().next().val();
								$.ajax({
									url : "./follow",
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
											$(this).next().val(0);
											$(this).children().children().text('팔로우');
										} else {
											$(this).css("background-color",
													"lightgrey");
											$(this).next().val(1);
											$(this).children().children().text('팔로잉');
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
					

				});
		let scrollStop = 0;
		$('#Allcontents').scroll(function(e) {
			var elem = $("#Allcontents");
	    	if(elem[0].scrollHeight - (elem.scrollTop() + 10) <= elem.outerHeight() && scrollStop != 1) {
		    	$('.follows').append(`<img src="/resources/asset/icons/loading.gif" class="loadingIcon">`);		
				$.ajax({
					url : "./moreFollow",
					type : "POST",
					context : this,
					data : {
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
						let html = "";
						for(var i = 0; i < data.length; i ++){
							html += `<div class="follow">
								<div class="followPic">
								<a class="followPica" style="width: 44px; height: 44px;"><img
									class="followPicImg" src="\${data[i].m_profile_img}"></a>
							</div>
							<div class="followDesc">
								<span class="followName"
									style="line-height: var(- -base-line-clamp-line-height); - -base-line-clamp-line-height: 18px;"><a
									class="followNameIn" href="/1soleee_/" role="link" tabindex="0"><span
										class="followRealName">\${data[i].m_nickname }</span></a><span
									class="followers" style="line-height: 18px;">\${data[i].cnt }명이
										팔로우</span></span>
							</div>
							<div class="followBtn">
								<button class="followBtn1" type="button">
									<div class="BtnCase" style="height: 100%;">
										<div class="Btntext">팔로잉</div>
									</div>
								</button>
								<input type="hidden" value="1"> <input type="hidden"
									value="\${data[i].f_id }">
							</div>
						</div>`
							
						}
						
						$('.follows').append(html);
						$('.loadingIcon').remove();
						start += data.length;
						if(data.length < 20){
							scrollStop = 1;
						}
					},
					error : function(request, status, error) {
						alert("code:" + request.status + "\n"
								+ "message:"
								+ request.responseText + "\n"
								+ "error:" + error);
					}

				});
		    } 
		});
	</script>