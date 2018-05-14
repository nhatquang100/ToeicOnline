<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<div class="row">
	<div class="col-md-12 panel-info">
		<div class="content-box-header panel-heading">
			<div class="panel-title ">Edit Question</div>
		</div>
		<div class="content-box-large box-with-header">
			<div>
				<div class="row mb-10"></div>
				${msg }

				<form
					enctype="multipart/form-data"
					action="${pageContext.request.contextPath}/admin/question/readadd"
					method="post">
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="paragraph">Paragraph</label>
								<textarea rows="5" cols="80" name="paragraph" required></textarea></br>
								
								<label for="question" style="margin-top:10px;">Question</label></br>
								<textarea rows="2" cols="40" name="question" required></textarea></br>

								<label for="option1" style="margin-top:10px;" >option1</label></br>
								<textarea rows="2" cols="40" name="option1" required></textarea></br>
								
								<label for="option2" style="margin-top:10px;">option2</label></br>
								<textarea rows="2" cols="40" name="option2" required></textarea></br>
								
								<label for="option3" style="margin-top:10px;">option3</label></br>
								<textarea rows="2" cols="40" name="option3" required></textarea></br>
								
								<label for="option4" style="margin-top:10px;">option4</label></br>
								<textarea rows="2" cols="40" name="option4" required></textarea></br>

								<label for="correctquestion" style="margin-top:10px;">correctquestion</label> <input
									name="correctquestion" type="input" class="form-control"
									placeholder="input correctquestion"
									value="" required> 
									
								<label for="leveldifficult" style="margin-top:10px;font-size:15px">level</label>
								 <select name="leveldifficult" style="margin-top:10px;">
									<option value="1">easy</option>
									<option value="2">normal</option>
									<option value="3">hard</option>
								</select>
								
								<label for="questionpartid" style="margin-top:10px;font-size:15px">Part:</label>
								 <select name="questionpartid" style="margin-top:10px;">
									<option value="5">Part 5</option>
									<option value="6">Part 6</option>
									<option value="7">part 7</option>
								</select>

							</div>
							<form:errors path="objquestion.question" cssStyle="color:red;display:block"></form:errors>
						</div>
						<hr>

						<div class="row">
							<div class="col-sm-12">
								<input style="margin-left: 18px; margin-top: 10px" type="submit"
									value="Submit" class="btn btn-success" /> <input
									style="margin-left: 18px; margin-top: 10px" type="reset"
									value="Reset" class="btn btn-default" />
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- /.row col-size -->
