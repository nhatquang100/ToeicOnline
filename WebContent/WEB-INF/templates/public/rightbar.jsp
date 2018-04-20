<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>

<!-- right sidebar -->
<div class="sidebar-right">
	<div class="sidebar-item login">
		<div class="login-box">
			<a class="login_open_modal" href="#">Đăng nhập</a> 
			<a href="#" class="reg_open_modal">Đăng ký</a>
		</div>
		<div class="login-box-body">
			<form class="form login" method="POST" action="${pageContext.request.contextPath}/login"> <!-- id="sidebar-login-form" -->
				<div class="form-line">
					<!--<a href="https://www.facebook.com/v2.4/dialog/oauth?client_id=1081182245235103&amp;state=b64a9795f34015da6d6579f92a4111c3&amp;response_type=code&amp;sdk=php-sdk-5.0.0&amp;redirect_uri=https%3A%2F%2Fwww.toeic123.vn%3A443%2Flogin_fb_callback&amp;scope=email&redirect_uri=https://www.toeic123.vn:443/login_fb_callback" class="social-login facebook"><i class="fa fa-facebook"> </i>Đăng nhập qua Facebook</a>-->
					<a
						href="https://accounts.google.com/o/oauth2/auth?access_type=online&amp;approval_prompt=auto&amp;response_type=code&amp;scope=profile%20email&amp;client_id=790559908503-c98fftp4r7pv8r64vm3ou7gsoj52qlfl.apps.googleusercontent.com&amp;redirect_uri=https%3A%2F%2Fwww.toeic123.vn%2Flogin_google_callback&amp;state"
						class="social-login google"><i class="fa fa-google-plus">
					</i>Đăng nhập qua Google+</a>
				</div>
				<div class="form-line info" id="sidebar-login-info"></div>
				<div class="form-line">
					<label for="username">Username:</label> <input type="text"
						id="username" name="username" />
				</div>
				<div class="form-line">
					<label for="password">Mật khẩu:</label> <input type="password"
						id="password" name="password" />
				</div>
				<div class="form-line">
					<a href="forgot-password.html" class="forgot-pass">Quên mật
						khẩu?</a> <input type="submit" value="Login" />
				</div>

			</form>
			<script>
				$(document).ready(function() {
					login_init('sidebar-login-form', 'sidebar-login-info');
				});
			</script>
		</div>
	</div>
	<div class="sidebar-spacing">&nbsp;</div>
	<div class="sidebar-item member">
		<div class="sidebar-member">
			<div class="sidebar-member-number">33624</div>
		</div>
	</div>

	<div class="sidebar-spacing">&nbsp;</div>
	<div class="sidebar-item chatbox">
		<div class="sidebar-chatbox">
			<div class='chat-item'>
				<span class='chat-user'>pro le</span>
				<p class='chat-content'>ad cho hỏi phần nội dung của ets 1200 và
					ets 1000 đã có trong nội dung thi thử của web mình chưa ạ</p>
				<p class='chat-time'>2018-01-31 10:20:28</p>
				<button class='reply-for' reply-for='755' section='question'>Trả
					lời</button>
				<div class='chat-item-reply'>
					<span class='chat-user'>Admin <span class='vip'>Quản
							trị viên</span></span>
					<p class='chat-content'>Chào em. Các đề thi này đều đã có trên
						website nhé</p>
					<p class='chat-time'>2018-01-31 17:37:08</p>
				</div>
			</div>
		</div>
	</div>
	<div class="sidebar-spacing">&nbsp;</div>
	<div class="sidebar-item vip-box">
		<div class="header"></div>
		<div class="content-body">
			<div class="vip-box-body">
				<div>
					<img src='upload/avatars/44f8e160b5bd6186a0f4e0bd7d63fd9d.jpg'
						width='30' height='30' />
					<div>tu vuvan</div>
					<span class='vip'>VIP</span>
				</div>
			</div>
		</div>
	</div>
	<div class="sidebar-spacing">&nbsp;</div>
	<div class="sidebar-item news">
		<div class="news-body tabs">
			<ul>
				<li><a href="#tabs-1">Tất cả</a></li>
				<li><a href="#tabs-2">Blog</a></li>
				<li><a href="#tabs-3">Tin Tức</a></li>
				<li><a href="#tabs-4">Bài Giảng</a></li>
			</ul>
			<div id="tabs-1">
				<div class='row'>
					<div class='icon'>
						<i class='fa fa-circle'></i>
					</div>
					<div class='title'>
						<a
							href='news/107/toeic-900-tong-hop-cac-giao-trinh-luyen-thi-toeic-900-diem.html'>TOEIC
							900: Tổng hợp các giáo trình luyện thi TOEIC 900 điểm</a>
					</div>
					<div class='date'>02/02/2018</div>
				</div>
			</div>
			<div id="tabs-2">
				<div class='row'>
					<div class='icon'>
						<i class='fa fa-circle'></i>
					</div>
					<div class='title'>
						<a
							href='news/107/toeic-900-tong-hop-cac-giao-trinh-luyen-thi-toeic-900-diem.html'>TOEIC
							900: Tổng hợp các giáo trình luyện thi TOEIC 900 điểm</a>
					</div>
					<div class='date'>02/02/2018</div>
				</div>
			</div>
			<div id="tabs-3">
				<div class='row'>
					<div class='icon'>
						<i class='fa fa-circle'></i>
					</div>
					<div class='title'>
						<a
							href='news/154/gioi-thieu-tinh-nang-tren-website-toeic-123.html'>Giới
							thiệu tính năng trên website Toeic 123</a>
					</div>
					<div class='date'>26/07/2017</div>
				</div>
			</div>
			<div id="tabs-4"></div>
		</div>
	</div>
</div>
<!-- end right sidebar -->
</div>