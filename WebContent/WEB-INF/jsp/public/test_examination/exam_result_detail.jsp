<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<!-- content -->
<form method="POST" class="form qform" id="test" action="${pageContext.request.contextPath}/exam/getresult" modelAttribute="questionListWraper" style="margin-left:10px">
	<div id="nopbai-kq"></div>
		<c:forEach items="${listquestion.questionlist}" var="question" varStatus="i">
			<c:choose>
			    <c:when test="${question.categoryquestionid == 1 }">
			    	<input type="hidden" name="questionlist[${i.index}].questionid" value="${question.questionid }">
			    	<input type="hidden" name="questionlist[${i.index}].examinationid" value="${examinationid}">
			    	
			        <div class="question-body" id="q-24380">
						<div class="question-detail type1">
							<h3>Question ${i.index + 1}</h3>
							<div class="media"><audio id="dd13fSF8" controls="" src="${pageContext.request.contextPath}/upload/${question.audio}" style="width: 100%" autoplay="">
								Your browser does not support the audio element.
								</audio>
							</div>
							<div class="media"><img src="${pageContext.request.contextPath}/upload/${question.image}" width="80%">
							</div>
							<div class="q"></div>
							
							<div class="row">
			    			<input class="form-control" type="radio" name="questionlist[${i.index}].chose" value="A"> (A)</div>
			    			
			    			<div class="row">
			    			<input class="form-control" type="radio" name="questionlist[${i.index}].chose" value="B"> (B)</div>
			    			
			    			<div class="row">
			   	 			<input class="form-control" type="radio" name="questionlist[${i.index}].chose" value="C"> (C)</div>
			   	 			
			   	 			<div class="row">
			    			<input class="form-control" type="radio" name="questionlist[${i.index}].chose" value="D"> (D)</div>
						</div>
					</div>
			    </c:when>    
			    <c:otherwise>
			    	<input type="hidden" name="questionlist[${i.index}].questionid" value="${question.questionid }">
			    	<input type="hidden" name="questionlist[${i.index}].examinationid" value="${examinationid}">
			    	
			        <div class="question-body" id="q-26225">
			        <input type="hidden" name="id[]" value="26225">
			        <h3>Questions ${i.index + 1} </h3>
					<c:if test="${question.image }">
						<div class="media"><img src="${pageContext.request.contextPath}/upload/${question.image}" width="80%"></div>
					</c:if>
					<div class="multi-question type6">
					<div class="question-detail type1">
					<h3></h3>
					<div class="q">${question.question}<br></div>
					<div class="row">
					    <input class="form-control" type="radio" name="questionlist[${i.index}].chose" value="${question.option1}">${question.option1}</div>
					<div class="row">
					    <input class="form-control" type="radio" name="questionlist[${i.index}].chose" value="${question.option2}">${question.option2} </div>
					<div class="row">
					    <input class="form-control" type="radio" name="questionlist[${i.index}].chose" value="${question.option3}">${question.option3} </div>
					<div class="row">
					    <input class="form-control" type="radio" name="questionlist[${i.index}].chose" value="${question.option4}">${question.option4}</div>
					</div><div class="question-detail type1">
					<h3></h3>
	
					</div></div><div class="result-box-tmp"></div></div>
			    </c:otherwise>
			</c:choose>	
			
		</c:forEach>

	<div class="row align-right question-body" id="nopbai-button">
		<button class="next-question">Nộp bài</button>
	</div>
</form>