<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>

<!-- right sidebar -->
<div class="sidebar-right" >
	
	<c:choose>
	    <c:when test="${ empty objmember}">
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
	    </c:when>    
	    <c:otherwise>
			<div class="sidebar-item userinfo">
				<div class="sidebar-userinfo">
					<div class="row">
						<div class="col1">
							<div class="img">
								<img src="${pageContext.request.contextPath}/upload/${objmember.avatar}"
									width="55" height="55">
							</div>
							<div style="display: inline;">
								<img height="1" width="1" style="border-style: none;" alt=""
									src="//www.googleadservices.com/pagead/conversion/973949038/?label=Yn4WCNaYimkQ7pC10AM&amp;guid=ON&amp;script=0">
							</div>
						</div>
						<div class="col2">
							<span class="username">${objmember.membername }</span> <br> <span
								class="score">0/47664</span>
						</div>
					</div>
					<div class="row">
						<div class="row">
							<div class="col1">
								<span>Từ vựng</span>
							</div>
							<div class="col2">
								<div class="meter">
									<span style="width: 0%"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col1">
								<span>Luyện nghe</span>
							</div>
							<div class="col2">
								<div class="meter">
									<span style="width: 0%"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col1">
								<span>Ngữ pháp</span>
							</div>
							<div class="col2">
								<div class="meter">
									<span style="width: 0%"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col1">
								<span>Thi Thử</span>
							</div>
							<div class="col2">
								<div class="meter">
									<span style="width: 0%"></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
	<div class="sidebar-spacing">&nbsp;</div>
	<div class="sidebar-item member">
		<div class="sidebar-member">
			<div class="sidebar-member-number">000${allmember}</div>
		</div>
	</div>
	<c:if test="${not empty objmember}">
		<div class="sidebar-spacing">&nbsp;</div>
		<div class="sidebar-item chatform">
             <div class="quick-question-label"></div>
             <div class="quick-question-form">
                 <form class="form new_comment" id="sidebar-question">
                 <label for="question">Câu hỏi hay câu trả lời của thành viên thường phải chờ giáo viên duyệt mới được hiển thị. Nếu nói bậy bạn sẽ bị xóa nick.</label>
                 <textarea id="question" name="content" placeholder="Câu hỏi của bạn"></textarea>
				 <input type="hidden" name="section" id="form-section" value="question">
				 <input type="hidden" name="reply_for" id="form-reply_for" value="0">
                 <input type="submit" value="Gửi">
                 </form>
             </div>
         </div>
	</c:if>
	
    <div class="sidebar-spacing">&nbsp;</div>
	<div class="sidebar-item chatbox">
		<div class="sidebar-chatbox">
			<div class='chat-item'>
				<span class='chat-user'>Nhatquang100</span>
				<p class='chat-content'>Nội dung bài thi rất hay!!</p>
				<p class='chat-time'>2018-01-31 10:20:28</p>
				<button class='reply-for' reply-for='755' section='question'>Trả
					lời</button>
				<div class='chat-item-reply'>
					<span class='chat-user'>Admin <span class='vip'>Quản
							trị viên</span></span>
					<p class='chat-content'>Cảm ơn em ^^</p>
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
			<c:forEach items="${newmember }" var="objmember1">
				<div>
					<img src='${pageContext.request.contextPath}/upload/${objmember1.avatar}'
						width='30' height='30' />
					<div>${objmember1.membername}</div>
					<span class='vip'>VIP</span>
				</div>
			</c:forEach>	
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