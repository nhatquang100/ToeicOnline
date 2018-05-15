<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<div class="full-width green-bg footer-container">
	<div class="width footer">
		<div class="logo">ToeicOline</div>
		<div class="copyright">
			Thực hiện bởi: Quang-Thiện-Hiếu-Q.Anh-Trình 05/2018<br />
		</div>

		<div class="icons">
			<ul>
				<li><a href="page/1/thong-bao.html">Giới thiệu</a></li>
				<li><a href="page/2/dieu-khoan-su-dung.html">Điều khoản</a></li>
				<li><a href="#">Quảng cáo</a></li>
				<li><a href="#">FAQs</a></li>
				<li><a href="#" id="create_contact">Liên hệ</a></li>
				<li><a href="#" class="login_open_modal">Đăng nhập</a></li>
				<li><a href="#" class="reg_open_modal">Đăng ký</a></li>
				<li><a href="#"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
				<li><a href="#"><i class="fa fa-youtube"></i></a></li>
			</ul>
		</div>
	</div>
</div>

<div id="modal_create_contact" class="modal">
	<div class="modal-body">
		<form method="POST" action="${pageContext.request.contextPath}/create_contact" class="form-modal"> <!-- id="login-form" -->
			<div class="row header">
				<div class="header-label ">LIÊN HỆ</div>
				<hr>
			</div>
			
			<div class="row">
				<div class="info" id="login-info"></div>
			</div>
			
			<div class="row">
				<span class="label">Tiêu đề:</span> <input style="margin-left:50px;" type="text" value=""
					name="contacttitles" class="form-control"  required/>
			</div>
			
			<div class="row">
				<span style="width:100" class="label">Mail:</span> <input type="email" value="" style="width:348px;height:30px;margin-left:-74px;"
					name="frommail" class="form-control" required/>
			</div>
			
			<div class ="row">
				content: <textarea style="width:348px;" rows="2" cols="40" name="content" required></textarea></br>
			</div>
			
			<div class="row">
				<span class="label"></span> <input type="submit"
					class="green-button" value="Gửi liên hệ" />
			</div>
		</form>
	</div>
</div>



<div id="modal_login" class="modal">
	<div class="modal-body">
		<form method="POST" action="${pageContext.request.contextPath}/login" class="form-modal" > <!-- id="login-form" -->
			<div class="row header">
				<div class="header-label ">Đăng nhập</div>
				<hr>
			</div>
			<div class="row">
				<div class="info" id="login-info"></div>
			</div>
			<div class="row">
				<span class="label">Username:</span> <input type="text" value=""
					name="username" class="form-control" minlength=6 maxlength=30 required/>
			</div>
			<div class="row">
				<span class="label">Mật khẩu:</span> <input type="password" value=""
					name="password" class="form-control" minlength=6 maxlength=30 required/>
			</div>
			<div class="row align-right">
				Bạn chưa có tài khoản? Tạo tài khoản <a href="#"
					class="reg_open_modal">tại đây</a>
			</div>
			<div class="row align-right">
				<a href="/forgot-pass" class="reg_open_modal">Quên mật khẩu</a>
			</div>
			<div class="row">
				<span class="label"></span> <input type="submit"
					class="green-button" value="Đăng Nhập" />
			</div>
			<div class="row">
				<span class="label"></span> <a
					href="https://accounts.google.com/o/oauth2/auth?access_type=online&amp;approval_prompt=auto&amp;response_type=code&amp;scope=profile%20email&amp;client_id=790559908503-c98fftp4r7pv8r64vm3ou7gsoj52qlfl.apps.googleusercontent.com&amp;redirect_uri=https%3A%2F%2Fwww.toeic123.vn%2Flogin_google_callback&amp;state"
					class="social-login google" style="width: 65%;"><i
					class="fa fa-google-plus"> </i>Đăng nhập qua Google+</a> <br>
				<p style="float: right;">
					<i>Click để đăng nhập thông qua tài khoản gmail của bạn</i>
				</p>
			</div>
			<div class="row">
				<span class="label"></span> <a
					href="https://www.facebook.com/v2.4/dialog/oauth?client_id=1081182245235103&amp;state=b64a9795f34015da6d6579f92a4111c3&amp;response_type=code&amp;sdk=php-sdk-5.0.0&amp;redirect_uri=https%3A%2F%2Fwww.toeic123.vn%3A443%2Flogin_fb_callback&amp;scope=email&redirect_uri=https://www.toeic123.vn:443/login_fb_callback"
					class="social-login facebook"><i class="fa fa-facebook"> </i>Đăng
					nhập qua Facebook</a> <a
					href="https://accounts.google.com/o/oauth2/auth?access_type=online&approval_prompt=auto&response_type=code&scope=profile%20email&client_id=790559908503-c98fftp4r7pv8r64vm3ou7gsoj52qlfl.apps.googleusercontent.com&redirect_uri=https%3A%2F%2Fwww.toeic123.vn%2Flogin_google_callback&state"
					class="social-login google"><i class="fa fa-google-plus"> </i>Đăng
					nhập qua Google+</a>
			</div>
		</form>
		<script>
			$(document).ready(function() {
				login_init('login-form', 'login-info');
			});
		</script>
	</div>
</div>

<div id="modal_reg" class="modal">
	<div class="modal-body">
		<form method="POST" action="${pageContext.request.contextPath}/registry" class="form-modal"
			enctype="multipart/form-data" > <!-- id="reg-form" -->
			<div class="row header">
				<div class="header-label reader-icon">Đăng ký</div>
			</div>
			<div class="row">
				<div class="info" id="reg-info"></div>
			</div>
			<div class="row">
				<span class="label">Avatar:</span> <input type="hidden"
					name="MAX_FILE_SIZE" value="104857600"> <input type="file"
					id="file" name="avatarfile" required />
			</div>
			<div class="row">
				<span class="label">Họ và tên <span class="red">*</span>:
				</span> <input type="text" value="" name="membername" maxlength=50 class="form-control" required/>
			</div>
			<div class="row">
				<span class="label">Username <span class="red">*</span>:
				</span> <input type="text" value="" name="username" class="form-control" minlength=6 maxlength=30 required/>
			</div>
			<div class="row">
				<span class="label">Email <span class="red">*</span>:
				</span> <input type="email" value="" name="email" class="form-control" required/>
			</div>
			<div class="row">
				<span class="label">Mật khẩu <span class="red">*</span>:
				</span> <input type="password" value="" name="password"
					class="form-control" minlength=6 maxlength=30 required/>
			</div>
			<div class="row">
				<span class="label">Xác nhận <span class="red">*</span>:
				</span> <input type="password" value="" name="password_confirm"
					class="form-control" minlength=6 maxlength=30 required/>
			</div>
			<div class="row">
				<span class="label">Số ĐT:</span> <input type="text" value=""
					name="phonenumber" class="form-control" pattern="\d*" minlength=10 maxlength=12 required/>
			</div>
			<div class="row">
				<span class="label">&nbsp;</span>
				<div class="form-control">
					<input type="checkbox" name="accept" class="" value="1" /> Đã đọc
					và chấp nhận <a href="#" target="_blank">các điều khoản</a>
				</div>
			</div>
			<div class="row">
				<span class="label"></span> <input type="submit"
					class="green-button" value="Đăng ký" />
			</div>
			<div class="row">
				<span class="label"></span>
				<!--<a href="https://www.facebook.com/v2.4/dialog/oauth?client_id=1081182245235103&amp;state=b64a9795f34015da6d6579f92a4111c3&amp;response_type=code&amp;sdk=php-sdk-5.0.0&amp;redirect_uri=https%3A%2F%2Fwww.toeic123.vn%3A443%2Flogin_fb_callback&amp;scope=email&redirect_uri=https://www.toeic123.vn:443/login_fb_callback" class="social-login facebook"><i class="fa fa-facebook"> </i>Đăng nhập qua Facebook</a>-->
				<a
					href="https://accounts.google.com/o/oauth2/auth?access_type=online&amp;approval_prompt=auto&amp;response_type=code&amp;scope=profile%20email&amp;client_id=790559908503-c98fftp4r7pv8r64vm3ou7gsoj52qlfl.apps.googleusercontent.com&amp;redirect_uri=https%3A%2F%2Fwww.toeic123.vn%2Flogin_google_callback&amp;state"
					class="social-login google"><i class="fa fa-google-plus"> </i>Đăng
					nhập qua Google+</a>
			</div>
		</form>
		<script>
			$(document).ready(function() {
				reg_init('reg-form', 'reg-info');
			});
		</script>
	</div>
</div>

<div id="modal_reg_success" class="modal">
	<div class="modal-body">
		<div class="form-modal">
			<div class="row header">
				<div class="header-label reader-icon">Đăng ký</div>
			</div>
			<div class="row">
				<div class="info">
					<span class="green">Bạn đã đăng ký thành công, vui lòng xác
						nhận email và đăng nhập để có thể sử dụng trang web!</span>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="modal-reply-for" class="modal">
	<div class="modal-body">
		<div class="form-modal">
			<div class="row header">
				<div class="header-label reader-icon">Trả lời</div>
			</div>
			<form method="POST" action="#" class="form-modal new_comment"
				id="reply-form">
				<input type="hidden" name="section" value=""> <input
					type="hidden" name="reply_for" value="">
				<div class="row">
					<span class="label">Nội dung:</span>
					<textarea name="content" class="form-control"
						placeholder="Nhập nội dung trả lời của bạn"></textarea>
				</div>
				<div class="row">
					<span class="label">&nbsp;</span> <input type="submit"
						class="green-button" value="Gửi" />
				</div>
			</form>
		</div>
	</div>
</div>
</body>
<script async src="../pagead2.googlesyndication.com/pagead/js/f.txt"></script>
<script>
	(adsbygoogle = window.adsbygoogle || []).push({
		google_ad_client : "ca-pub-3491591331712194",
		enable_page_level_ads : true
	});
</script>
<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script', '../www.google-analytics.com/analytics.js',
			'ga');

	ga('create', 'UA-77759032-1', 'auto');
	ga('send', 'pageview');
</script>
<div id="fb-root"></div>
<script>
	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id))
			return;
		js = d.createElement(s);
		js.id = id;
		js.src = "../connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.6";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
</script>
<!-- Facebook Pixel Code -->
<script>
	!function(f, b, e, v, n, t, s) {
		if (f.fbq)
			return;
		n = f.fbq = function() {
			n.callMethod ? n.callMethod.apply(n, arguments) : n.queue
					.push(arguments)
		};
		if (!f._fbq)
			f._fbq = n;
		n.push = n;
		n.loaded = !0;
		n.version = '2.0';
		n.queue = [];
		t = b.createElement(e);
		t.async = !0;
		t.src = v;
		s = b.getElementsByTagName(e)[0];
		s.parentNode.insertBefore(t, s)
	}(window, document, 'script', '../connect.facebook.net/en_US/fbevents.js');
	fbq('init', '879743565410548');
	fbq('track', 'PageView');
</script>
<noscript>
	<img height="1" width="1" style="display: none"
		src="https://www.facebook.com/tr?id=879743565410548&amp;ev=PageView&amp;noscript=1" />
</noscript>

<div id="modal_create_examination" class="modal">
	<div class="modal-body">
		<form id="formcreateexamination" method="POST" action="${pageContext.request.contextPath}/create_examination" class="form-modal" enctype="multipart/form-data"> <!-- id="login-form" -->
			<div class="row header">
				<div class="header-label ">TẠO ĐỀ THI</div>
				<hr>
			</div>
			
			<div class="row">
				<div class="info" id="login-info"></div>
			</div>
			
			<div class="row">
				<span class="label">Tên đề thi:</span> <input type="text" value=""
					name="nameexamination" class="form-control" required/>
			</div>
			
			<div class ="row">
				Hình đại diện : <input type="file"  value="Upload File image"  name="multiimage" required/><br />
			</div>
			
			<div class="row">
				<label for="categoryexamination" class="label" >Loại đề thi</label> 
				<select class="form-control" name="categoryexamination" style="margin-top: 10px;width: 228px;height: 28px;border: 1px solid #ccc">
					<option value="1">Listening</option>
					<option value="2">Reading</option>
					<option value="3">Listening +  Reading</option>
				</select>
			</div>
			
			<div class="row">
				<label for="leveldifficult" class="label" >Chọn level</label> 
				<select class="form-control" name="leveldifficult" style="margin-top: 10px;width: 228px;height: 28px;border: 1px solid #ccc">
					<option value="1">Easy</option>
					<option value="2">Normal</option>
					<option value="3">Hard</option>
				</select>
			</div>
			
			<div class="row">
				<label for="chosemethod" class="label" >Hình thức tạo:</label> 
				<select class="form-control" id="chosemethod" name="chosemethod" style="margin-top: 10px;width: 228px;height: 28px;border: 1px solid #ccc">
					<option value="1">System Random</option>
					<option value="2">Tự chọn câu hỏi</option>
				</select>
			</div>
			
			<div class="row">
				<span class="label"></span> <input  id="buttoncreate" type="submit"
					class="green-button" value="Tạo đề thi" />
			</div>
		</form>
	</div>
</div>

<script type="text/javascript">
	$('#buttoncreate').click(function(){
		var select = $('#chosemethod').val();
		if(select == 1){
			$('#formcreateexamination').attr('action', '${pageContext.request.contextPath}/create_examination');
		}else{
			$('#formcreateexamination').attr('action', '${pageContext.request.contextPath}/chosequestion');
		}   
	});
</script>
