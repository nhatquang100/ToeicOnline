<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<!DOCTYPE html>
<html>

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>KLTN-TOEICONLINE | Luyện Thi Toeic Online | Luyện thi
	TOEIC cấp tốc hiệu quả</title>
<meta name="description"
	content="Website luyện thi TOEIC trực tuyến số 1 tại Việt Nam. Hơn 14000+ câu hỏi, 500+ bộ đề luyện thi TOEIC có đáp án.Truy cập ngay chỉ với 199k/ 1 năm, luyện thi TOEIC online thoải mái không giới hạn tài liệu">
<meta property="og:title"
	content="KLTN-TOEICONLINE | Luyện Thi Toeic Online | Luyện thi TOEIC cấp tốc hiệu quả " />
<meta property="og:type" content="website" />
<meta property="og:image"
	content="<%=request.getContextPath()%>/templates/public/images/toeic123.png" />

<link
	href="<%=request.getContextPath()%>/templates/public/css/styleefa9.css?v=1523686810"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/templates/public/css/globalefa9.css?v=1523686810"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/templates/public/css/meterefa9.css?v=1523686810"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/templates/public/js/my.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/templates/public/css/font-awesome.minf9e3.css?v=1.1"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/templates/public/css/responsivef9e3.css?v=1.1"
	rel="stylesheet">
<script
	src="<%=request.getContextPath()%>/templates/public/js/jQuery-2.1.4.min.js"></script>
<link rel="icon" href="upload/2016/05/logo5e1f.ico?v=2"
	" type="image/x-icon" />
<!-- jQueryUI -->
<script
	src="<%=request.getContextPath()%>/templates/public/js/jquery-ui.min.js"></script>
<script
	src="<%=request.getContextPath()%>/templates/public/js/jquery.ui.touch-punch.min.js"></script>
<!-- Pagination -->
<script
	src="<%=request.getContextPath()%>/templates/public/js/jquery.twbsPagination.js"></script>
<!-- Autokey -->
<script
	src="<%=request.getContextPath()%>/templates/public/js/autokey.js"></script>
<!-- JS -->
<script src="<%=request.getContextPath()%>/templates/public/js/main.js"></script>
<script
	src="<%=request.getContextPath()%>/templates/public/js/login.js"></script>
<script
	src="<%=request.getContextPath()%>/templates/public/js/examination.create.js"></script>
<script
	src="<%=request.getContextPath()%>/templates/public/js/comment.js"></script>
</head>

<body onload="myFunction()">
	<!-- start top -->
	<div class="full-width green-bg menu-top">
		<div class="width">
			<ul class="menu-left">
				<li><i class="fa fa-phone"> </i> 0988.722.165</li>
				<li><i class="fa fa-envelope"> </i> <a
					href="mailto:info@vietcv.net">vonhatquang100@gmail.com</a></li>
				<li><a href="#"><i class="fa fa-facebook"> </i></a></li>
				<li><a href="#"><i class="fa fa-twitter"> </i></a></li>
				<li><a href="#"><i class="fa fa-google-plus"> </i></a></li>
			</ul>
			<ul class="menu-right">
				<li><a href="news/3/gioi-thieu-ve-chung-toi.html">Về chúng
						tôi</a></li>
				<li><a href="news/4/gioi-thieu-de-thi-toeic-2016.html">Cấu
						trúc đề thi toeic</a></li>
				<li><a href="news/5/chinh-sach-bao-mat.html">Chính sách bảo
						mật</a></li>
				<li><a href="http://www.studyphim.vn/" target="_blank">Phim
						Engsub</a></li>
			</ul>
		</div>
	</div>
	<div class="width logo-bar">
		<ul class="logo-left">
			<li><a class="current" href="index.html">Trang chủ</a></li>
			<li><a
				href="news/36/gioi-thieu-tinh-nang-tren-website-toeic123vn.html">Giới
					thiệu về website</a></li>
			<li><a
				href="vip-upgradefcee.html?utm_source=Homepage&amp;utm_medium=Menu">|&nbsp;&nbsp;<span
					class="vip">&nbsp; NÂNG CẤP VIP &nbsp;</span></a></li>

		</ul>
		<ul class="logo-middle">
			<a href="index.html"><img
				src="<%=request.getContextPath()%>/templates/public/images/logo.png"
				height="35" /></a>
		</ul>
		 <c:choose>
		    <c:when test="${ empty objmember}">
		        <ul class="logo-right">
					<li><a href="#" class="reg_open_modal">Đăng ký</a></li>
					<li><a href="#" class="login_open_modal">Đăng nhập</a></li>
				</ul>
		    </c:when>    
		    <c:otherwise>
		        <ul class="logo-right">
					<li><a href="#" class="create_examination">TẠO ĐỀ THI</a></li>
					<li><a href="#" class="login_open_modal">THOÁT</a></li>
				</ul>
		    </c:otherwise>
		</c:choose>	
		
	</div>
	<c:choose>
		    <c:when test="${ empty objmember}">
		        <div class="full-width main-banner">
					<h3>Luyện Thi TOEIC online hiệu quả !</h3>
					<h4>
						<i class="fa fa-check"></i> Website luyện thi TOEIC trực tuyến số 1
						tại Việt Nam
					</h4>
					<h4>
						<i class="fa fa-check"></i> Hơn 14000+ câu hỏi, 500+ bộ đề luyện thi
						TOEIC có đáp án<br>
					</h4>
					<h4>
						<i class="fa fa-check"></i> Truy cập ngay với 199.000 VNĐ / 1 năm,
						luyện thi TOEIC online thoải mái không giới hạn tài liệu
					</h4>
					<a href="#" class="reg_open_modal">Đăng ký ngay</a>
				</div>
		    </c:when>    
		</c:choose>	
	<!-- end top -->