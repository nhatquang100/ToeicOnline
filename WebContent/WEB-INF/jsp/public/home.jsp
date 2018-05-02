<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<!-- content -->
<div class="content">

	<input type="hidden" name="msg" id="msg" value="${msg} ">
	<!-- Đề thi -->
	<div class="content-box">
		<div class="header">
			<div class="h3-container">
				<a href="category/4.html"><h3>Thi Thử TOEIC</h3></a> <a
					class="learn-all" href="category/4.html">Xem tất cả &raquo;</a>
			</div>
		</div>

		<a href="category/34.html"><h3 class="sub-header">
				<i class="fa fa-file-text"></i> THI THỬ TOEIC FULL - PHẦN READING
			</h3></a>
		<div class="box">
			<c:forEach items="${listexamreading }" var="objreading">
				<div class="box-item">
					<a href="exam/48800.html">
						<div class="img"
							style="background: url(${pageContext.request.contextPath}/upload/${objreading.image}); background-size: cover;">
							<p>0/100</p>
						</div>
						<div class="meter">
							<span style="width: 0%"></span>
						</div>
						<h4>Bộ đề ${objreading.examinationid }(${objreading.nameexamination })</h4> <a class="learn" href='exam/48800.html'>Luyện
							ngay</a>
					</a>
				</div>
			</c:forEach>
		</div>
		<div class='paging viewall'>
			<a href="category/34.html">Xem tất cả &raquo;</a>
		</div>
		<a href="category/33.html"><h3 class="sub-header">
				<i class="fa fa-file-text"></i> THI THỬ TOEIC FULL - PHẦN LISTENING
			</h3></a>
		<div class="box">
			<c:forEach items="${listexamlistening }" var="objlistening">
				<div class="box-item">
					<a href="exam/48799.html">
						<div class="img"
							style="background: url(${pageContext.request.contextPath}/upload/${objlistening.image}); background-size: cover;">
							<p>0/100</p>
						</div>
						<div class="meter">
							<span style="width: 0%"></span>
						</div>
						<h4>Bộ đề ${objlistening.examinationid }(${objlistening.nameexamination })</h4>
						<%-- <h2 style="padding-top:-50px">(${objlistening.nameexamination })</h2> --%>
						 <a class="learn" href='exam/48799.html'>Luyện ngay</a>
					</a>
				</div>
			</c:forEach>
		</div>
		<div class='paging viewall'>
			<a href="category/33.html">Xem tất cả &raquo;</a>
		</div>
		<a href="category/35.html"><h3 class="sub-header">
				<i class="fa fa-file-text"></i> THI THỬ TOEIC FULL - READING +
				LISTENING
			</h3></a>
		<div class="box">
			<c:forEach items="${listexamsumary }" var="objsumary">
				<div class="box-item">
					<a href="exam/48798.html">
						<div class="img"
							style="background: url(${pageContext.request.contextPath}/upload/${objsumary.image}); background-size: cover;">
							<p>0/200</p>
						</div>
						<div class="meter">
							<span style="width: 0%"></span>
						</div>
						<h4>Bộ đề ${objsumary.examinationid}(${objsumary.nameexamination })</h4> <a class="learn"
						href='exam/48798.html'>Luyện ngay</a>
					</a>
				</div>
			</c:forEach>
		</div>
		<div class='paging viewall'>
			<a href="category/35.html">Xem tất cả &raquo;</a>
		</div>
	</div>


	<!-- Từ vựng toeic -->
	<div class="content-box">
		<div class="header">
			<div class="h3-container">
				<a href="category/1.html"><h3>Từ vựng Toeic</h3></a> <span>(3156
					từ vựng)</span> <a class="learn-all" href="category/1.html">Xem tất cả
					&raquo;</a>
			</div>
		</div>
		<a href="category/5.html"><h3 class="sub-header">
				<i class="fa fa-book"> </i> SÁCH: 600 từ vựng thiết yếu cho kì thi
				Toeic
			</h3></a>
		<div class="box">
			<div class="box-item">
				<a href="exam/56.html">
					<div class="img"
						style="background: url(upload/2016/05/9106.jpg); background-size: cover;">
						<p>0/54</p>
					</div>
					<div class="meter">
						<span style="width: 0%"></span>
					</div>
					<h4>Bài 1: Contract</h4> <a class="learn" href='exam/56.html'>Học
						ngay</a>
				</a>
			</div>
		</div>
		<div class='paging viewall'>
			<a href="category/5.html">Xem tất cả &raquo;</a>
		</div>
	</div>

	<!-- Ngữ pháp toeic -->
	<div class="content-box">
		<div class="header">
			<div class="h3-container">
				<a href="category/3.html"><h3>Ngữ pháp Toeic</h3></a> <span>(0
					chủ điểm, 0 bài tập)</span> <a class="learn-all" href="category/3.html">Xem
					tất cả &raquo;</a>
			</div>
		</div>
		<div class="box"></div>
		<div class="spacing"></div>
		<div class="paging">
			<ul class="pagination-sm pagination" id="paging-3"></ul>
		</div>
		<script>
			$('#paging-3').twbsPagination({
				totalPages : 0,
				visiblePages : 3,
				href : '/category/3?page={{number}}',
				next : '',
				last : '»',
				first : '',
				prev : '',
				onPageClick : function(event, page) {
					//
				}
			});
		</script>
		<a href="category/26.html"><h3 class="sub-header">
				<i class="fa fa-pencil-square"></i> BÍ QUYẾT LUYỆN THI TOEIC - PART
				5
			</h3></a>
		<div class="box">
			<div class="box-item">
				<a href="exam/442.html">
					<div class="img"
						style="background: url(upload/2016/07/9306.jpg); background-size: cover;">
						<p>0/12</p>
					</div>
					<div class="meter">
						<span style="width: 0%"></span>
					</div>
					<h4>Bài 1: Hiểu rõ bài thi toeic</h4> <a class="learn"
					href='exam/442.html'>Học ngay</a>
				</a>
			</div>
		</div>
		<div class='paging viewall'>
			<a href="category/26.html">Xem tất cả &raquo;</a>
		</div>
	</div>
	<!-- Luyện nghe toeic -->
	<div class="content-box">
		<div class="header">
			<div class="h3-container">
				<a href="category/2.html"><h3>Luyện nghe Toeic</h3></a> <span>(
					câu luyện nghe)</span> <a class="learn-all" href="category/2.html">Xem
					tất cả &raquo;</a>
			</div>
		</div>
		<div class="box"></div>
		<div class="spacing"></div>
		<div class="paging">
			<ul class="pagination-sm pagination" id="paging-2"></ul>
		</div>
		<script>
			$('#paging-2').twbsPagination({
				totalPages : 0,
				visiblePages : 3,
				href : '/category/2?page={{number}}',
				next : '',
				last : '»',
				first : '',
				prev : '',
				onPageClick : function(event, page) {
					//
				}
			});
		</script>
		<a href="category/31.html"><h3 class="sub-header">
				<i class="fa fa-headphones"></i> Bí kíp luyện nghe toeic Part 1
			</h3></a>
		<div class="box">
			<div class="box-item">
				<a href="exam/467.html">
					<div class="img"
						style="background: url(upload/2016/08/11093.png); background-size: cover;">
						<p>0/10</p>
					</div>
					<div class="meter">
						<span style="width: 0%"></span>
					</div>
					<h4>Bài 1: Tổng quan Part 1</h4> <a class="learn"
					href='exam/467.html'>Học ngay</a>
				</a>
			</div>
		</div>
		<div class='paging viewall'>
			<a href="category/31.html">Xem tất cả &raquo;</a>
		</div>
	</div>
	<!-- Toeic Test-->
	<div class="content-box">
		<div class="header">
			<div class="h3-container">
				<a href="category/7.html"><h3>TOEIC TEST</h3></a> <a
					class="learn-all" href="category/7.html">Xem tất cả &raquo;</a>
			</div>
		</div>
		<a href="category/36.html"><h3 class="sub-header">
				<i class="fa fa-file-text"></i> 100 BÀI TEST NGỮ PHÁP TOEIC THEO CHỦ
				ĐỀ (VIDEO)
			</h3></a>
		<div class="box">
			<div class="box-item">
				<a href="exam/48534.html">
					<div class="img"
						style="background: url(upload/2017/07/15799.jpg); background-size: cover;">
						<p>0/10</p>
					</div>
					<div class="meter">
						<span style="width: 0%"></span>
					</div>
					<h4>Bài 1: Bearing Information</h4> <a class="learn"
					href='exam/48534.html'>Luyện ngay</a>
				</a>
			</div>
		</div>
	</div>

</div>

<!-- end content -->
<script>
	function myFunction() {
		var msg = $("#msg").val();
		if($("#msg").val().length > 2){
			alert(msg);
		}
	}
</script>