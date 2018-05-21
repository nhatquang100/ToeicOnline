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
							<form action="${pageContext.request.contextPath}/admin/member/edit/${objmember.memberid}" method="post" enctype="multipart/form-data">
	                                <div class="row">
	                                    <div class="col-sm-6">
	                                        <div class="form-group">
	                                            <label for="membername">${objmember.membername}</label>
	                                            <input name ="membername" type="text" class="form-control" placeholder="Input membername" maxlength=50 required>
	                                            
	                                            Chọn File Image : <input type="file"  value="Upload File image"  name="multiimage" required/><br />
	                                            
	                                            <label for="email">Email:</label>
	                                            <input name ="email" type="email" class="form-control" placeholder="input email" required>
	                                            
	                                            <label for="phonenumber">Phonenumber:</label>
	                                            <input name ="phonenumber" type="password" class="form-control" placeholder="input phonenumber" pattern="\d*" minlength=10 maxlength=12 required>
	                                            
	                                            <c:if test="${objmember.memberid == 1}">
	                                            	 <label for="categorymemberid" style="margin-top:10px;font-size:15px">Chức vụ</label>
													 <select name="categorymemberid" style="margin-top:10px;">
														<option value="1">Admin</option>
														<option value="2">Giáo Viên</option>
														<option value="3">Học Viên</option>
													 </select>
												 </c:if>
												 
	                                            <label for="password">Password:</label>
	                                            <input name ="password" type="password" class="form-control" placeholder="input Password" minlength=8 maxlength=30 required>
	                                          
	                                        </div>
	                                        <form:errors path="objmember.membername" cssStyle="color:red;display:block"></form:errors>
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
