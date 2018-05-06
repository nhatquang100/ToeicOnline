<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<div class="row">
	<div class="col-md-12 panel-info">
		<div class="content-box-header panel-heading">
			<div class="panel-title ">Thêm Từ Vựng</div>
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
							<label for="vocabularyname">Vocabulary Name </label> <input
								name="vocabularyname" type="text" class="form-control"
								placeholder="input vocabularyname" id="vocabularyname">

							<!-- Chọn File Image : <input type="file"  value="Upload File image"  name="multiimage" /><br / -->
							 <label for="spelling">Spelling:</label> <input name="spelling"
								type="text" class="form-control" placeholder="input spelling"
								id="spelling"> <label for="vocabularymean">Vocabulary
								Mean:</label> <input name="vocabularymean" type="text"
								class="form-control" placeholder="input vocabularymean"
								id="vocabularymean"> <label for="category"
								style="margin-top: 10px; font-size: 15px">Chủ đề</label></br> 
								
								<select class="categoryvocabularyid">
									<c:forEach items="${listCateogry }" var="cate">
										<option value="${cate.id }">${cate.categoryVocaburalyName }</option>
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
		$("#vocabularyname").val("");
		$("#spelling").val("");
		$("#vocabularymean").val(" ");
	}
	function addViaAjax() {
		
		var vocabularyname = $("#vocabularyname").val();
		var spelling = $("#spelling").val();
		var categoryvocabularyid = $('.categoryvocabularyid option:selected').val();
		var vocabularymean = $("#vocabularymean").val();
		var vocabulary = {
			"vocabularyname" : vocabularyname,
			"spelling" : spelling,
			"vocabularymean" : vocabularymean,
			"categoryvocabularyid" : categoryvocabularyid
		};
		$
				.ajax({
					type : "POST",
					contentType : "application/json",
					url : "${pageContext.request.contextPath}/admin/vocaburaly/add",
					data : JSON.stringify(vocabulary),

					timeout : 100000,
					success : function(data) {
						location.href = " ${pageContext.request.contextPath}/admin/vocaburaly";
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
