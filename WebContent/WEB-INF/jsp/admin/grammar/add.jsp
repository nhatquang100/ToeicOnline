<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<div class="row">
	<div class="col-md-12 panel-info">
		<div class="content-box-header panel-heading">
			<div class="panel-title ">Thêm Ngữ Pháp</div>
		</div>
		<div class="content-box-large box-with-header">
			<div>
				<div class="row mb-10"></div>
				<div class="panel-heading" style="margin-left: -18px; color: green">${msg}</div>
				<%-- <form
					action="${pageContext.request.contextPath}/admin/vocaburaly/add"
					method="post" enctype="multipart/form-data"> --%>
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label for="grammarname">Tên Ngữ Pháp </label> <input
								name="grammarname" type="text" class="form-control"
								placeholder="input grammarname" id="grammarname" required>

							<!-- Chọn File Image : <input type="file"  value="Upload File image"  name="multiimage" /><br / -->
							 <label for="content">Nội dung:</label>
							  <input name="content"
								type="text" class="form-control" placeholder="input content"
								id="content" required> 
								<label for="example">Ví dụ:</label> 
								<input name="example" type="text"
								class="form-control" placeholder="input example"
								id="example" required> 
								<label for="category"
								style="margin-top: 10px; font-size: 15px">Chủ đề</label>
								</br> 
								
								<select class="categorygrammarid">
									<c:forEach items="${listCateogry }" var="cate">
										<option value="${cate.categorygrammarid }">${cate.categorygrammarname }</option>
									</c:forEach>
								</select> 
								
						</div>
					</div>
					<hr>

					<div class="row">
						<div class="col-sm-12">
							<input style="margin-left: 18px; margin-top: 10px" type="submit"
								value="Submit" class="btn btn-success" onclick="addViaAjax()" />
							<input style="margin-left: 18px; margin-top: 10px" type="reset"
								value="Reset" class="btn btn-default" onclick="reset()"/>
						</div>
					</div>
				</div>
				<!-- </form> -->
			</div>
		</div>
	</div>
</div>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js">
	
</script>
<script type="text/javascript">
	function reset(){
		$("#grammarname").val("");
		$("#content").val("");
		$("#example").val(" ");
	}
	function addViaAjax() {
		
		var grammarname = $("#grammarname").val();
		var content = $("#content").val();
		var categorygrammarid = $('.categorygrammarid option:selected').val();
		var example = $("#example").val();
		var grammar = {
			"grammarname" : grammarname,
			"content" : content,
			"example" : example,
			"categorygrammarid" : categorygrammarid
		};
		$
				.ajax({
					type : "POST",
					contentType : "application/json",
					url : "${pageContext.request.contextPath}/admin/grammar/add",
					data : JSON.stringify(grammar),

					timeout : 100000,
					success : function(data) {
						location.href = " ${pageContext.request.contextPath}/admin/grammar";
						/* console.log("SUCCESS: ", data);
						var result = "<h3> You just add new Person </h3>"
								+ "<strong>Name:</strong> " + data.name + "<br>"
								+ "<strong>Age:</strong> " + data.age;
						$("#ajax-response").html(result); */
					},
					error : function(e) {
						console.log("ERROR: ", e);
					}
				});
	}
</script>


<!-- /.row col-size -->
