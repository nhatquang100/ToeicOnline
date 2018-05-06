<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>

<div class="content">
	<div class="content-box">
		<div class="header">
			<div class="h3-container">
				<h3 class="title_link">
					<a href="/category/1">Từ vựng TOEIC </a> 600 TỪ VỰNG THÔNG DỤNG
					CHO KỲ THI TOEIC
				</h3>
				<!--<span>50 bộ đề, 2700 bài tập</span>-->
				<!-- <a class="learn-all" href="/">⟨ Quay trở lại </a> -->
			</div>
		</div>
		<div class="infobox">
			<div class="info">
				<p>
					Đây là cuốn Tài liệu 600 TỪ VỰNG THÔNG DỤNG TRONG KỲ THI TOEIC (600
					ESSENTIAL WORDS FOR TOEIC TEST) cung cấp những từ vựng toeic cần
					thiết để luyện thi trong bài thi TOEIC&nbsp;
				</p>

				<p>
					<br> - Cuốn sách 600 từ vựng trong bài thi toeic này giúp bạn
					nắm vững những nền tảng cơ bản để hiểu những ngữ cảnh đặc biệt
					thường gặp trong một bài thi TOEIC. Mỗi chương giới thiệu một ngữ
					cảnh chuyên môn cụ thể và những từ mới kèm theo. Những từ này không
					phải là từ chuyên môn, mà là những từ vựng thông dụng có thể dùng
					được trong rất nhiều ngữ cảnh khác nhau.<br> - Tuy nhiên, vì
					được sử dụng trong một ngữ cảnh chuyên môn, nên ngữ nghĩa của chúng
					sẽ thay đổi so với khi sử dụng trong những tình huống phổ thông.
					Hiểu được điều này sẽ giúp bạn cải thiện đáng kể kết quả thi TOEIC.<br>
					- Ngoài 50 bài học và thực hành chính (Bao gồm nghĩa tiếng anh và
					tiếng việt của từ vựng, phiên âm, cách sử dụng), sách còn hướng dẫn
					bạn cách xây dựng vốn từ toeic như: phân tích các thành tố từ, nhận
					dạng các hình thái ngữ
						pháp toeic, nhận dạng họ từ, tạo từ điển cá nhân, viết nhật ký đọc
					hàng ngày.
				</p>

				<p>Bài học 600 từ vựng trong bài thi toeic này này bao gồm :</p>

				<p>- 50 UNIT THEO CHỦ ĐỀ KHÁC NHAU</p>
			</div>
		</div>
		
		<div class="box">
		<c:forEach items="${cateVocal }" var="cateVocal">
			<div class="box-item">
				
				<div class="img"
					style="background: url(<%=request.getContextPath()%>/templates/public/images/TOEICSMART-Red-Grammar-300x424.jpg); background-size: cover;">
				</div>
				<div class="meter">
					<span style="width: 0%"></span>
				</div>
				<h4 >Chủ Đề:${cateVocal.id}</h4>
				<h4 style="color: blue;">${cateVocal.categoryVocabularyName }</h4>
				<a class="learn" style="color: red" href="${pageContext.request.contextPath}/public/vocabulary/${cateVocal.id }">Học ngay</a>

			</div>
		</c:forEach>
			
		</div>
		
		<div class="spacing"></div>
		<div class="paging">
			<ul class="pagination-sm pagination" id="paging-5"></ul>
		</div>
		<script>
$('#paging-5').twbsPagination({
	totalPages: 0,
	visiblePages: 3,
	href: '/category/5?page={{number}}',
	next: '',
	last: '»',
	first: '',
	prev: '',
	onPageClick: function (event, page) {
		//
	}
});
</script>
		<div class="spacing"></div>
	</div>
</div>