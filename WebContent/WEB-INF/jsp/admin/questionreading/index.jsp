<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
                <div class="content-box-large">
                    <div class="row">
                        <div class="panel-heading">
                            <div class="panel-title ">Manager Questions</div>
                        </div>
                    </div>
                    <hr>
                    <div class="panel-heading" style="margin-left:-18px;color:green">${msg}</div>
                    <div class="row">
                        <div class="col-md-8">
							<a href="${pageContext.request.contextPath}/admin/questionreading/readadd" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp;Add Reading</a>
                        </div>
                        
                        <div class="col-md-4">
                            <form action="${pageContext.request.contextPath}/admin/questionreading/search" method="post">
	                            <div class="input-group form">
	                                <input type="text" class="form-control" placeholder="Search question..." name = "questionid">
	                                <span class="input-group-btn">
	                         		<button class="btn btn-primary" type="submit">Search</button>
	                       			</span>
	                            </div>
                            </form>
                        </div>
                    </div>

                    <div class="row">
                        <div class="panel-body">
                            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                                <thead>
                                    <tr>
                                        <th class="center" style="text-align:center;">Câu hỏi</th>
                                        <th class="center" style="text-align:center;">option1</th>
                                        <th class="center" style="text-align:center;">option2</th>
                                        <th class="center" style="text-align:center;">option3</th>
                                        <th class="center" style="text-align:center;">option4</th>
                                        <th class="center" style="text-align:center;">Active</th>
                                        <th class="center" style="text-align:center;">Chức năng</th>
                                    </tr>
                                </thead>
                                <tbody>
	                                <c:forEach items="${listquestion }" var="objquestion">
	                                    <tr class="odd gradeX">

	                                        
	                                        <c:choose>
                     						 <c:when test="${objquestion.question ne null}">
                         						 <td style="text-align:center;">${objquestion.question }</td>
                     						 </c:when>
                     						<c:otherwise>
                          						<td style="text-align:center;">${objquestion.paragraph }</td>
                       						</c:otherwise>
	                       					</c:choose>
	                       					<td style="text-align:center;">${objquestion.option1 }</td>
	                                        <td style="text-align:center;">${objquestion.option2 }</td>
	                                        <td style="text-align:center;">${objquestion.option3 }</td>
	                                        <td style="text-align:center;">${objquestion.option4 }</td>
	                                        <c:choose>
                     						 <c:when test="${objquestion.isactive == 0 }">
                         						 <c:set var="image" value="minus-circle.gif"></c:set>
                         						 <c:set var="title" value="Kích hoạt"></c:set>
                     						 </c:when>
                     						<c:otherwise>
                          						<c:set var="image" value="tick-circle.gif"></c:set>
                          						<c:set var="title" value="Ngừng kích hoạt"></c:set>
                       						</c:otherwise>
	                       					</c:choose>
	                    					<td align="center" id="setactive-${objquestion.questionid}"><a  href="javascript:void(0)" onclick="return setActive(${objquestion.questionid}, ${objquestion.isactive})" title="${title }"><img src="${pageContext.request.contextPath}/templates/admin/images/${image}" alt="" /></a></td>
	                                        <td class="center text-center">
	                         					<a href="${pageContext.request.contextPath}/admin/questionreading/readedit/${objquestion.questionid }" title="" class="btn btn-primary"><span class="glyphicon glyphicon-pencil "></span> Sửa</a>
<%-- 		                     					<a href="${pageContext.request.contextPath}/admin/question/del/${objquestion.questionid }" title="" onclick="return confirmAction()" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Xóa</a> --%>
	                                        </td>
	                                    </tr>
	                                 </c:forEach>  
                                </tbody>
                            </table>

                            <!-- Pagination -->
                            <!-- <nav class="text-center" aria-label="...">
                                <ul class="pagination">
                                    <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">Prev</span></a></li>
                                    <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li><a href="#" aria-label="Next"><span aria-hidden="true">Next</span></a></li>
                                </ul>
                            </nav> -->
                            <!-- Pagination -->
								<nav class="text-center" aria-label="...">
									<ul class="pagination">
										<li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
										<c:forEach var="i" begin="1" end="${sumPage}">
										<li <c:if test="${page == i }">class="active"</c:if>><a
												href="${pageContext.request.contextPath}/admin/questionreading/${i}">${i}<span
													class="sr-only">(current)</span></a></li>
										</c:forEach>
										<li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
									</ul>
								</nav>
                            <!-- /.pagination -->

                        </div>
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.content-box-large -->
<script type="text/javascript">
function setActive(id, isactive){
	$.ajax({
		url: '${pageContext.request.contextPath }/admin/setActiveQuestion',
		type: 'POST',
		cache: false,
		data: {aid: id, aisactive: isactive},
		success: function(data){
			$('#setactive-' + id).html(data);
		},
		error: function(){
			alert('Có lỗi xảy ra');
		}
	});
	return false;
}

function confirmAction(){
  return confirm('Bạn có chắc muốn xóa?');
}
</script>