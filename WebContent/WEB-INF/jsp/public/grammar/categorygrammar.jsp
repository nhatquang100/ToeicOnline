<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<div class="content">
	<div class="content-box">
		<div class="header">
			<div class="h3-container">
				<h3 class="title_link">
					<a href="/category/1">Ngữ Pháp TOEIC </a>NHỮNG NGỮ PHÁP THÔNG DỤNG
					CHO KỲ THI TOEIC
				</h3>
				<!--<span>50 bộ đề, 2700 bài tập</span>-->
				<!-- <a class="learn-all" href="/">⟨ Quay trở lại </a> -->
			</div>
		</div>
		<div class="info">
			<p>
				Tổng hợp các chủ điểm ngữ
					pháp toeic cơ bản thường dùng trong kỳ thi Toeic thực tế giúp người
				dùng ôn lại các kỹ năng ngữ pháp tiếng anh cơ bản theo từng chủ đề
				ngữ pháp tiếng anh toeic riêng biệt và thực hành nâng cao kỹ năng
				ngữ pháp dùng trong đề thi :
			</p>

			

			<p>
				<em><strong>Tags</strong>: Ngữ pháp tiếng anh thi toeic, Ngữ
					Pháp Thi Toeic, Ngữ Pháp luyện thi toeic</em>
			</p>
		</div>
		<div class="list-group">
		<c:forEach items="${categram }" var="categram">
		    <a class="list-group-item learn" href="${pageContext.request.contextPath}/public/grammar/${categram.categorygrammarid }">${categram.categorygrammarname }</a>
		</c:forEach>    
	  	</div>
		<%-- <div class="box">
			<c:forEach items="${categram }" var="categram">
				<div class="box-item">
					 
						<h4>Chủ Đề: ${cateVocal.categoryVocaburalyName }</h4>
					<a class="list-group-item learn"
						href="${pageContext.request.contextPath}/public/vocabulary/${cateVocal.id }">Học
						ngay</a>

				</div>
			</c:forEach>

		</div> --%>

		<!-- <div class="spacing"></div>
		<div class="paging">
			<ul class="pagination-sm pagination" id="paging-5"></ul>
		</div> -->
		<!-- <script>
			$('#paging-5').twbsPagination({
				totalPages : 0,
				visiblePages : 3,
				href : '/category/5?page={{number}}',
				next : '',
				last : '»',
				first : '',
				prev : '',
				onPageClick : function(event, page) {
					//
				}
			});
		</script>
		<div class="spacing"></div> -->
	</div>
</div>