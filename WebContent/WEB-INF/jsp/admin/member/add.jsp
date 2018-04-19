<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
                <div class="row">
                    <div class="col-md-12 panel-info">
                        <div class="content-box-header panel-heading">
                            <div class="panel-title ">Thêm danh mục</div>
                        </div>
                        <div class="content-box-large box-with-header">
                            <div>
                                <div class="row mb-10"></div>
                                <div class="panel-heading" style="margin-left:-18px;color:green">${msg}</div>
							<form action="${pageContext.request.contextPath}/admin/member/add" method="post" enctype="multipart/form-data">
	                                <div class="row">
	                                    <div class="col-sm-6">
	                                        <div class="form-group">
	                                            <label for="name">Membername</label>
	                                            <input name ="membername" type="text" class="form-control" placeholder="input membername">
	                                            
	                                            Chọn File Image : <input type="file"  value="Upload File image"  name="multiimage" /><br />
	                                            
	                                            <label for="email">Email:</label>
	                                            <input name ="email" type="text" class="form-control" placeholder="input email">
	                                            
	                                            <label for="phonenumber">Phonenumber:</label>
	                                            <input name ="phonenumber" type="text" class="form-control" placeholder="input phonenumber">
	                                            
	                                            <label for="username">Username</label>
	                                            <input name ="username" type="text" class="form-control" placeholder="input Username">
	                                            
	                                            <label for="password">Password</label>
	                                            <input name ="password" type="password" class="form-control" placeholder="input Password">
	                                            
	                                            <label for="repassword">Repassword</label>
	                                            <input name ="repassword" type="password" class="form-control" placeholder="input Repassword">
	                                        </div>
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
