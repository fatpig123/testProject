<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
* {
	transition: all 0.6s;
}

html {
	height: 80%;
}

body {

	color: black;
	margin: 0;
}

#ex404_main {
	display: table;
	width: 100%;
	height: 80vh;
	text-align: center;
}

.ex404_fof {
	display: table-cell;
	vertical-align: middle;
}

.ex404_fof h2 {
	font-size: 30px;
	display: inline-block;
	padding-right: 12px;
	animation: ex404_type .5s alternate infinite;
}

.ex404_fof h6 {
	font-size: 14px;
	display: inline-block;
	padding-right: 12px;
	color: gray;
}

.ex404_btns {
	width: 80%;
	margin: 3em auto;
}

@keyframes ex404_type {
	from {box-shadow: inset -3px 0px 0px #888;
}

to {
	box-shadow: inset -3px 0px 0px transparent;
}
}
</style>


<section id="contents" style="margin-top: 1px;">
	<div id="ex404_main">
		<div class="ex404_fof">
			<div style="margin-bottom: 1em"><img src="/resources/asset/images/shop/default/caution.png" width="90"/></div>
			<h2>페이지를 찾을 수 없습니다.</h2>
			<h6>이용에 불편을 드려 죄송합니다.</h6>
			<div class="btn_area col ex404_btns">
				<!--  <a class="btn_txt btn_white"
					onclick="history.go(-1);">이전으로</a>  -->
				<a href="/"
					class="btn_txt btn_black">메인으로</a>
			</div>
		</div>
	</div>
</section>