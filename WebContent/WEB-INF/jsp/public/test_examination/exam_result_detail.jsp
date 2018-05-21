<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<!-- content -->

	<form class="form qform" id="test" style="margin-left:10px">
		<div id="nopbai-kq"></div>
				<c:choose>
					<c:when test="${ resultListWraper.categoryexaminationid == 1}">
						
						<c:forEach items="${resultListWraper.qac}" var="question" varStatus="i">
							<c:if test="${question.questionpartid == 1 }">
								<input type="hidden" name="questionlist[${i.index}].questionid" value="${question.questionid }">
						    	<input type="hidden" name="questionlist[${i.index}].examinationid" value="${examinationid}">
						    	
						        <div class="question-body" id="q-24380">
									<div class="question-detail type1">
										<h3>PART I: Question ${i.index + 1}</h3>
										<div class="media">
											<audio controls>
												<source src="${pageContext.request.contextPath}/upload/132526_10012012_912219.ogg" type="audio/ogg">
												<source src="${pageContext.request.contextPath}/upload/${question.audio}" type="audio/mpeg">
												  Your browser does not support the audio tag.
											</audio>
										</div>
										<div class="media"><img src="${pageContext.request.contextPath}/upload/${question.image}" width="70%">
										</div>
										<div class="q"></div>
										
										<c:choose>
											<c:when test="${question.chose eq 'A'}">
												<div class="row" style="color:red">
						    					<input class="form-control" type="radio" name="" value="${question.option1}">${question.option1}</div>
											</c:when>
											<c:otherwise>
												<div class="row">
						    					<input class="form-control" type="radio" name="" value="${question.option1}">${question.option1}</div>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${question.chose eq 'B'}">
												<div class="row" style="color:red">
						    					<input class="form-control" type="radio" name="" value="${question.option2}">${question.option2}</div>
											</c:when>
											<c:otherwise>
												<div class="row">
						    					<input class="form-control" type="radio" name="" value="${question.option2}">${question.option2}</div>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${question.chose eq 'C'}">
												<div class="row" style="color:red">
						   	 					<input class="form-control" type="radio" name="" value="${question.option3}">${question.option3}</div>
											</c:when>
											<c:otherwise>
												<div class="row">
						   	 					<input class="form-control" type="radio" name="" value="${question.option3}">${question.option3}</div>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${question.chose eq 'D'}">
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
								</div>
							</c:if>
							<c:if test="${question.questionpartid == 2 }">
								<input type="hidden" name="questionlist[${i.index}].questionid" value="${question.questionid }">
						    	<input type="hidden" name="questionlist[${i.index}].examinationid" value="${examinationid}">
						    	
						        <div class="question-body" id="q-24380">
									<div class="question-detail type1">
										<h3>PART II: Question ${i.index + 1}</h3>
										<div class="media">
											<audio controls>
												<source src="${pageContext.request.contextPath}/upload/132526_10012012_912219.ogg" type="audio/ogg">
												<source src="${pageContext.request.contextPath}/upload/${question.audio}" type="audio/mpeg">
												  Your browser does not support the audio tag.
											</audio>
											
										<div class="q"></div>
										
										<c:choose>
											<c:when test="${question.chose eq 'A'}">
												<div class="row" style="color:red">
						    					<input class="form-control" type="radio" name="" value="${question.option1}">${question.option1}</div>
											</c:when>
											<c:otherwise>
												<div class="row">
						    					<input class="form-control" type="radio" name="" value="${question.option1}">${question.option1}</div>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${question.chose eq 'B'}">
												<div class="row" style="color:red">
						    					<input class="form-control" type="radio" name="" value="${question.option2}">${question.option2}</div>
											</c:when>
											<c:otherwise>
												<div class="row">
						    					<input class="form-control" type="radio" name="" value="${question.option2}">${question.option2}</div>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${question.chose eq 'C'}">
												<div class="row" style="color:red">
						   	 					<input class="form-control" type="radio" name="" value="${question.option3}">${question.option3}</div>
											</c:when>
											<c:otherwise>
												<div class="row">
						   	 					<input class="form-control" type="radio" name="" value="${question.option3}">${question.option3}</div>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${question.chose eq 'D'}">
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
								</div>
							</c:if>
							<c:if test="${question.questionpartid == 3 }">
								<input type="hidden" name="questionlist[${i.index}].questionid" value="${question.questionid }">
						    	<input type="hidden" name="questionlist[${i.index}].examinationid" value="${examinationid}">
						    	
						        <div class="question-body" id="q-24380">
									<div class="question-detail type1">
										<h3>PART III: Question ${i.index + 1}</h3>
										<div class="media">
											<audio controls>
												<source src="${pageContext.request.contextPath}/upload/132526_10012012_912219.ogg" type="audio/ogg">
												<source src="${pageContext.request.contextPath}/upload/${question.audio}" type="audio/mpeg">
												  Your browser does not support the audio tag.
											</audio>
											
										<div class="q"></div>
										
										<c:choose>
											<c:when test="${question.chose eq 'A'}">
												<div class="row" style="color:red">
						    					<input class="form-control" type="radio" name="" value="${question.option1}">${question.option1}</div>
											</c:when>
											<c:otherwise>
												<div class="row">
						    					<input class="form-control" type="radio" name="" value="${question.option1}">${question.option1}</div>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${question.chose eq 'B'}">
												<div class="row" style="color:red">
						    					<input class="form-control" type="radio" name="" value="${question.option2}">${question.option2}</div>
											</c:when>
											<c:otherwise>
												<div class="row">
						    					<input class="form-control" type="radio" name="" value="${question.option2}">${question.option2}</div>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${question.chose eq 'C'}">
												<div class="row" style="color:red">
						   	 					<input class="form-control" type="radio" name="" value="${question.option3}">${question.option3}</div>
											</c:when>
											<c:otherwise>
												<div class="row">
						   	 					<input class="form-control" type="radio" name="" value="${question.option3}">${question.option3}</div>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${question.chose eq 'D'}">
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
								</div>
							</c:if>
							<c:if test="${question.questionpartid == 4 }">
								<input type="hidden" name="questionlist[${i.index}].questionid" value="${question.questionid }">
						    	<input type="hidden" name="questionlist[${i.index}].examinationid" value="${examinationid}">
						    	
						        <div class="question-body" id="q-24380">
									<div class="question-detail type1">
										<h3>PART IV: Question ${i.index + 1}</h3>
										<div class="media">
											<audio controls>
												<source src="${pageContext.request.contextPath}/upload/132526_10012012_912219.ogg" type="audio/ogg">
												<source src="${pageContext.request.contextPath}/upload/${question.audio}" type="audio/mpeg">
												  Your browser does not support the audio tag.
											</audio>
											
										<div class="q"></div>
										
										<c:choose>
											<c:when test="${question.chose eq 'A'}">
												<div class="row" style="color:red">
						    					<input class="form-control" type="radio" name="" value="${question.option1}">${question.option1}</div>
											</c:when>
											<c:otherwise>
												<div class="row">
						    					<input class="form-control" type="radio" name="" value="${question.option1}">${question.option1}</div>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${question.chose eq 'B'}">
												<div class="row" style="color:red">
						    					<input class="form-control" type="radio" name="" value="${question.option2}">${question.option2}</div>
											</c:when>
											<c:otherwise>
												<div class="row">
						    					<input class="form-control" type="radio" name="" value="${question.option2}">${question.option2}</div>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${question.chose eq 'C'}">
												<div class="row" style="color:red">
						   	 					<input class="form-control" type="radio" name="" value="${question.option3}">${question.option3}</div>
											</c:when>
											<c:otherwise>
												<div class="row">
						   	 					<input class="form-control" type="radio" name="" value="${question.option3}">${question.option3}</div>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${question.chose eq 'D'}">
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
								</div>
							</c:if>
						</c:forEach>
					</c:when>
					
					
					<c:when test="${ resultListWraper.categoryexaminationid == 2}">
						<c:forEach items="${resultListWraper.qac}" var="question" varStatus="i">
							<c:if test="${question.questionpartid == 5 }">
								<input type="hidden" name="questionlist[${i.index}].questionid" value="${question.questionid }">
						    	<input type="hidden" name="questionlist[${i.index}].examinationid" value="${examinationid}">
						    	
						        <div class="question-body" id="q-26225">
						        <input type="hidden" name="id[]" value="26225">
						        <h3>PART V: Questions ${i.index + 1} </h3>
						        <c:choose>
									<c:when test="${question.image}">
										<div class="media"><img src="${pageContext.request.contextPath}/upload/${question.image}" width="70	%"></div>
									</c:when>
									<c:otherwise>
										<div class="q">${question.paragraph}<br></div>
									</c:otherwise>
								</c:choose>
								
								<div class="multi-question type6">
								<div class="question-detail type1">
								<h3></h3>
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
								<div class="question-detail type1">
								<h3></h3>
				
								</div></div><div class="result-box-tmp"></div></div>
							</c:if>
							<c:if test="${question.questionpartid == 6 }">
								<input type="hidden" name="questionlist[${i.index}].questionid" value="${question.questionid }">
						    	<input type="hidden" name="questionlist[${i.index}].examinationid" value="${examinationid}">
						    	
						        <div class="question-body" id="q-26225">
						        <input type="hidden" name="id[]" value="26225">
						        <h3>PART VI: Questions ${i.index + 1} </h3>
						        <c:choose>
									<c:when test="${question.image}">
										<div class="media"><img src="${pageContext.request.contextPath}/upload/${question.image}" width="70	%"></div>
									</c:when>
									<c:otherwise>
										<div class="q">${question.paragraph}<br></div>
									</c:otherwise>
								</c:choose>
								
								<div class="multi-question type6">
								<div class="question-detail type1">
								<h3></h3>
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
								<div class="question-detail type1">
								<h3></h3>
				
								</div></div><div class="result-box-tmp"></div></div>
							</c:if>
							<c:if test="${question.questionpartid == 7 }">
								<input type="hidden" name="questionlist[${i.index}].questionid" value="${question.questionid }">
						    	<input type="hidden" name="questionlist[${i.index}].examinationid" value="${examinationid}">
						    	
						        <div class="question-body" id="q-26225">
						        <input type="hidden" name="id[]" value="26225">
						        <h3>PART VII: Questions ${i.index + 1} </h3>
						        <c:choose>
									<c:when test="${question.image}">
										<div class="media"><img src="${pageContext.request.contextPath}/upload/${question.image}" width="70	%"></div>
									</c:when>
									<c:otherwise>
										<div class="q">${question.paragraph}<br></div>
									</c:otherwise>
								</c:choose>
								
								<div class="multi-question type6">
								<div class="question-detail type1">
								<h3></h3>
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
								<div class="question-detail type1">
								<h3></h3>
				
								</div></div><div class="result-box-tmp"></div></div>
							</c:if>
						</c:forEach>
					</c:when>
					
					
					<c:otherwise>
						<c:forEach items="${resultListWraper.qac}" var="question" varStatus="i">
							<c:if test="${question.questionpartid == 1 }">
								<input type="hidden" name="questionlist[${i.index}].questionid" value="${question.questionid }">
						    	<input type="hidden" name="questionlist[${i.index}].examinationid" value="${examinationid}">
						    	
						        <div class="question-body" id="q-24380">
									<div class="question-detail type1">
										<h3>PART I: Question ${i.index + 1}</h3>
										<div class="media">
											<audio controls>
												<source src="${pageContext.request.contextPath}/upload/132526_10012012_912219.ogg" type="audio/ogg">
												<source src="${pageContext.request.contextPath}/upload/${question.audio}" type="audio/mpeg">
												  Your browser does not support the audio tag.
											</audio>
										</div>
										<div class="media"><img src="${pageContext.request.contextPath}/upload/${question.image}" width="70%">
										</div>
										<div class="q"></div>
										
										<c:choose>
											<c:when test="${question.chose eq 'A'}">
												<div class="row" style="color:red">
						    					<input class="form-control" type="radio" name="" value="${question.option1}">${question.option1}</div>
											</c:when>
											<c:otherwise>
												<div class="row">
						    					<input class="form-control" type="radio" name="" value="${question.option1}">${question.option1}</div>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${question.chose eq 'B'}">
												<div class="row" style="color:red">
						    					<input class="form-control" type="radio" name="" value="${question.option2}">${question.option2}</div>
											</c:when>
											<c:otherwise>
												<div class="row">
						    					<input class="form-control" type="radio" name="" value="${question.option2}">${question.option2}</div>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${question.chose eq 'C'}">
												<div class="row" style="color:red">
						   	 					<input class="form-control" type="radio" name="" value="${question.option3}">${question.option3}</div>
											</c:when>
											<c:otherwise>
												<div class="row">
						   	 					<input class="form-control" type="radio" name="" value="${question.option3}">${question.option3}</div>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${question.chose eq 'D'}">
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
								</div>
							</c:if>
							<c:if test="${question.questionpartid == 2 }">
								<input type="hidden" name="questionlist[${i.index}].questionid" value="${question.questionid }">
						    	<input type="hidden" name="questionlist[${i.index}].examinationid" value="${examinationid}">
						    	
						        <div class="question-body" id="q-24380">
									<div class="question-detail type1">
										<h3>PART II: Question ${i.index + 1}</h3>
										<div class="media">
											<audio controls>
												<source src="${pageContext.request.contextPath}/upload/132526_10012012_912219.ogg" type="audio/ogg">
												<source src="${pageContext.request.contextPath}/upload/${question.audio}" type="audio/mpeg">
												  Your browser does not support the audio tag.
											</audio>
											
										<div class="q"></div>
										
										<c:choose>
											<c:when test="${question.chose eq 'A'}">
												<div class="row" style="color:red">
						    					<input class="form-control" type="radio" name="" value="${question.option1}">${question.option1}</div>
											</c:when>
											<c:otherwise>
												<div class="row">
						    					<input class="form-control" type="radio" name="" value="${question.option1}">${question.option1}</div>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${question.chose eq 'B'}">
												<div class="row" style="color:red">
						    					<input class="form-control" type="radio" name="" value="${question.option2}">${question.option2}</div>
											</c:when>
											<c:otherwise>
												<div class="row">
						    					<input class="form-control" type="radio" name="" value="${question.option2}">${question.option2}</div>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${question.chose eq 'C'}">
												<div class="row" style="color:red">
						   	 					<input class="form-control" type="radio" name="" value="${question.option3}">${question.option3}</div>
											</c:when>
											<c:otherwise>
												<div class="row">
						   	 					<input class="form-control" type="radio" name="" value="${question.option3}">${question.option3}</div>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${question.chose eq 'D'}">
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
								</div>
							</c:if>
							<c:if test="${question.questionpartid == 3 }">
								<input type="hidden" name="questionlist[${i.index}].questionid" value="${question.questionid }">
						    	<input type="hidden" name="questionlist[${i.index}].examinationid" value="${examinationid}">
						    	
						        <div class="question-body" id="q-24380">
									<div class="question-detail type1">
										<h3>PART III: Question ${i.index + 1}</h3>
										<div class="media">
											<audio controls>
												<source src="${pageContext.request.contextPath}/upload/132526_10012012_912219.ogg" type="audio/ogg">
												<source src="${pageContext.request.contextPath}/upload/${question.audio}" type="audio/mpeg">
												  Your browser does not support the audio tag.
											</audio>
											
										<div class="q"></div>
										
										<c:choose>
											<c:when test="${question.chose eq 'A'}">
												<div class="row" style="color:red">
						    					<input class="form-control" type="radio" name="" value="${question.option1}">${question.option1}</div>
											</c:when>
											<c:otherwise>
												<div class="row">
						    					<input class="form-control" type="radio" name="" value="${question.option1}">${question.option1}</div>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${question.chose eq 'B'}">
												<div class="row" style="color:red">
						    					<input class="form-control" type="radio" name="" value="${question.option2}">${question.option2}</div>
											</c:when>
											<c:otherwise>
												<div class="row">
						    					<input class="form-control" type="radio" name="" value="${question.option2}">${question.option2}</div>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${question.chose eq 'C'}">
												<div class="row" style="color:red">
						   	 					<input class="form-control" type="radio" name="" value="${question.option3}">${question.option3}</div>
											</c:when>
											<c:otherwise>
												<div class="row">
						   	 					<input class="form-control" type="radio" name="" value="${question.option3}">${question.option3}</div>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${question.chose eq 'D'}">
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
								</div>
							</c:if>
							<c:if test="${question.questionpartid == 4 }">
								<input type="hidden" name="questionlist[${i.index}].questionid" value="${question.questionid }">
						    	<input type="hidden" name="questionlist[${i.index}].examinationid" value="${examinationid}">
						    	
						        <div class="question-body" id="q-24380">
									<div class="question-detail type1">
										<h3>PART IV: Question ${i.index + 1}</h3>
										<div class="media">
											<audio controls>
												<source src="${pageContext.request.contextPath}/upload/132526_10012012_912219.ogg" type="audio/ogg">
												<source src="${pageContext.request.contextPath}/upload/${question.audio}" type="audio/mpeg">
												  Your browser does not support the audio tag.
											</audio>
											
										<div class="q"></div>
										
										<c:choose>
											<c:when test="${question.chose eq 'A'}">
												<div class="row" style="color:red">
						    					<input class="form-control" type="radio" name="" value="${question.option1}">${question.option1}</div>
											</c:when>
											<c:otherwise>
												<div class="row">
						    					<input class="form-control" type="radio" name="" value="${question.option1}">${question.option1}</div>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${question.chose eq 'B'}">
												<div class="row" style="color:red">
						    					<input class="form-control" type="radio" name="" value="${question.option2}">${question.option2}</div>
											</c:when>
											<c:otherwise>
												<div class="row">
						    					<input class="form-control" type="radio" name="" value="${question.option2}">${question.option2}</div>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${question.chose eq 'C'}">
												<div class="row" style="color:red">
						   	 					<input class="form-control" type="radio" name="" value="${question.option3}">${question.option3}</div>
											</c:when>
											<c:otherwise>
												<div class="row">
						   	 					<input class="form-control" type="radio" name="" value="${question.option3}">${question.option3}</div>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${question.chose eq 'D'}">
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
								</div>
							</c:if>
							<c:if test="${question.questionpartid == 5 }">
								<input type="hidden" name="questionlist[${i.index}].questionid" value="${question.questionid }">
						    	<input type="hidden" name="questionlist[${i.index}].examinationid" value="${examinationid}">
						    	
						        <div class="question-body" id="q-26225">
						        <input type="hidden" name="id[]" value="26225">
						        <h3>PART V: Questions ${i.index + 1} </h3>
						        <c:choose>
									<c:when test="${question.image}">
										<div class="media"><img src="${pageContext.request.contextPath}/upload/${question.image}" width="70	%"></div>
									</c:when>
									<c:otherwise>
										<div class="q">${question.paragraph}<br></div>
									</c:otherwise>
								</c:choose>
								
								<div class="multi-question type6">
								<div class="question-detail type1">
								<h3></h3>
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
								<div class="question-detail type1">
								<h3></h3>
				
								</div></div><div class="result-box-tmp"></div></div>
							</c:if>
							<c:if test="${question.questionpartid == 6 }">
								<input type="hidden" name="questionlist[${i.index}].questionid" value="${question.questionid }">
						    	<input type="hidden" name="questionlist[${i.index}].examinationid" value="${examinationid}">
						    	
						        <div class="question-body" id="q-26225">
						        <input type="hidden" name="id[]" value="26225">
						        <h3>PART VI: Questions ${i.index + 1} </h3>
						        <c:choose>
									<c:when test="${question.image}">
										<div class="media"><img src="${pageContext.request.contextPath}/upload/${question.image}" width="70	%"></div>
									</c:when>
									<c:otherwise>
										<div class="q">${question.paragraph}<br></div>
									</c:otherwise>
								</c:choose>
								
								<div class="multi-question type6">
								<div class="question-detail type1">
								<h3></h3>
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
								<div class="question-detail type1">
								<h3></h3>
				
								</div></div><div class="result-box-tmp"></div></div>
							</c:if>
							<c:if test="${question.questionpartid == 7 }">
								<input type="hidden" name="questionlist[${i.index}].questionid" value="${question.questionid }">
						    	<input type="hidden" name="questionlist[${i.index}].examinationid" value="${examinationid}">
						    	
						        <div class="question-body" id="q-26225">
						        <input type="hidden" name="id[]" value="26225">
						        <h3>PART VII: Questions ${i.index + 1} </h3>
						        <c:choose>
									<c:when test="${question.image}">
										<div class="media"><img src="${pageContext.request.contextPath}/upload/${question.image}" width="70	%"></div>
									</c:when>
									<c:otherwise>
										<div class="q">${question.paragraph}<br></div>
									</c:otherwise>
								</c:choose>
								
								<div class="multi-question type6">
								<div class="question-detail type1">
								<h3></h3>
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
								<div class="question-detail type1">
								<h3></h3>
				
								</div></div><div class="result-box-tmp"></div></div>
							</c:if>
						</c:forEach>
	    			</c:otherwise>
				</c:choose>	
	
		<div class="row align-right question-body" id="nopbai-button">
			<a href="${pageContext.request.contextPath}/" class="next-question">Về trang chủ</a>
		</div>
	</form>