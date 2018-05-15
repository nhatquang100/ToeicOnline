<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<style>
	
</style>
<!-- content -->
<div class="content-box">
	<div class="header">
		<div class="h3-container">
			<a href="javascript:void(0)"><h3>Tạo đề thi</h3></a> <a
				class="learn-all" href="javascript:void(0)">Chọn câu hỏi cho từng part &raquo;</a>
		</div>
	</div>
	<form method="POST" class="form qform" id="test" action="${pageContext.request.contextPath}/exam/getresult" modelAttribute="questionListWraper" style="margin-left:10px">
		<c:if test="${not empty part1}">
			<strong>PART I</strong>
			<table cellpadding="0" cellspacing="0" border="1" class="table table-striped table-bordered" id="example">
                <thead>
                    <tr>
                        <th class="center" style="text-align:center;" >hình ảnh</th>
                        <th class="center" style="text-align:center;" width="20">Chọn</th>
                    </tr>
                </thead>
                <tbody>
                 <c:forEach items="${part1 }" var="objquestion">
                     <tr class="odd gradeX" >
                         <td style="text-align:center;"><img height="60" width="60" alt="" src="${pageContext.request.contextPath}/upload/${objquestion.image}"></td>
                         <td class="center text-center">
                             <a href="javascript:void(0)" title="" onclick="return confirmAction()" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span><img alt="" height="30" width="30" src="<%=request.getContextPath()%>/templates/public/images/imagess.jpg"></a>
                         </td>
                     </tr>
                 </c:forEach>  
                </tbody>
            </table>
		</c:if>
		<c:if test="${not empty part2}">
			<br>
			<p align="center">------------------------------------</p>
			<br>
			<strong>PART II</strong>
			<table cellpadding="0" cellspacing="0" border="1" class="table table-striped table-bordered" id="example" >
                <thead>
                    <tr>
                    	<th class="center" style="text-align:center;">audio</th>
                        <th class="center" style="text-align:center;">question</th>
                        <th class="center" style="text-align:center;" width="20">Chọn</th>
                    </tr>
                </thead>
                <tbody>
                 <c:forEach items="${part1 }" var="objquestion">
                     <tr class="odd gradeX">
                     	 <td style="text-align:center;" >${objquestion.audio }</td>
                         <td style="text-align:center;">${objquestion.question}</td>
                         <td class="center text-center">
                             <a href="javascript:void(0)" title="" onclick="return confirmAction()" class="btn btn-danger"><img alt="" height="30" width="30" src="<%=request.getContextPath()%>/templates/public/images/imagess.jpg"></a>
                         </td>
                     </tr>
                 </c:forEach>  
                </tbody>
            </table>
		</c:if>
		
		<c:if test="${not empty part3}">
			<br>
			<p align="center">------------------------------------</p>
			<br>
			<strong>PART III</strong>
			<table cellpadding="0" cellspacing="0" border="1" class="table table-striped table-bordered" id="example" >
                <thead>
                    <tr>
                    	<th class="center" style="text-align:center;">audio</th>
                        <th class="center" style="text-align:center;">question</th>
                        <th class="center" style="text-align:center;" width="20">Chọn</th>
                    </tr>
                </thead>
                <tbody>
                 <c:forEach items="${part1 }" var="objquestion">
                     <tr class="odd gradeX">
                     	 <td style="text-align:center;" >${objquestion.audio }</td>
                         <td style="text-align:center;">${objquestion.question}</td>
                         <td class="center text-center">
                             <a href="javascript:void(0)" title="" onclick="return confirmAction()" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span><img alt="" height="30" width="30" src="<%=request.getContextPath()%>/templates/public/images/imagess.jpg"></a>
                         </td>
                     </tr>
                 </c:forEach>  
                </tbody>
            </table>
		</c:if>
		
		<c:if test="${not empty part4}">
			<br>
			<p align="center">------------------------------------</p>
			<br>
			<strong>PART IV</strong>
			<table cellpadding="0" cellspacing="0" border="1" class="table table-striped table-bordered" id="example" >
                <thead>
                    <tr>
                    	<th class="center" style="text-align:center;">audio</th>
                        <th class="center" style="text-align:center;">question</th>
                        <th class="center" style="text-align:center;" width="20">Chọn</th>
                    </tr>
                </thead>
                <tbody>
                 <c:forEach items="${part1 }" var="objquestion">
                     <tr class="odd gradeX">
                     	 <td style="text-align:center;" >${objquestion.audio }</td>
                         <td style="text-align:center;">${objquestion.question}</td>
                         <td class="center text-center">
                             <a href="javascript:void(0)" title="" onclick="return confirmAction()" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span><img alt="" height="30" width="30" src="<%=request.getContextPath()%>/templates/public/images/imagess.jpg"></a>
                         </td>
                     </tr>
                 </c:forEach>  
                </tbody>
            </table>
		</c:if>
		
		<c:if test="${not empty part5}">
			<br>
			<p align="center">------------------------------------</p>
			<br>
			<strong>PART V</strong>
			<table cellpadding="0" cellspacing="0" border="1" class="table table-striped table-bordered" id="example" >
                <thead>
                    <tr>
                        <th class="center" style="text-align:center;">question</th>
                        <th class="center" style="text-align:center;" width="20">Chọn</th>
                    </tr>
                </thead>
                <tbody>
                 <c:forEach items="${part1 }" var="objquestion">
                     <tr class="odd gradeX">
                         <td style="text-align:center;">${objquestion.question}</td>
                         <td class="center text-center">
                             <a href="javascript:void(0)" title="" onclick="return confirmAction()" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span><img alt="" height="30" width="30" src="<%=request.getContextPath()%>/templates/public/images/imagess.jpg"></a>
                         </td>
                     </tr>
                 </c:forEach>  
                </tbody>
            </table>
		</c:if>
		
		<c:if test="${not empty part6}">
			<br>
			<p align="center">------------------------------------</p>
			<br>
			<strong>PART VI</strong>
			<table cellpadding="0" cellspacing="0" border="1" class="table table-striped table-bordered" id="example">
                <thead>
                    <tr>
                        <th class="center" style="text-align:center;">đoạn văn</th>
                        <th class="center" style="text-align:center;" width="20">Chọn</th>
                    </tr>
                </thead>
                <tbody>
                 <c:forEach items="${part1 }" var="objquestion">
                     <tr class="odd gradeX">
                         <td style="text-align:center;">${objquestion.paragraph}</td>
                         <td class="center text-center">
                             <a href="javascript:void(0)" title="" onclick="return confirmAction()" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span><img alt="" height="30" width="30" src="<%=request.getContextPath()%>/templates/public/images/imagess.jpg"></a>
                         </td>
                     </tr>
                 </c:forEach>  
                </tbody>
            </table>
		</c:if>
		
		<c:if test="${not empty part7}">
			<br>
			<p align="center">------------------------------------</p>
			<br>
			<strong>PART VII</strong>
			<table cellpadding="0" cellspacing="0" border="1" class="table table-striped table-bordered" id="example" >
                <thead>
                    <tr>
                        <th class="center" style="text-align:center;">đoạn văn</th>
                        <th class="center" style="text-align:center;" width="20">Chọn</th>
                    </tr>
                </thead>
                <tbody>
                 <c:forEach items="${part1 }" var="objquestion">
                     <tr class="odd gradeX">
                         <td style="text-align:center;">${objquestion.paragraph}</td>
                         <td class="center text-center">
                             <a href="javascript:void(0)" title="" onclick="return confirmAction()" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span><img alt="" height="30" width="30" src="<%=request.getContextPath()%>/templates/public/images/imagess.jpg"></a>
                         </td>
                     </tr>
                 </c:forEach>  
                </tbody>
            </table>
		</c:if>
	</form>
</div>
