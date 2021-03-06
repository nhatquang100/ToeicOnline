<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
                <div class="row">
                    <div class="col-md-12 panel-info">
                        <div class="content-box-header panel-heading">
                            <div class="panel-title ">Edit Member</div>
                        </div>
                        <div class="content-box-large box-with-header">
                            <div>
                                <div class="row mb-10"></div>
                                ${msg }
							<form action="${pageContext.request.contextPath}/admin/vocaburaly/edit/${vocal.vocabularyid}" method="post" enctype="multipart/form-data">
	                                <div class="row">
	                                    <div class="col-sm-6">
	                                        <div class="form-group">
	                                            <label for="vocabularyname">Vocabulary Name </label>
	                                            <textarea rows="2" cols="40" name="vocabularyname" required> ${vocal.vocabularyname }</textarea></br>
	                                            
	                                            <!-- Chọn File Image : <input type="file"  value="Upload File image"  name="multiimage" /><br / -->
	                                            <label for="spelling">Spelling:</label>
	                                             <textarea rows="2" cols="40" name="spelling" required> ${vocal.spelling }</textarea></br>
	                                            
	                                            <label for="vocabularymean">Vocabulary Mean:</label>
	                                              <textarea rows="2" cols="40" name="vocabularymean" required> ${vocal.vocabularymean }</textarea></br>
	                                            
	                                            <label for="categoryvocabularyid">Category vocabulary</label>
	                                              <textarea rows="2" cols="40" name="categoryvocabularyid" required> ${vocal.categoryvocabularyid }</textarea></br>
	                                          
	                                        </div>
	                                        <form:errors path="vocal.vocabularyname" cssStyle="color:red;display:block"></form:errors>
	                                   </div>
	                                <hr>
	
		                                <div class="row">
		                                    <div class="col-sm-12">
		                                        <input style="margin-left:18px;margin-top:10px" type="submit" value="Submit" class="btn btn-success" />
		                                        <input style="margin-left:18px;margin-top:10px" type="reset" value="Reset" class="btn btn-default" />
		                                    </div>
		                                </div>
	                              </div>
							</form>
	                            </div>
	                        </div>
                    </div>
                </div>
                <!-- /.row col-size -->
