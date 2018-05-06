<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<!-- content -->
<form class="form qform" id="test" style="margin-left:10px">
	<div id="nopbai-kq"></div>
		<c:forEach items="${listdetailresult}" var="question" varStatus="i">
			<c:choose>
			    <c:when test="${question.categoryquestionid == 1 }">

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
							<c:choose>
								<c:when test="${question.chose eq 'A'}">
									<div class="row" style="color:red">
			    					<input class="form-control" type="radio" name="" value="A"> (A)</div>
								</c:when>
								<c:otherwise>
									<div class="row">
			    					<input class="form-control" type="radio" name="" value="A"> (A)</div>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${question.chose eq 'B'}">
									<div class="row" style="color:red">
			    					<input class="form-control" type="radio" name="" value="B"> (B)</div>
								</c:when>
								<c:otherwise>
									<div class="row">
			    					<input class="form-control" type="radio" name="" value="B"> (B)</div>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${question.chose eq 'C'}">
									<div class="row" style="color:red">
			   	 					<input class="form-control" type="radio" name="" value="C"> (C)</div>
								</c:when>
								<c:otherwise>
									<div class="row">
			   	 					<input class="form-control" type="radio" name="" value="C"> (C)</div>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${question.chose eq 'D'}">
									<div class="row" style="color:red">
			    					<input class="form-control" type="radio" name="" value="D"> (D)</div>
								</c:when>
								<c:otherwise>
									<div class="row">
			    					<input class="form-control" type="radio" name="" value="D"> (D)</div>
								</c:otherwise>
							</c:choose>

			    			<p class="form-control" style="color:green">Correct: ${question.correct }</p>
						</div>
					</div>
			    </c:when>    
			    <c:otherwise>
						
			        <div class="question-body" id="q-26225">
				        <input type="hidden" name="id[]" value="26225">
				        <h3>Questions ${i.index + 1} </h3>
						<c:if test="${question.image }">
							<div class="media"><img src="${pageContext.request.contextPath}/upload/${question.image}" width="80%"></div>
						</c:if>
						<div class="multi-question type6">
							<div class="question-detail type1">
								<div class="q">${question.question}<br></div>
								<c:choose>
									<c:when test="${question.chose eq question.option1}">
										<div class="row" style="color:red">
				    					<input class="form-control" type="radio" name="" value="${question.option1}">${question.option1}</div>
									</c:when>
									<c:otherwise>
										<div class="row">
				    					<input class="form-control" type="radio" name="" value="${question.option1}">${question.option1}</div>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${question.chose eq question.option2}">
										<div class="row" style="color:red">
				    					<input class="form-control" type="radio" name="" value="${question.option2}">${question.option2} </div>
									</c:when>
									<c:otherwise>
										<div class="row">
				    					<input class="form-control" type="radio" name="" value="${question.option2}">${question.option2} </div>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${question.chose eq question.option3}">
										<div class="row" style="color:red">
				    					<input class="form-control" type="radio" name="" value="${question.option3}">${question.option3}</div>
									</c:when>
									<c:otherwise>
										<div class="row">
				    					<input class="form-control" type="radio" name="" value="${question.option3}">${question.option3}</div>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${question.chose eq question.option4}">
										<div class="row" style="color:red">
				    					<input class="form-control" type="radio" name="" value="${question.option4}">${question.option4}</div>
									</c:when>
									<c:otherwise>
										<div class="row">
				    					<input class="form-control" type="radio" name="" value="${question.option4}">${question.option4}</div>
									</c:otherwise>
								</c:choose>

								<p class="form-control" style="color:green">Correct: ${question.correct }</p>
								</div>
							<div class="question-detail type1"></div>
						</div>
						<div class="result-box-tmp"></div>
					</div>
			    </c:otherwise>
			</c:choose>	
			
		</c:forEach>

	<div class="row align-right question-body" id="nopbai-button">
		<a href="${pageContext.request.contextPath}/" class="next-question">Về trang chủ</a>
	</div>
</form>