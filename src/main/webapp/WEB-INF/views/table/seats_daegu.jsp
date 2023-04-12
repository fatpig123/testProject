<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="_csrf" content="${_csrf.token}" />
<meta name="_csrf_header" content="${_csrf.headerName}" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<link rel="stylesheet"
	href="/resources/asset/css/shop/tabling/style.css" />
<link rel="stylesheet"
	href="/resources/asset/css/shop/tabling/styles.css" />
<link rel="shortcut icon"
	href="${RESOURCES_PATH}/images/shop/default/favicon.ico"
	type="image/x-icon">

<style>
body {
	margin: auto;
	height: 100%;
}

body {
	padding: 0px;
	margin: 0px;
	overflow-y: auto;
	overflow-x: hidden;
	background-image:
		url(https://www.mysool.co.kr/images/background/background.webp);
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
	/*width: 100vw;*/
	height: 100vh;
	font-family: 'GmarketSansMedium', sans-serif;
}

header {
	position: sticky;
	top: 0;
	left: 0;
	right: 0;
	z-index: 99;
	opacity: 1;
	max-width: 466px;
	height: 55px;
	background: #46675c;
	margin: 0 auto;
	color: white;
	display: flex;
	align-items: center;
}

header>.place:before {
	position: absolute;
	width: 32px;
	height: 32px;
	background:
		url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbHRlcj0idXJsKCNmaWx0ZXIwX2RfODQ5XzYxNTApIj4KICAgICAgICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTExLjM5MzEgMTAuMjE5N0MxMS42ODYgOS45MjY3OCAxMi4xNjA5IDkuOTI2NzggMTIuNDUzOCAxMC4yMTk3QzEyLjc0NjcgMTAuNTEyNiAxMi43NDY3IDEwLjk4NzQgMTIuNDUzOCAxMS4yODAzTDguNTM0MDkgMTUuMkgyNS4zNDY4QzI1Ljc2MSAxNS4yIDI2LjA5NjggMTUuNTM1OCAyNi4wOTY4IDE1Ljk1QzI2LjA5NjggMTYuMzY0MiAyNS43NjEgMTYuNyAyNS4zNDY4IDE2LjdIOC41ODcyM0wxMi40NTM4IDIwLjU2NjVDMTIuNzQ2NyAyMC44NTk0IDEyLjc0NjcgMjEuMzM0MyAxMi40NTM4IDIxLjYyNzJDMTIuMTYwOSAyMS45MjAxIDExLjY4NiAyMS45MjAxIDExLjM5MzEgMjEuNjI3Mkw2LjIxOTY3IDE2LjQ1MzhDNS45MjY3OCAxNi4xNjA5IDUuOTI2NzggMTUuNjg2IDYuMjE5NjcgMTUuMzkzMUwxMS4zOTMxIDEwLjIxOTdaIiBmaWxsPSJ3aGl0ZSIvPgogICAgPC9nPgogICAgPGRlZnM+CiAgICAgICAgPGZpbHRlciBpZD0iZmlsdGVyMF9kXzg0OV82MTUwIiB4PSItMSIgeT0iMCIgd2lkdGg9IjM0IiBoZWlnaHQ9IjM0IiBmaWx0ZXJVbml0cz0idXNlclNwYWNlT25Vc2UiIGNvbG9yLWludGVycG9sYXRpb24tZmlsdGVycz0ic1JHQiI+CiAgICAgICAgICAgIDxmZUZsb29kIGZsb29kLW9wYWNpdHk9IjAiIHJlc3VsdD0iQmFja2dyb3VuZEltYWdlRml4Ii8+CiAgICAgICAgICAgIDxmZUNvbG9yTWF0cml4IGluPSJTb3VyY2VBbHBoYSIgdHlwZT0ibWF0cml4IiB2YWx1ZXM9IjAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDEyNyAwIiByZXN1bHQ9ImhhcmRBbHBoYSIvPgogICAgICAgICAgICA8ZmVPZmZzZXQgZHk9IjEiLz4KICAgICAgICAgICAgPGZlR2F1c3NpYW5CbHVyIHN0ZERldmlhdGlvbj0iMC41Ii8+CiAgICAgICAgICAgIDxmZUNvbG9yTWF0cml4IHR5cGU9Im1hdHJpeCIgdmFsdWVzPSIwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwLjI1IDAiLz4KICAgICAgICAgICAgPGZlQmxlbmQgbW9kZT0ibm9ybWFsIiBpbjI9IkJhY2tncm91bmRJbWFnZUZpeCIgcmVzdWx0PSJlZmZlY3QxX2Ryb3BTaGFkb3dfODQ5XzYxNTAiLz4KICAgICAgICAgICAgPGZlQmxlbmQgbW9kZT0ibm9ybWFsIiBpbj0iU291cmNlR3JhcGhpYyIgaW4yPSJlZmZlY3QxX2Ryb3BTaGFkb3dfODQ5XzYxNTAiIHJlc3VsdD0ic2hhcGUiLz4KICAgICAgICA8L2ZpbHRlcj4KICAgIDwvZGVmcz4KPC9zdmc+Cg==)
		50% 50% no-repeat;
	margin: -9px -32px 0 -27px;
	content: " ";
}

header>.place {
	margin-left: 32px;
	font-size: large;
}

main {
	max-width: 465px;
	height: auto;
	min-height: 100%;
	padding-bottom: 55px;
	background: white;
	margin: 0 auto;
	background: white;
}

footer {
	max-width: 465px;
	height: 55px;
	background: #46675c;
	margin: 0 auto;
	left: 0;
	right: 0;
	bottom: 0;
	position: fixed;
	display: flex;
	justify-content: center;
}

footer>button {
	color: white;
	font-size: larger;
}

hr.hairline {
	height: 1px;
	margin: 15px auto;
	width: 90%;
}

.place:hover {
	cursor: pointer;
}

.floorplan {
	
}

.reservation-info {
	
}

.notification {
	
}

img.notice {
	width: 16px;
	height: 16px;
	margin: 0 3px 2px 0;
}

ul.notice {
	list-style: square;
}

ul.notice>li {
	color: #757d86;
	font-weight: lighter;
	font-size: small;
	margin-bottom: 2px;
}

.seat-status {
	background: white;
	display: flex;
	justify-content: space-evenly;
	display: flex;
}

.seat-status>.content {
	display: flex;
	justify-content: center;
    align-content: center; 
    align-items: center;
}

.seat-status>.content>.color {
	width:14px;
	aspect-ratio: 1/1;
	margin-top: -3px;
}

.floor {
	/* background: lightgray; */
	width: 96%;
	max-width: 465px;
	height: 400px;
	margin: auto;
	background: #FDF9F0;
}

.floor>.outside {
	width: 94%;
	height: 96%;
	margin: auto;
	padding: 8px 5px;
	/* background: lightgreen; */
	display: flex;
}

.outside>.exit-esclator {
	width: 10%;
	/* background: orange; */
}

.outside>.exit {
	width: 5%;
	/* background: yellow; */
}

.exit-top {
	display: flex;
	align-items: center;
	margin-left: 20%;
}

.exit-top>img {
	width: 20px;
	aspect-ratio: 1/1;
}

.exit-txt {
	margin: 3px 0 0 2px;
	font-size: smaller;
}

.exit-bottom {
	height: 110%;
}

.exit-bottom-div {
	display: flex;
	align-items: center;
	margin-top: 100%;
}

.exit-bottom-div>img {
	width: 20px;
	aspect-ratio: 1/1;
}

.inside {
	width: 96%;
	height: 98%;
	margin: 2px auto;
	padding: 10px 0.1em;
	/* background: lightgreen; */
	display: flex;
	flex-direction: column;
	align-items: center;
}

.inside>.row {
	width: 100%;
	/* background: orange; */
	margin-bottom: 5px;
	display: flex;
}

.row.bars {
	height: 30%;
	display: flex;
	flex-direction: column;
}

.b1 {
	height: 28%;
	width: 80%;
	margin-bottom: 1.5%;
	background: navy;
}

.b2 {
	height: 60%;
	display: flex;
	flex-direction: row;
}

.b1>.bar {
	background: url(/resources/asset/images/shop/table/bg-inward.svg)
		no-repeat;
	width: 100%;
	height: 100%;
	position: relative;
	margin-top: -1.5%;
}

#bar_txt {
	color: white;
	font-size: smaller;
	width: fit-content;
	height: fit-content;
	margin: 0 auto;
	margin: 0 auto; position : absolute; top : 60%;
	left: 45%;
	position: absolute;
	top: 60%;
}

.row.tables {
	margin-top: 3%;
	height: 26%;
}

.row.sofas {
	height: 22%;
	margin-top: 3%;
}

.row.cabinet {
	height: 10%;
	width: 96%;
	background: #46675c;
}

.ribbon {
	background: url(/resources/asset/images/shop/table/bg-wave2.svg)
		no-repeat;
	width: 100%;
	height: 40px;
}

#cabinet_txt {
	color: white;
	margin: 0 auto;
	font-size: smaller;
	width: fit-content;
	margin-top: 23px;
}

.chairs {
	display: flex;
	justify-content: space-evenly;
	/* background: gray; */
	margin: 0.2em 0;
	aspect-ratio: 3/1;
	width: 100%;
}

.chairs>.chair {
	background: lightgray;
	width: 25px;
	aspect-ratio: 1/1;
	margin: 0 1px;
	border-radius: 3px;
}

.bars>.b2>.store {
	width: 80%;
	/* background: blue; */
	margin: 0 auto;
	display: flex;
	justify-content: space-evenly;
}

.bars>.b2>.exit-cashier {
	width: 20%;
	display: flex;
	flex-direction: column;
	margin: -8% -1% 0 1%;
}

.cashier-box {
	margin: 30% -2% 0 10%;
}

.cashier {
	border: 2px solid;
	width: 80%;
	height: 30px;
	justify-content: center;
	align-items: center;
	display: flex;
	text-align: center;
	font-size: smaller;
}

.bars>.b2>.store>.area {
	/* background: white; */
	width: calc(100%/ 4 - 10px);
	aspect-ratio: 1/1;
	margin: auto 3px;
}

.bars>.b2>.store>.area>.table {
	background: lightgray;
	aspect-ratio: 5/3;
	/*width: 100%;
	height: 75%;*/
	border-radius: 5px;
}

.bars>.b2>.store>.area>.chairs {
	/* background: gray; */
	aspect-ratio: 3/1;
	/*width: 100%;
	height: 30%;*/
}

.bars>.b2>.store>.area>.chairs>.chair {
	/* background: yellow; */
	aspect-ratio: 1/1;
	/*width: calc(100%/ 3 - 3px);*/
	width: 22px;
	margin: 0 2px;
	border-radius: 3px;
	margin: 0 2px;
}

.tables>.store {
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: space-evenly;
}

.tables>.store>.area {
	height: 100%;
	/* background: white; */
	margin-right: 1%;
	display: flex;
	flex-direction: column;
	justify-content: center;
}

.tables>.store>.area>.table {
	border-radius: 5px;
}

.tables>.store>.area6 {
	width: calc(100%/ 15 * 3);
}

.area6>.chairs>.chair {
	width: 25px;
}

.tables>.store>.area6>.table {
	width: 100%;
	aspect-ratio: 5/3;
	min-height: 45px;
	background: lightgray;
}

.tables>.store>.area4-2 {
	width: calc(100%/ 15 * 3.3);
	display: flex;
	flex-direction: row;
	justify-content: space-evenly;
}

.tables>.store>.area4-4 {
	width: calc(100%/ 15 * 4);
	display: flex;
	flex-direction: row;
	justify-content: space-evenly;
}

.tables>.store>.area2 {
	width: calc(100%/ 15 * 1.5);
}

.tables>.store>.area4-2>.area4 {
	width: calc(100%/ 5 * 3);
	margin: 0 2px;
	/* background: pink; */
	display: flex;
	flex-direction: column;
	justify-content: center;
}

.tables>.store>.area4-2>.area4>.table {
	width: 100%;
	aspect-ratio: 5/3;
	min-height: 45px;
	border-radius: 5px;
	background: lightgray;
}

.tables>.store>.area4-2>.area4>.chairs {
	width: 100%;
	aspect-ratio: 3/1;
	min-height: 25px;
}

.tables>.store>.area4-2>.area2 {
	width: calc(100%/ 5 * 2);
	/* background: pink; */
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.tables>.store>.area4-2>.area2>.table {
	width: 32px;
	aspect-ratio: 5/3;
	min-height: 45px;
	background: lightgray;
	border-radius: 5px;
}

.tables>.store>.area4-2>.area2>.chairs {
	width: 100%;
	aspect-ratio: 3/1;
	min-height: 25px;
}

.tables>.store>.area4-4>.area4 {
	width: calc(100%/ 2 - 3px);
	height: 100%;
	/* background: purple; */
	display: flex;
	flex-direction: column;
	justify-content: center;
}

.tables>.store>.area4-4>.area4>.table {
	width: 100%;
	aspect-ratio: 3/2;
	min-height: 45px;
	border-radius: 5px;
	background: lightgray;
}

.tables>.store>.area4-4>.area4>.chairs {
	width: 100%;
	aspect-ratio: 5/3;
	height: 25px;
	/*background: gray;*/
}

.tables>.store>.area4-4>.area4>.chairs>.chair {
	width: 25px;
	/*width: calc(100%/ 2);*/
}

.tables>.store>.area2 {
	display: flex;
	align-items: center;
}

.tables>.store>.area2>.table {
	width: 32px;
	aspect-ratio: 3/2;
	min-height: 45px;
	border-radius: 5px;
	background: lightgray;
}

.tables>.store>.area2>.chairs {
	width: 100%;
}

.tables>.store>.area2>.chairs>.chair {
	height: 25px;
}

.sofas>.exit {
	/* background: red; */
	width: 10%;
}

.sofas>.store {
	/* background: blue; */
	width: 90%;
	display: flex;
	justify-content: space-evenly;
}

.sofas>.store>.area {
	width: calc(100%/ 4 - 5px);
	aspect-ratio: 1/1;
	/* background: white; */
	display: flex;
	flex-direction: row;
	align-items: center;
}

.sofas>.store>.area>.table {
	width: 100%;
	aspect-ratio: 1/2.5;
	/*min-height: 45px;*/
	border-radius: 50px;
	background: lightgray;
}

.sofas>.store>.area>.sofas {
	display: flex;
	flex-direction: column;
	justify-content: space-evenly;
	/* background: gray; */
	margin: 0 0.1em;
	aspect-ratio: 1/2;
	width: 100%;
}

.sofas>.store>.area>.sofas>.chair {
	background: lightgray;
	aspect-ratio: 1/1;
	margin: 2px 1px;
	border-radius: 3px;
}


</style>

</head>

<body>
	<header>
		<!--  <a href="javascript:history.go(-1);" class="btn-back">이전</a>-->
		<div class="place">&nbsp;와인웍스 더현대대구점</div>
	</header>
	<main>
		<section class="section floorplan">
			<div class="seat-status pt-20 mb-10">
				<div class="content">
					<div class="color" style="background-color: #46675c"></div>
					&nbsp;선택
				</div>
				<div class="content">
					<div class="color" style="background-color: #E0DCDC"></div>
					&nbsp;선택가능
				</div>
				<div class="content">
					<div class="color" style="background-color: #F3D3E8"></div>
					<div>&nbsp;선택불가</div>
				</div>
				<div class="content">
					<div class="color" style="background-color: #9999a3"></div>
					&nbsp;예약완료
				</div>
			</div>
			<div class="floor">
				<div class="inside">
					<div class="row bars">
						<div class="b1">
							<div class="bar">
								<div id="bar_txt">Bar</div>
							</div>
						</div>
						<div class="b2">
							<div class="store">
								<div class="area seat">
									<div class="table"></div>
									<div class="chairs">
										<div class="chair"></div>
										<div class="chair"></div>
										<div class="chair"></div>
									</div>
								</div>
								<div class="area seat" >
									<div class="table"></div>
									<div class="chairs">
										<div class="chair"></div>
										<div class="chair"></div>
										<div class="chair"></div>
									</div>
								</div>
								<div class="area seat">
									<div class="table"></div>
									<div class="chairs">
										<div class="chair"></div>
										<div class="chair"></div>
										<div class="chair"></div>
									</div>
								</div>
								<div class="area seat">
									<div class="table"></div>
									<div class="chairs">
										<div class="chair"></div>
										<div class="chair"></div>
										<div class="chair"></div>
									</div>
								</div>
							</div>
							<div class="exit-cashier">
								<div class="exit-top">
									<img src="/resources/asset/images/shop/table/exit2.png" /> <span
										class="exit-txt">출입문</span>
								</div>
								<div class="cashier-box">
									<div class="cashier">계산대</div>
								</div>
							</div>
						</div>

					</div>
					<div class="row cabinet">
						<div class="ribbon">
							<div id="cabinet_txt">와인
								진열장&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
						</div>
					</div>
					<div class="row tables">
						<div class="store">
							<div class="area area6 seat">
								<div class="chairs">
									<div class="chair"></div>
									<div class="chair"></div>
									<div class="chair"></div>
								</div>
								<div class="table"></div>
								<div class="chairs">
									<div class="chair"></div>
									<div class="chair"></div>
									<div class="chair"></div>
								</div>
							</div>
							<div class="area area4-2">
								
								<div class="area2 seat">
									<div class="chairs">
										<div class="chair"></div>
									</div>
									<div class="table"></div>
									<div class="chairs">
										<div class="chair"></div>
									</div>
								</div>
								<div class="area4 seat">
									<div class="chairs">
										<div class="chair"></div>
										<div class="chair"></div>
									</div>
									<div class="table"></div>
									<div class="chairs">
										<div class="chair"></div>
										<div class="chair"></div>
									</div>
								</div>
							</div>
							<div class="area area4-4">
								<div class="area4 seat">
									<div class="chairs">
										<div class="chair"></div>
										<div class="chair"></div>
									</div>
									<div class="table"></div>
									<div class="chairs">
										<div class="chair"></div>
										<div class="chair"></div>
									</div>
								</div>
								<div class="area4 seat">
									<div class="chairs">
										<div class="chair"></div>
										<div class="chair"></div>
									</div>
									<div class="table"></div>
									<div class="chairs">
										<div class="chair"></div>
										<div class="chair"></div>
									</div>
								</div>
							</div>
							<div class="area area4-2">
								<div class="area2 seat">
									<div class="chairs">
										<div class="chair"></div>
									</div>
									<div class="table"></div>
									<div class="chairs">
										<div class="chair"></div>
									</div>
								</div>
								<div class="area4 seat">
									<div class="chairs">
										<div class="chair"></div>
										<div class="chair"></div>
									</div>
									<div class="table"></div>
									<div class="chairs">
										<div class="chair"></div>
										<div class="chair"></div>
									</div>
								</div>

							</div>
							<div class="area area2 seat">
								<div class="chairs">
									<div class="chair"></div>
								</div>
								<div class="table"></div>
								<div class="chairs">
									<div class="chair"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="row sofas">
						<div class="exit-bottom">
							<div class="exit-bottom-div">
								<span class="exit-txt">출입문</span><img
									src="/resources/asset/images/shop/table/exit.png" />
							</div>
						</div>
						<div class="store">
							<div class="area seat">
								<div class="sofas">
									<div class="chair"></div>
									<div class="chair"></div>
								</div>
								<div class="table"></div>
								<div class="sofas">
									<div class="chair"></div>
									<div class="chair"></div>
								</div>
							</div>
							<div class="area seat" >
								<div class="sofas">
									<div class="chair"></div>
									<div class="chair"></div>
								</div>
								<div class="table"></div>
								<div class="sofas">
									<div class="chair"></div>
									<div class="chair"></div>
								</div>
							</div>
							<div class="area seat">
								<div class="sofas">
									<div class="chair"></div>
									<div class="chair"></div>
								</div>
								<div class="table"></div>
								<div class="sofas">
									<div class="chair"></div>
									<div class="chair"></div>
								</div>
							</div>
							<div class="area seat">
								<div class="sofas">
									<div class="chair"></div>
									<div class="chair"></div>
								</div>
								<div class="table"></div>
								<div class="sofas">
									<div class="chair"></div>
									<div class="chair"></div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</section>
		<hr class="separator mt-16 mb-16">
		<section class="section reservation-info">
		<form name="options">
			<input type="hidden" name="storeId" value="${options.storeId}"/>
			<input type="hidden" name="selectedDate" value="${options.selectedDate}"/>
			<input type="hidden" name="selectedTime" value="${options.selectedTime}"/>
			<input type="hidden" name="headCount" value="${options.headCount}"/>
			<input type="hidden" name="tableId" value="${options.tableId}"/>
			
			<div class="container gutter-sm">
				<div class="section-header">
					<h3 class="section-title font-18">예약정보</h3>
				</div>
			</div>
			<div class="container gutter-sm selected-info mb-5 ml-10">
				<div class="section-title-detail ">
					<div class="section-title font-15">일시</div>
				</div>
				<div class="section-body">
					<div class="__select-textarea">
						<input type="text" value="${options.selectedDate} ${options.selectedTime}시" />
					</div>
				</div>
			</div>
			<div class="container gutter-sm selected-info mb-5 ml-10">
				<div class="section-title-detail ">
					<div class="section-title font-15">인원수</div>
				</div>
				<div class="section-body">
					<div class="__select-textarea">
						<input type="text" value="${options.headCount}명" />
					</div>
				</div>
			</div>
			<div class="container gutter-sm selected-info mb-5 ml-10">
				<div class="section-title-detail">
					<div class="section-title font-15">테이블</div>
				</div>
				<div class="section-body">
					<div class="__select-textarea">
						<input type="text" id="tid" value="" />
					</div>
				</div>
			</div>
			<hr class="hairline mt-15 mb-15">
			<div class="container gutter-sm mb-10 ml-10">
				<div class="section-title-detail">
					<h3 class="section-title font-16 mb-10">요청사항</h3>
				</div>
				<div class="section-body">
					<div class="__select-textarea">
						<textarea name="requestMsg" class="form-input __active"
							placeholder="요청하실 내용을 입력해주세요." rows="3"></textarea>
					</div>
				</div>
			</div>
			</form>
		</section>
		<hr class="separator mt-20 mb-10">
		<section class="section notification">
			<div class="container gutter-sm pt-10 pb-10">
				<div class="section-title-detail">
					<img class="notice"
						src="/resources/asset/images/shop/table/exclamation-mark.png" />
					<div class="section-title notice font-16">유의사항</div>
				</div>
				<div class="section-body mt-10 ml-20">
					<ul class="notice">
						<li>2인석은 최소 1인, 4인석은 최소 2인, 6인석은 최소 5인부터 선택할 수 있습니다.</li>
						<li>6인 초과 예약 시 매장에 전화하여 예약해주세요.</li>
						<li>매장 상황에 따라 입장시간이 지연될 수 있습니다.</li>
						<li>방문이 어려우신 경우 다른 고객님들을 위해 예약 취소 부탁드립니다.</li>
					</ul>
				</div>
			</div>
		</section>

	</main>
	<hr class="separator mt-16 mb-16">
	<footer id="submit">
		<button type="button">예약하기</button>
	</footer>

	<script>
	$('.place').on('click', function(){
		history.back();
	});
	
	let colors = [ "#E0DCDC", "#9999A3", "#46675c", "#F3D3E8" ]; //avail(default), not_avail, selected, less_head_cnt
	let selected = null;
	
	function changeStatus(seat, color, status) {
		console.log("색상변경", seat, color);
		seat.children('.table').css({
			"background-color" : color
		});
		seat.find('.chair').css({
			"background-color" : color
		});
		if (status === "already") {
			seat.addClass("already");
		}
	}
	
	function alreadyReservedAlert() {
		Swal.fire({
			  text: "해당 좌석은 이미 예약되었습니다.",
			  showCancelButton: false,
			  confirmButtonColor: '#46675c',
			  confirmButtonText: '확인'
			});
	}
	
	function setSingleSelect(current) {
		console.log('singleselect', selected, current);
		//prev
		if (selected != null)
			changeStatus($('#' + selected), colors[0], 'single');
		//current
		changeStatus(current, colors[2], 'success');
		selected = current.attr('id');
	}
	function unselectSeat(seat) {
		changeStatus(seat, colors[0], 'unselect');
		selected = null;
		$("input[name='tableId']").val('');
		$("#tid").val('');
	}
	function checkHeadCountLimitWithAlert(seat, head) {
		let id = seat.attr('id');
		console.log('id', id);
		let limit = id.substring(id.length - 1);
		if (limit < head) {
			Swal.fire({
				  text: "선택하신 인원을 모두 수용할 수 없습니다.",
				  showCancelButton: false,
				  confirmButtonColor: '#46675c',
				  confirmButtonText: '확인'
				});
			return false;
		}
		if (limit == 6 && head < 5) {
			Swal.fire({
				  text: "최소 착석인원보다 적은 인원입니다.",
				  showCancelButton: false,
				  confirmButtonColor: '#46675c',
				  confirmButtonText: '확인'
				});
			return false;
		} else if (limit == 4 && head < 2) {
			Swal.fire({
				  text: "최소 착석인원보다 적은 인원입니다.",
				  showCancelButton: false,
				  confirmButtonColor: '#46675c',
				  confirmButtonText: '확인'
				});
			return false;
		} else {
			return true;
		}
	}

	function checkHeadCountLimit(seat, head) {
		let id = seat.attr('id');
		let limit = id.substring(id.length - 1);

		if (limit < head) {
			changeStatus(seat, colors[3], '');
			return false;
		}
		if (limit == 6 && head < 5) {
			changeStatus(seat, colors[3], '');
			return false;
		} else if (limit == 4 && head < 2) {
			changeStatus(seat, colors[3], '');
			return false;
		} else {
			return true;
		}
	}

	$(function() {
		$
				.ajax({
					url : "/api/tabling/seatStatus",
					type : "POST",
					async : true,
					cache : true,
					data : $("form[name='options']").serialize(),
					beforeSend : function(xhr) {
						let header = $("meta[name='_csrf_header']").attr(
								"content");
						let token = $("meta[name='_csrf']").attr("content");
						xhr.setRequestHeader(header, token);
					},
					success : function(data, status) {
						console.log('성공', data);
						console.log('seat 개수', $('.seat').length);
						let availables = data;
						let head = $("input[name='headCount']").val();
						for (let i = 0; i < availables.length; i++) {
							$('.seat').eq(i).attr('id',
									availables[i].tableId.substring(5));
							
							if (!availables[i].available) {
								changeStatus($('.seat').eq(i), colors[1],
										"already");
							}else {
								if(!checkHeadCountLimit($('.seat').eq(i), $(
								"input[name='headCount']").val()))
									changeStatus($('.seat').eq(i), colors[3]);
							}
						}
					},
					error : function(status, error) {
						console.log('실패');
					}
				});
	});
	
	$('.seat').hover(function(){
		$(this).css('cursor','pointer');
	});
	
	$('footer').hover(function(){
		$(this).css('cursor','pointer');
	});
	
	$('.seat').on(
			"click",
			function() {
				console.log("야", $(this));
				if ($(this).hasClass('already')) {
					console.log('응');
					alreadyReservedAlert();
				} else {
					console.log('아니', $(this).attr('id'));
					$("input[name='tableId']").val(
							'dae1_' + $(this).attr('id'));
					let seat = $(this);
					let seatId = $(this).attr('id');
					if (selected === seat.attr('id')) { //했던 거 누르면 취소
						unselectSeat(seat);
					} else {
						if (checkHeadCountLimitWithAlert(seat, $(
								"input[name='headCount']").val())) {
						} else {
							return false;
						}
						$.ajax({
							url : "/api/tabling/checkAvailable",
							type : "POST",
							async : true,
							cache : true,
							data : $("form[name='options']").serialize(),
							beforeSend : function(xhr) {
								let header = $("meta[name='_csrf_header']")
										.attr("content");
								let token = $("meta[name='_csrf']").attr(
										"content");
								xhr.setRequestHeader(header, token);
							},
							success : function(data, status) {
								console.log('=============');
								console.log('성공', data, seatId);
								setSingleSelect(seat);
								$('#tid').val(Number(seatId.split('_')[0].substring(2))+1 +'번');
								console.log('=============');
							},
							error : function(status, error) {
								console.log('실패');
								$("input[name='tableId']").val(selected);
							}
						});
					}
				}
			});
	$("#submit").on(
			"click",
			function() {
				console.log("완료 클릭");
				if ($("input[name='storeId']").val() == '') {
					alert("storeId 확인");
					return false;
				}
				if ($("input[name='selectedDate']").val() == '') {
					alert("selectedDate 확인"
							+ $("input[name='selectedDate']").val());
					return false;
				}
				if ($("input[name='selectedTime']").val() == '') {
					alert("selectedTime 확인"
							+ $("input[name='selectedTime']").val());
					return false;
				}
				if ($("input[name='tableId']").val() == ''
						|| selected == null) {
					Swal.fire({
						  text: "테이블을 선택해주세요.",
						  showCancelButton: false,
						  confirmButtonColor: '#46675c',
						  confirmButtonText: '확인'
						});
					return false;
				}
				if ($("input[name='headCount']").val() == '') {
					alert("headCount 확인"
							+ $("input[name='headCount']").val());
					return false;
				}
				
				let formdata = $("form[name='options']").serialize();
				
				let sdate = $("input[name='selectedDate']").val();	
				let stime = $("input[name='selectedTime']").val();	
				let sheadcnt = $("input[name='headCount']").val();	
				let stableId = Number($("input[name='tableId']").val().split("_")[1].substring(2)) + 1;
				
				//console.log("안녕", formdata);
				let alert_content = `와인웍스 더현대 대구점 <br> \${sdate} \${stime}시, \${sheadcnt}명 \${stableId}번 테이블`;
				
				
				Swal.fire({
					  title: '예약하시겠습니까?',
					  html: alert_content,
					  icon: 'question',
					  showCancelButton: true,
					  confirmButtonColor: '#46675c',
					  cancelButtonColor: 'lightgray',
					  cancelButtonText: '취소',
					  confirmButtonText: '예약'
					}).then((result) => {
					  if (result.isConfirmed) {
						  
			        	$.ajax({
						    url: "/api/tabling/reservation",
						    type: "post",
						    dataType: "json",
						    data: formdata,
						    beforeSend : function(xhr){
								let header = $("meta[name='_csrf_header']").attr("content");
								let token = $("meta[name='_csrf']").attr("content");
								xhr.setRequestHeader(header, token);
							},
						    success: function(json){
							            Swal.fire({
							            	  title: '예약완료!',
							            	  html: "예약이 확정되었습니다. <br> 이용일 2시간 전부터 qr코드 확인이 가능합니다.",
							            	  icon: 'success',
							            	  showCancelButton: false,
							            	  confirmButtonColor: '#46675c',
							            	  confirmButtonText: '예약확인'
							            	}).then((result) => {
							            	  if (result.isConfirmed) {
							            		  window.location.href = '/mypage/tabling';
							            	  }else{
							            		  window.location.href = '/mypage/tabling';
							            	  }
							            	})
							     
						   	},
						    error: function (request, status, error){    
						    	swalWithBootstrapButtons.fire(
							              '예약 실패',
							              '오류가 발생했습니다.',
							              'error'
							            );
						    	
						    }
			          }); //end ajax
					    
					  }
					}); //swal fin
			});
	</script>


</body>
</html>