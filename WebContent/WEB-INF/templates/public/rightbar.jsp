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
								href="${pageContext.request.contextPath}/"
								class="social-login google"><i class="fa fa-google-plus">
							</i>Đăng nhập qua Google+</a>
						</div>
						<div class="form-line info" id="sidebar-login-info"></div>
						<div class="form-line">
							<label for="username">Username:</label> <input type="text"
								id="username" name="username" minlength=6 maxlength=30 required/>
						</div>
						<div class="form-line">
							<label for="password">Mật khẩu:</label> <input type="password"
								id="password" name="password" minlength=6 maxlength=30 required/>
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
			<div id="tabs-4">
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
		</div>
	</div>
</div>
<!-- end right sidebar -->