<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
                <div class="content-box-large">
                    <div class="row">
                        <div class="panel-heading">
                            <div class="panel-title ">Manager Category Grammar</div>
                        </div>
                    </div>
                    <hr>
                    <div class="panel-heading" style="margin-left:-18px;color:green">${msg}</div>
                    <div class="row">
                        <div class="col-md-8">
                            <a href="${pageContext.request.contextPath}/admin/categoryGram/add" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp;Add Categoly</a>

                        </div>
                        <div class="col-md-4">
                            <form action="${pageContext.request.contextPath}/admin/categoryGram/search" method="post">
                            <div class="input-group form">
                                <input type="text" class="form-control" placeholder="Search..." name="categorygrammarname">
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
                                        <th class="center" style="text-align:center;">ID</th>
                                        <th class="center" style="text-align:center;">Tên</th>
                                        <th class="center" style="text-align:center;"></th>
                                    </tr>
                                </thead>
                                <tbody id =" embody">
	                                <c:forEach items="${catGrammar }" var="catgram">
	                                    <tr class="odd gradeX">
	                                        <td style="text-align:center;" >${catgram.categorygrammarid }</td>
	                                        <td style="text-align:center;">${catgram.categorygrammarname }</td>
	                                        <td class="center text-center">
	                                            <a href="${pageContext.request.contextPath}/admin/categoryGram/edit/${catgram.categorygrammarid}" title="" class="btn btn-primary"><span class="glyphicon glyphicon-pencil "></span> Sửa</a>
	                                            <a href="${pageContext.request.contextPath}/admin/categoryGram/del/${catgram.categorygrammarid}" title="" onclick="return confirmAction()" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Xóa</a>
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
								<%-- <nav class="text-center" aria-label="...">
									<ul class="pagination">
										<li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
										<c:forEach var="i" begin="1" end="${sumPage}">
										<li <c:if test="${page == i }">class="active"</c:if>><a
												href="${pageContext.request.contextPath}/admin/member/${i}">${i}<span
													class="sr-only">(current)</span></a></li>
										</c:forEach>
										<li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
									</ul>
								</nav> --%>
                            <!-- /.pagination -->

                        </div>
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.content-box-large -->
<script type="text/javascript">
function setActive(id, isactive){
	$.ajax({
		url: '${pageContext.request.contextPath }/admin/setActiveMember',
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