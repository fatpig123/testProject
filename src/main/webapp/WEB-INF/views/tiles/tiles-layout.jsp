<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 공통변수 처리 -->
<c:set var="CONTEXT_PATH" value="${pageContext.request.contextPath}"
	scope="application" />
<c:set var="RESOURCES_PATH" value="${CONTEXT_PATH}/resources/asset"
	scope="application" />

<!DOCTYPE html>
<html>
<head>
<!-- <meta name="viewport" content="width=465px;"> -->
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Expires" content="Mon, 06 Jan 1990 00:00:01 GMT">
<meta http-equiv="Expires" content="-1">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta name="naver-site-verification"
	content="5a02c2e75c2f206818498a10352f35f7feb8c966">
<meta name="_csrf" content="${_csrf.token}" />
<meta name="_csrf_header" content="${_csrf.headerName}" />
<script type="text/javascript">
	var CONTEXT_PATH = "${CONTEXT_PATH}";
	var RESOURCES_PATH = "${RESOURCES_PATH}";
</script>
<script>
	var _BASE_URL_ = "https://www.winenara.com/";
	var _CSRF_NAME_ = "witplus_csrf_token";

	var sesId = "";
	var sesCustSeq = "";

	var session_id = "";
	var ci_cookie = "8mrnh8teecihn6r8polu6na5snt9e6ni";
</script>
<meta id="CsrfSecrets" name="witplus_csrf_token"
	content="d14e65abba4bf1fbd6d653560aa05be6">
<!-- 삭제 불가 토큰갱신시 사용-->
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-217574467-1');
</script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<link rel="shortcut icon"
	href="${RESOURCES_PATH}/images/shop/default/favicon.ico"
	type="image/x-icon">
<link rel="icon"
	href="${RESOURCES_PATH}/images/shop/default/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="${RESOURCES_PATH}/css/shop/jquery-ui.min.css">
<link rel="stylesheet" type="text/css"
	href="${RESOURCES_PATH}/css/shop/layout.css?v=230109160815">
<%-- <link rel="stylesheet" type="text/css"
	href="${RESOURCES_PATH}/css/shop/layout_pc.css?v=230214143702"
	media="screen and (min-width:1024px)"> --%>
<link rel="stylesheet" type="text/css"
	href="${RESOURCES_PATH}/css/shop/layout_jj.css?v=230213093344">
<%-- <link rel="stylesheet" type="text/css"
	href="${RESOURCES_PATH}/css/shop/layout_pc_jj.css?v=230213093034"
	media="screen and (min-width:1024px)"> --%>
<link rel="stylesheet" type="text/css"
	href="${RESOURCES_PATH}/css/shop/layout_elly.css?v=221206110503">
<%-- <link rel="stylesheet" type="text/css"
	href="${RESOURCES_PATH}/css/shop/layout_pc_elly.css?v=230104092647"
	media="screen and (min-width:1024px)"> --%>
<link rel="stylesheet" type="text/css"
	href="${RESOURCES_PATH}/css/shop/layout_ch.css?v=230126163109">
<%-- <link rel="stylesheet" type="text/css"
	href="${RESOURCES_PATH}/css/shop/layout_pc_ch.css?v=230104110650"
	media="screen and (min-width:1024px)"> --%>
<link rel="stylesheet" type="text/css"
	href="${RESOURCES_PATH}/css/shop/layout_sy.css?v=230111154605">
<%-- <link rel="stylesheet" type="text/css"
	href="${RESOURCES_PATH}/css/shop/layout_pc_sy.css?v=230214142725"
	media="screen and (min-width:1024px)"> --%>
	<link rel="stylesheet" type="text/css"
	href="${RESOURCES_PATH}/css/shop/styles.css">
<script type="text/javascript" src="${RESOURCES_PATH}/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${RESOURCES_PATH}/js/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="${RESOURCES_PATH}/js/picturefill.min.js"></script>
<script type="text/javascript"
	src="${RESOURCES_PATH}/js/common.js?v=221216102931"></script>
<script type="text/javascript"
	src="${RESOURCES_PATH}/js/front_ui.js?v=221226120920"></script>
<script src="${RESOURCES_PATH}/js/wn.product.js?v=220602171452"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<link type="javascript" href="rangeSlider.js">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/css/ion.rangeSlider.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/js/ion.rangeSlider.min.js"></script>
<title><tiles:insertAttribute name="title" /></title>
	<style>
		.swal2-confirm.swal2-styled {
			background-color: #46675c;
		}
	</style>
</head>

<body class="vsc-initialized" >
<section id="Allcontents"  >
	<tiles:insertAttribute name="header" />
	<tiles:insertAttribute name="filterLayer" />
	<tiles:insertAttribute name="tablingPopup" />
	<tiles:insertAttribute name="body" />
	<tiles:insertAttribute name="foot" />
	</section>
</body>

</html>