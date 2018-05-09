<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<div class="content">
	<div class="content-box">
		<div class="header">
			<div class="h3-container">
				<h3 class="title_link">
					<a href="#">Từ vựng TOEIC </a> » <a href="/category/5">600
						TỪ VỰNG THÔNG DỤNG CHO KỲ THI TOEIC</a>
				</h3>
				
			</div>
		</div>

		<div class="box-body">
			<div class="img"
				style="background: url(<%=request.getContextPath()%>/templates/public/images/TOEICSMART-Red-Grammar-300x424.jpg); background-size: cover;"></div>
			<div class="info">
				<h3>Chủ Đề : ${cateVocal.categoryVocabularyName }</h3>
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

				<h3
					class="ui-accordion-header ui-state-default ui-accordion-header-active ui-state-active ui-corner-top ui-accordion-icons"
					role="tab" id="ui-id-8" aria-controls="ui-id-9"
					aria-selected="true" aria-expanded="true" tabindex="0">
					<span class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-s"></span>Danh
					sách từ mới
				</h3>
					<h2 style="color: red">Vocaburaly</h2>
					<table class="table">
						<thead>
							<tr>
								<th>Word</th>
								<th>Transcription</th>
								<th>Vietnamese Equivalents</th>
							</tr>
						</thead>
						
						<tbody>
						<c:forEach items="${vocal}" var="vocalDetail">
							<tr class="active">
								<td>${vocalDetail.vocabularyname }</td>
								<td>${vocalDetail.spelling }</td>
								<td>${vocalDetail.vocabularymean }</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>

			</div>
		</div>
		<script>
			$(function() {
				$("#accordion").accordion({
					active : 0,
					heightStyle : "content",
				});
			});
		</script>
	</div>
	
</div>
<script>
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
</script>