<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
                <div class="row">
                    <div class="col-md-12 panel-info">
                        <div class="content-box-header panel-heading">
                            <div class="panel-title ">Edit Category</div>
                        </div>
                        <div class="content-box-large box-with-header">
                            <div>
                                <div class="row mb-10"></div>
                                ${msg }
							<form action="${pageContext.request.contextPath}/admin/categoryGram/edit/${catgram.categorygrammarid}" method="post" enctype="multipart/form-data">
	                                <div class="row">
	                                    <div class="col-sm-6">
	                                        <div class="form-group">
	                                            <label for="categorygrammarname">Category Name</label></br>
	                                            <textarea rows="2" cols="40" name="categorygrammarname" >${catgram.categorygrammarname}</textarea></br>
	                                            
	                                            
	                                        </div>
	                                        <form:errors path="catvocal.categorygrammarname" cssStyle="color:red;display:block"></form:errors>
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
