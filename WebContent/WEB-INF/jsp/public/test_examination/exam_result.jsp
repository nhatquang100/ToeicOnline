<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<!-- content -->
<div class="content">
	<div class="content-box">
		<div class="header">
			<div class="h3-container">
				<h3 class="title_link">
					<a href="${pageContext.request.contextPath}/">Thi thử TOEIC</a> » <a href="${pageContext.request.contextPath}/"> Thi bài khác</a>
				</h3>
				<span></span> <a class="learn-all" href="${pageContext.request.contextPath}/">⟨ Quay
					trở lại </a>
			</div>
		</div>

		<div class="box-body">
			<div class="img"
				style="background: url(${pageContext.request.contextPath}/upload/${examination.image}); background-size: cover;"></div>
			<div class="info">
				<h3>Bộ đề ${examination.examinationid }</h3>
				<div class="meter">
					<span style="width: 0%"></span>
				</div>
				<i class="fa fa-plus-square"></i> Ngày tạo: <b>${examination.datecreate}</b><br>
				<i class="fa fa-plus-square"></i> Tổng số câu hỏi: <b>${sum }</b><br>
				<c:if test="${examination.leveldifficult == 1 }">
					<i class="fa fa-plus-square"></i> Độ khó: <b>Easy</b><br>
				</c:if>
				<c:if test="${examination.leveldifficult == 2 }">
					<i class="fa fa-plus-square"></i> Độ khó: <b>Normal</b><br>
				</c:if>
				<c:if test="${examination.leveldifficult == 3 }">
					<i class="fa fa-plus-square"></i> Độ khó: <b>Hard</b><br>
				</c:if>
				<i class="fa fa-plus-square"></i> Tổng số câu/Số câu đúng: <b>${sum }/${point}</b><br>
				<a class="button" id="exam-lnk" href="${pageContext.request.contextPath}/result/detail/${resul}">Xem chi tiết kết quả</a>
			</div>
		</div>
	</div>
	
</div>