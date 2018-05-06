<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<!-- content -->
<div class="content">
	<div class="content-box">
		<div class="header">
			<div class="h3-container">
				<h3 class="title_link">
					<a href="${pageContext.request.contextPath}/">Thi thử TOEIC</a> » <a href="${pageContext.request.contextPath}/exam_sumary">Thi
						thử toeic Full - Phần Reading</a>
				</h3>
				<span></span> <a class="learn-all" href="${pageContext.request.contextPath}/">⟨ Quay
					trở lại</a>
			</div>
		</div>

		<div class="box-body">
			<div class="img"
				style="background: url(${pageContext.request.contextPath}/upload/${sumaryexam.image}); background-size: cover;"></div>
			<div class="info">
				<h3>Bộ đề ${sumaryexam.examinationid }</h3>
				<div class="meter">
					<span style="width: 0%"></span>
				</div>
				<i class="fa fa-plus-square"></i> Ngày tạo: <b>${sumaryexam.datecreate}</b><br>
				<i class="fa fa-plus-square"></i> Tổng số câu hỏi: <b>100</b><br>
				<c:if test="${sumaryexam.leveldifficult == 1 }">
					<i class="fa fa-plus-square"></i> Độ khó: <b>Easy</b><br>
				</c:if>
				<c:if test="${sumaryexam.leveldifficult == 2 }">
					<i class="fa fa-plus-square"></i> Độ khó: <b>Normal</b><br>
				</c:if>
				<c:if test="${sumaryexam.leveldifficult == 3 }">
					<i class="fa fa-plus-square"></i> Độ khó: <b>Hard</b><br>
				</c:if>
				<a class="button" id="exam-lnk" href="${pageContext.request.contextPath}/exam/${sumaryexam.examinationid}">Làm bài
					ngay</a>
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
					<span class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-s"></span>VIDEO
					HƯỚNG DẪN GIẢI CHI TIẾT
				</h3>

				<div
					class="box-body ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom ui-accordion-content-active"
					id="ui-id-9" aria-labelledby="ui-id-8" role="tabpanel"
					aria-hidden="false" style="display: block;">

					<iframe width="110%" height="300px"
						src="https://www.youtube.com/embed/MuDb3Pc8nmI" frameborder="0"
						style="width: 100%; height: 300px;" allowfullscreen=""></iframe>

				</div>

				<h3
					class="ui-accordion-header ui-state-default ui-corner-all ui-accordion-icons"
					role="tab" id="ui-id-10" aria-controls="ui-id-11"
					aria-selected="false" aria-expanded="false" tabindex="-1">
					<span class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-e"></span>GIỚI
					THIỆU CẤU TRÚC ĐỀ THI
				</h3>

				<div
					class="box-body ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom"
					id="ui-id-11" aria-labelledby="ui-id-10" role="tabpanel"
					aria-hidden="true" style="display: none;">

					BỘ ĐỀ 1 - Tổng hợp các câu hỏi trong phần&nbsp;<em><strong><a
							href="${pageContext.request.contextPath}/">thi thử toeic</a></strong></em>&nbsp;thực
					tế phần Reading gồm 100 câu hỏi.&nbsp; Phần thi Reading&nbsp;(đọc
					hiểu) được thực hiện ngay sau khi thí sinh kết thúc phần thi nghe.
					Phần thi này dùng để đánh giá vốn từ vựng, ngữ pháp tiếng Anh và
					khả năng đọc hiểu các đoạn văn ngắn. Các câu hỏi và phần thông tin
					liên quan đều được in trực tiếp trên đề thi. Có tất cả&nbsp;100
					câu&nbsp;và thí sinh có&nbsp;75 phút&nbsp;để hoàn thành.

					<table border="1" cellpadding="5" cellspacing="0"
						style="width: 100%">
						<tbody>
							<tr>
								<td style="vertical-align: middle; width: 50px">Phần B</td>
								<td style="vertical-align: middle; width: 150px">Nội dung
									thi</td>
								<td style="vertical-align: middle; width: 50px">Số câu</td>
								<td style="vertical-align: middle">Chi tiết</td>
							</tr>
							<tr>
								<td style="vertical-align: middle">Phần 5</td>
								<td style="vertical-align: middle">Hoàn thành câu</td>
								<td style="vertical-align: middle">40 câu</td>
								<td style="vertical-align: middle">Bạn cần phải chọn từ
									đúng nhất để hoàn thành câu.</td>
							</tr>
							<tr>
								<td style="vertical-align: middle">Phần 6</td>
								<td style="vertical-align: middle">Hoàn thành đoạn văn</td>
								<td style="vertical-align: middle">12 câu</td>
								<td style="vertical-align: middle">Mỗi đoạn văn có 03 chỗ
									trống.&nbsp;Bạn phải điền từ thích hợp còn thiếu vào mỗi chỗ
									trống trong đoạn văn đó.</td>
							</tr>
							<tr>
								<td rowspan="2" style="vertical-align: middle">Phần 7</td>
								<td style="vertical-align: middle">Đoạn đơn</td>
								<td style="vertical-align: middle">28 câu</td>
								<td style="vertical-align: middle">Đề thi có thể có từ 7-10
									đoạn văn đơn. Hết mỗi đoạn văn sẽ có 2-5 câu hỏi.</td>
							</tr>
							<tr>
								<td style="vertical-align: middle">Đoạn kép</td>
								<td style="vertical-align: middle">20 câu</td>
								<td style="vertical-align: middle">Trong phần này sẽ có từ
									04 cặp đoạn văn. Hết mỗi cặp đoạn văn sẽ có 5 câu hỏi.</td>
							</tr>
						</tbody>
					</table>

					Chúc mọi người&nbsp;<em><strong><a
							href="${pageContext.request.contextPath}/">luyện thi toeic</a></strong></em>&nbsp;hiệu quả
					cùng với website nhé

				</div>

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
	<div class="content-box comment-box">
		<div class="comment-header">
			<h3>Bình luận (0)</h3>
		</div>
		<div class="comment-new">
			<div class="img">
				<img width="100%"
					src="/upload/avatars/9eef66c543dc88b9f61d4b686bf7f563">
			</div>
			<form class="form new_comment" id="exam-comment">
				<textarea id="question" name="content"
					placeholder="Bình luận của bạn"></textarea>
				<input type="hidden" name="section" id="form-section"
					value="comment"> <input type="hidden" name="reply_for"
					id="form-reply_for" value="0"> <input type="hidden"
					name="cat" id="form-cat" value="48800"> <input
					type="submit" value="Gửi">
			</form>
		</div>
		<div class="clearboth">&nbsp;</div>
		<div class="comment-body"></div>
		<div class="spacing"></div>
		<div class="paging">
			<ul class="pagination-sm pagination" id="paging-48800"></ul>
		</div>
		<script>
			$('#paging-48800').twbsPagination({
				totalPages : 0,
				visiblePages : 3,
				href : '/exam/48800?page={{number}}',
				next : '',
				last : '»',
				first : '',
				prev : '',
				onPageClick : function(event, page) {
					//
				}
			});
		</script>
	</div>
</div>