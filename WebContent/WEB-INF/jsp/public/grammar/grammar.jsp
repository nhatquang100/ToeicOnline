<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<div class="content">
	<div class="content-box">
		<div class="header">
			<div class="h3-container">
				<h3 class="title_link">
					<a href="#">NGỮ PHÁP TOEIC </a> » <a href="/category/5">NHỮNG NGỮ PHÁP THÔNG DỤNG CHO KỲ THI TOEIC</a>
				</h3>
				
			</div>
		</div>

		<div class="box-body">
		
			<div class="info">
				<h3>Chủ Đề : ${cateGrammar.categorygrammarname }</h3>
				<!-- <div class="meter">
					<span style="width: 0%"></span>
				</div>
				<i class="fa fa-plus-square"></i> Mức độ hoàn thành: <b>0%</b><br>
				<i class="fa fa-plus-square"></i> Tổng số câu hỏi: <b>54</b><br>
				<i class="fa fa-plus-square"></i> Tổng số câu hỏi đã hoàn thành: <b>0</b><br>
				<a class="button" id="exam-lnk" href="/do-exam/56">Học ngay</a> -->
			</div>
		</div>
		<div class="infobox">
			<div
				class="content-box vip-upgrade ui-accordion ui-widget ui-helper-reset"
				id="accordion" role="tablist">

					<h2 style="color: red">Ngữ Pháp</h2>
					<table class="table">
						<thead>
							<tr>
								<th>Grammar</th>
								<th>Explain</th>
								<th>Example</th>
							</tr>
						</thead>
						
						<tbody>
						<c:forEach items="${grammar}" var="grammarDetail">
							<tr class="active">
								<td>${grammarDetail.grammarname }</td>
								<td>${grammarDetail.content }</td>
								<td>${grammarDetail.example }</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>




			</div>
		</div>
		<script>
			/* $(function() {
				$("#accordion").accordion({
					active : 0,
					heightStyle : "content",
				});
			}); */
		</script>
	</div>
	
</div>
<!-- <script>
	$('#paging-56').twbsPagination({
		totalPages : 0,
		visiblePages : 3,
		href : '/exam/56?page={{number}}',
		next : '',
		last : '»',
		first : '',
		prev : '',
		onPageClick : function(event, page) {
			//
		}
	});
</script> -->