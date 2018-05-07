<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<!-- content -->
<div class="content">
	<div class="content-box">
		<div class="header">
			<div class="h3-container">
				<h3 class="title_link">
					<a href="${pageContext.request.contextPath}/">Thi thử TOEIC</a> » Thi thử toeic Full
				</h3>
				<!--<span>94 bộ đề, 9400 bài tập</span>-->
				<a class="learn-all" href="${pageContext.request.contextPath}/">⟨ Quay trở lại </a>
			</div>
		</div>
		<div class="infobox">
			<div class="info">
				<p>
					Tổng hợp các bộ đề <em><strong><a
							href="${pageContext.request.contextPath}/">thi thử toeic</a></strong></em>
				</p>
			</div>
		</div>
		<div class="box">
			<c:forEach items="${listresult }" var="objresult">
					<div class="box-item">
						<a href="${pageContext.request.contextPath}/exam/getresult/detail/${objresult.resultid }">
							<div class="img"
								style="background: url(<%=request.getContextPath()%>/templates/public/images/TOEICSMART-Red-Grammar-300x424.jpg); background-size: cover;">
								<p>0/100</p>
							</div>
							<div class="meter">
								<span style="width: 0%"></span>
							</div>
							<h4>Đề:${objresult.examinationid}</h4> 
							<h4>Date:${objresult.datecreate}</h4> 
							<a class="learn" href='${pageContext.request.contextPath}/exam/getresult/detail/${objresult.resultid }'>Xem ngay</a>
						</a>
					</div>
				</c:forEach>
		</div>
		<div class="spacing"></div>
		<%-- <div class="paging">
			<ul class="pagination-sm pagination" id="paging-34">
				<li class="page active"><a href="${pageContext.request.contextPath}/all_exam_listening">1</a></li>
				<li class="page"><a href="${pageContext.request.contextPath}/all_exam_listening">2</a></li>
				<li class="last"><a href="${pageContext.request.contextPath}/all_exam_listening">»</a></li>
			</ul>
		</div>
		<script>
			$('#paging-34').twbsPagination({
				totalPages : 2,
				visiblePages : 3,
				href : '/category/34?page={{number}}',
				next : '',
				last : '»',
				first : '',
				prev : '',
				onPageClick : function(event, page) {
					//
				}
			});
		</script> --%>
		<div class="spacing"></div>
	</div>
</div>