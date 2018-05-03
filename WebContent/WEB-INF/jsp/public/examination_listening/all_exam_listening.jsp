<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<!-- content -->
<div class="content">
	<div class="content-box">
		<div class="header">
			<div class="h3-container">
				<h3 class="title_link">
					<a href="${pageContext.request.contextPath}/">Thi thử TOEIC</a> » Thi thử toeic Full - Phần
					Reading
				</h3>
				<!--<span>94 bộ đề, 9400 bài tập</span>-->
				<a class="learn-all" href="${pageContext.request.contextPath}/">⟨ Quay trở lại </a>
			</div>
		</div>
		<div class="infobox">
			<div class="info">
				<p>
					Tổng hợp các bộ đề <em><strong><a
							href="${pageContext.request.contextPath}/">thi thử toeic</a></strong></em> full
					trong phần TOEIC READING (Phần đọc Toeic)
				</p>

				<h2>Trong phần TOEIC Reading (Phần đọc TOEIC) &nbsp;này gồm 100
					câu chia thành 3 phần nhỏ bao gồm :</h2>

				<table border="1" cellpadding="5" cellspacing="0"
					style="width: 100%">
					<tbody>
						<tr>
							<td style="width: 50px"><strong>Phần B</strong></td>
							<td style="width: 150px"><strong>Nội dung thi</strong></td>
							<td style="width: 50px"><strong>Số câu</strong></td>
							<td><strong>Chi tiết</strong></td>
						</tr>
						<tr>
							<td><strong>Phần 5</strong></td>
							<td>Hoàn thành câu</td>
							<td>40 câu</td>
							<td>Bạn cần phải chọn từ đúng nhất để hoàn thành câu.</td>
						</tr>
						<tr>
							<td><strong>Phần 6</strong></td>
							<td>Hoàn thành đoạn văn</td>
							<td>12 câu</td>
							<td>Mỗi đoạn văn có 03 chỗ trống.&nbsp;Bạn phải điền từ
								thích hợp còn thiếu vào mỗi chỗ trống trong đoạn văn đó.</td>
						</tr>
						<tr>
							<td rowspan="2"><strong>Phần 7</strong></td>
							<td>Đoạn đơn</td>
							<td>28 câu</td>
							<td>Đề thi có thể có từ 7-10 đoạn văn đơn. Hết mỗi đoạn văn
								sẽ có 2-5 câu hỏi.</td>
						</tr>
						<tr>
							<td>Đoạn kép</td>
							<td>20 câu</td>
							<td>Trong phần này sẽ có từ 04 cặp đoạn văn. Hết mỗi cặp
								đoạn văn sẽ có 5 câu hỏi.</td>
						</tr>
					</tbody>
				</table>

				<p>
					Phần <strong><a href="${pageContext.request.contextPath}/">TOEIC
							READING</a></strong> này dùng để đánh giá khả năng từ vựng, ngữ pháp và khả
					năng đọc hiểu tiếng anh trong giao tiếp. Phần thi này kéo dài trong
					75p.
				</p>
			</div>
		</div>
		<div class="box">
			<c:forEach items="${allexamlistening }" var="objlistening">
				<div class="box-item">
					<a href="${pageContext.request.contextPath}/exam_listening/${objlistening.examinationid}">
						<div class="img"
							style="background: url(${pageContext.request.contextPath}/upload/${objlistening.image}); background-size: cover;">
							<p>0/100</p>
						</div>
						<div class="meter">
							<span style="width: 0%"></span>
						</div>
						<h4>Bộ đề ${objlistening.examinationid }(${objlistening.nameexamination })</h4>
					</a><a class="learn" href="${pageContext.request.contextPath}/exam_reading/${objlistening.examinationid}">Luyện ngay</a>
				</div>
			</c:forEach>
		</div>
		<div class="spacing"></div>
		<div class="paging">
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
		</script>
		<div class="spacing"></div>
	</div>
</div>