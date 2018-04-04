<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                <div class="row">
                    <div class="col-md-12 panel-info">
                        <div class="content-box-header panel-heading">
                            <div class="panel-title ">Edit Member</div>
                        </div>
                        <div class="content-box-large box-with-header">
                            <div>
                                <div class="row mb-10"></div>
                                ${msg }
							<form action="${pageContext.request.contextPath}/admin/member/edit/${objmember.memberid}" method="post">
	                                <div class="row">
	                                    <div class="col-sm-6">
	                                        <div class="form-group">
	                                            <label for="membername">${objmember.membername}</label>
	                                            <input name ="membername" type="text" class="form-control" placeholder="Input membername">
	                                            <c:if test="${objmember.memberid == 1}">
												     <label for="name">${objmember.categorymemberid}</label>
	                                            	 <input name ="categorymemberid" type="text" class="form-control" placeholder="Input membername">
												 </c:if>
	                                            <label for="password">Password</label>
	                                            <input name ="password" type="password" class="form-control" placeholder="input Password">
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
