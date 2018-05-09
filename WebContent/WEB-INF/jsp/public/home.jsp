<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<!-- content -->
<div class="content">

	<input type="hidden" name="msg" id="msg" value="${msg} ">
	<c:if test="${not empty listresult}">
		<div class="content-box">
			<div class="header">
				<div class="h3-container">
					<a href="${pageContext.request.contextPath}/getallresult"><h3>Đề đã thi</h3></a> <a
						class="learn-all" href="${pageContext.request.contextPath}/getallresult">Xem tất cả &raquo;</a>
				</div>
			</div>
	
			<a href="${pageContext.request.contextPath}/getallresult"><h3 class="sub-header">
					<i class="fa fa-file-text"></i> Tổng hợp các đề đã thi
				</h3></a>
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
		</div>
	</c:if>
	<!-- Đề thi -->
	<div class="content-box">
		<div class="header">
			<div class="h3-container">
				<a href="${pageContext.request.contextPath}/"><h3>PHẦN READING</h3></a> <a
					class="learn-all" href="${pageContext.request.contextPath}/">Xem tất cả &raquo;</a>
			</div>
		</div>

		<a href="${pageContext.request.contextPath}/all_exam_reading"><h3 class="sub-header">
				<i class="fa fa-file-text"></i> THI THỬ TOEIC FULL - PHẦN READING
			</h3></a>
		<div class="box">
			<c:forEach items="${listexamreading }" var="objreading">
				<div class="box-item">
					<a href="${pageContext.request.contextPath}/exam_reading/${objreading.examinationid}">
						<div class="img"
							style="background: url(${pageContext.request.contextPath}/upload/${objreading.image}); background-size: cover;">
							<p>0/100</p>
						</div>
						<div class="meter">
							<span style="width: 0%"></span>
						</div>
						<h4>Bộ đề ${objreading.examinationid }(${objreading.nameexamination })</h4> <a class="learn" href='${pageContext.request.contextPath}/exam_reading/${objreading.examinationid}'>Luyện
							ngay</a>
					</a>
				</div>
			</c:forEach>
		</div>
	</div>
	
	<!-- Phần listening -->
	<div class="content-box">
		<div class="header">
			<div class="h3-container">
				<a href="${pageContext.request.contextPath}/all_exam_listening"><h3>PHẦN LISTENING</h3></a>
				<a class="learn-all" href="${pageContext.request.contextPath}/all_exam_listening">Xem tất cả
					&raquo;</a>
			</div>
		</div>
		<a href="${pageContext.request.contextPath}/all_exam_listening"><h3 class="sub-header">
				<i class="fa fa-file-text"></i> THI THỬ TOEIC FULL - PHẦN LISTENING
			</h3></a>
		<div class="box">
			<c:forEach items="${listexamlistening }" var="objlistening">
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
						<%-- <h2 style="padding-top:-50px">(${objlistening.nameexamination })</h2> --%>
						 <a class="learn" href='${pageContext.request.contextPath}/exam/${objlistening.examinationid}'>Luyện ngay</a>
					</a>
				</div>
			</c:forEach>
		</div>
	</div>
	
	<!-- Phần reading + listening -->
	<div class="content-box">
		<div class="header">
			<div class="h3-container">
				<a href="${pageContext.request.contextPath}/all_exam_sumary"><h3> PHẦN READING + LISTENING</h3></a>
				 <a class="learn-all" href="${pageContext.request.contextPath}/all_exam_sumary">Xem tất cả
					&raquo;</a>
			</div>
		</div>
		<a href="${pageContext.request.contextPath}/all_exam_sumary"><h3 class="sub-header">
				<i class="fa fa-file-text"></i> THI THỬ TOEIC FULL - READING +
				LISTENING
			</h3></a>
		<div class="box">
			<c:forEach items="${listexamsumary }" var="objsumary">
				<div class="box-item">
					<a href="${pageContext.request.contextPath}/exam_sumary/${objsumary.examinationid}">
						<div class="img"
							style="background: url(${pageContext.request.contextPath}/upload/${objsumary.image}); background-size: cover;">
							<p>0/200</p>
						</div>
						<div class="meter">
							<span style="width: 0%"></span>
						</div>
						<h4>Bộ đề ${objsumary.examinationid}(${objsumary.nameexamination })</h4> <a class="learn"
						href='${pageContext.request.contextPath}/exam/${objsumary.examinationid}'>Luyện ngay</a>
					</a>
				</div>
			</c:forEach>
		</div>
	</div>

	<!-- Từ vựng toeic -->
	<div class="content-box">
		<div class="header">
			<div class="h3-container">
				<a href="${pageContext.request.contextPath}/public/vocabulary/"><h3>PHẦN TỪ VỰNG TOEIC</h3></a> <span>(3156
					từ vựng)</span> <a class="learn-all" href="${pageContext.request.contextPath}/public/vocabulary/">Xem tất cả
					&raquo;</a>
			</div>
		</div>
		<a href="${pageContext.request.contextPath}/public/vocabulary"><h3 class="sub-header">
				<i class="fa fa-book"> </i> Tổng hợp chủ đề từ vựng thiết yếu cho kì thi
				Toeic
			</h3></a>
		<div class="box">
			<c:forEach items="${categoryvocabulary }" var="objvocabulary">
				<div class="box-item">
					<a href="${pageContext.request.contextPath}/public/vocabulary/${objvocabulary.categoryvocabularyid }">
						<div class="img"
							style="background: url(${pageContext.request.contextPath}/upload/${objvocabulary.categoryVocabularyImage}); background-size: cover;">
							<p>0/54</p>
						</div>
						<div class="meter">
							<span style="width: 0%"></span>
						</div>
						<h4>Bài ${objvocabulary.categoryvocabularyid}: ${objvocabulary.categoryVocabularyName }</h4> <a class="learn" href='${pageContext.request.contextPath}/public/vocabulary/${objvocabulary.categoryvocabularyid}'>Học
							ngay</a>
					</a>
				</div>
			</c:forEach>
		</div>
	</div>

	<!-- Ngữ pháp toeic -->
	<div class="content-box">
		<div class="header">
			<div class="h3-container">
				<a href="${pageContext.request.contextPath}/public/grammar"><h3>PHẦN NGỮ PHÁP TOEIC</h3></a> <span>(0
					chủ điểm, 0 bài tập)</span> <a class="learn-all" href="${pageContext.request.contextPath}/public/grammar">Xem
					tất cả &raquo;</a>
			</div>
		</div>
		<a href="${pageContext.request.contextPath}/"><h3 class="sub-header">
				<i class="fa fa-pencil-square"></i> BÍ QUYẾT LUYỆN THI TOEIC
			</h3></a>
		<div class="box">
			<c:forEach items="${categorygrammar }" var="objgrammar">
				<div class="box-item">
					<a href="${pageContext.request.contextPath}/public/grammar/${objgrammar.categorygrammarid }">
						<div class="img"
							style="background: url(<%=request.getContextPath()%>/templates/public/images/TOEICSMART-Red-Grammar-300x424.jpg); background-size: cover;">
							<p>0/54</p>
						</div>
						<div class="meter">
							<span style="width: 0%"></span>
						</div>
						<h4>Bài ${objgrammar.categorygrammarid}: ${objgrammar.categorygrammarname }</h4> <a class="learn" href='${pageContext.request.contextPath}/public/grammar/${objgrammar.categorygrammarid }'>Học
							ngay</a>
					</a>
				</div>
			</c:forEach>
		</div>
	</div>
	
</div>

<!-- end content -->
<script>
	function myFunction() {
		var msg = $("#msg").val();
		if($("#msg").val().length > 2){
			alert(msg);
			window.location.replace("${pageContext.request.contextPath}/");
		}
	}
</script>