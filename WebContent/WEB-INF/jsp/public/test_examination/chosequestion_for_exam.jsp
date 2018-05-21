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
	<form method="POST" class="form qform" id="test" action="" modelAttribute="questionListWraper" style="margin-left:10px">
		<c:if test="${not empty part1}">
			<strong>PART I: 10 câu</strong>
			<input id="examinationid" type="hidden" name="" value="${examinationid }">
			<input id="categoryexaminationid" type="hidden" name="" value="${categoryexaminationid }">
			
			<input id="part1" type="hidden" name="" value="0">
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
<!--                          <td class="center text-center"> -->
<%--                              <a href="javascript:void(0)" title="" onclick="return confirmAction()" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span><img alt="" height="30" width="30" src="<%=request.getContextPath()%>/templates/public/images/imagess.jpg"></a> --%>
<!--                          </td> -->
                         <td align="center" id="setactive-${objquestion.questionid}"><a  href="javascript:void(0)" onclick="return setActive(${objquestion.questionid},0,1)" ><img height="30" width="30" src="${pageContext.request.contextPath}/templates/public/images/icon-red.jpg" alt="" /></a></td>
                     </tr>
                 </c:forEach>
                </tbody>
            </table>
		</c:if>
		<c:if test="${not empty part2}">
			<br>
			<p align="center">------------------------------------</p>
			<br>
			<strong>PART II: 30 câu</strong>
			<input id="part2" type="hidden" name="" value="0">
			<input id="categoryexaminationid" type="hidden" name="" value="${categoryexaminationid }">
			<table cellpadding="0" cellspacing="0" border="1" class="table table-striped table-bordered" id="example" >
                <thead>
                    <tr>
                    	<th class="center" style="text-align:center;">audio</th>
                        <th class="center" style="text-align:center;">question</th>
                        <th class="center" style="text-align:center;" width="20">Chọn</th>
                    </tr>
                </thead>
                <tbody>
                 <c:forEach items="${part2 }" var="objquestion">
                     <tr class="odd gradeX">
                     	 <td style="text-align:center;" >${objquestion.audio }</td>
                         <td style="text-align:center;">${objquestion.question}</td>
<!--                          <td class="center text-center"> -->
<%--                              <a href="javascript:void(0)" title="" onclick="return confirmAction()" class="btn btn-danger"><img alt="" height="30" width="30" src="<%=request.getContextPath()%>/templates/public/images/imagess.jpg"></a> --%>
<!--                          </td> -->
						 <td align="center" id="setactive-${objquestion.questionid}"><a  href="javascript:void(0)" onclick="return setActive(${objquestion.questionid},0,2)" ><img height="30" width="30" src="${pageContext.request.contextPath}/templates/public/images/icon-red.jpg" alt="" /></a></td>
                     </tr>
                 </c:forEach>  
                </tbody>
            </table>
		</c:if>
		
		<c:if test="${not empty part3}">
			<br>
			<p align="center">------------------------------------</p>
			<br>
			<strong>PART III: 30 câu</strong>
			<input id="part3" type="hidden" name="" value="0">
			<input id="categoryexaminationid" type="hidden" name="" value="${categoryexaminationid }">
			<table cellpadding="0" cellspacing="0" border="1" class="table table-striped table-bordered" id="example" >
                <thead>
                    <tr>
                    	<th class="center" style="text-align:center;">audio</th>
                        <th class="center" style="text-align:center;">question</th>
                        <th class="center" style="text-align:center;" width="20">Chọn</th>
                    </tr>
                </thead>
                <tbody>
                 <c:forEach items="${part3 }" var="objquestion">
                     <tr class="odd gradeX">
                     	 <td style="text-align:center;" >${objquestion.audio }</td>
                         <td style="text-align:center;">${objquestion.question}</td>
<!--                          <td class="center text-center"> -->
<%--                              <a href="javascript:void(0)" title="" onclick="return confirmAction()" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span><img alt="" height="30" width="30" src="<%=request.getContextPath()%>/templates/public/images/imagess.jpg"></a> --%>
<!--                          </td> -->
						<td align="center" id="setactive-${objquestion.questionid}"><a  href="javascript:void(0)" onclick="return setActive(${objquestion.questionid},0,3)" ><img height="30" width="30" src="${pageContext.request.contextPath}/templates/public/images/icon-red.jpg" alt="" /></a></td>
                     </tr>
                 </c:forEach>  
                </tbody>
            </table>
		</c:if>
		
		<c:if test="${not empty part4}">
			<br>
			<p align="center">------------------------------------</p>
			<br>
			<strong>PART IV: 30 câu</strong>
			<input id="part4" type="hidden" name="" value="0">
			<input id="categoryexaminationid" type="hidden" name="" value="${categoryexaminationid }">
			<table cellpadding="0" cellspacing="0" border="1" class="table table-striped table-bordered" id="example" >
                <thead>
                    <tr>
                    	<th class="center" style="text-align:center;">audio</th>
                        <th class="center" style="text-align:center;">question</th>
                        <th class="center" style="text-align:center;" width="20">Chọn</th>
                    </tr>
                </thead>
                <tbody>
                 <c:forEach items="${part4 }" var="objquestion">
                     <tr class="odd gradeX">
                     	 <td style="text-align:center;" >${objquestion.audio }</td>
                         <td style="text-align:center;">${objquestion.question}</td>
<!--                          <td class="center text-center"> -->
<%--                              <a href="javascript:void(0)" title="" onclick="return confirmAction()" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span><img alt="" height="30" width="30" src="<%=request.getContextPath()%>/templates/public/images/imagess.jpg"></a> --%>
<!--                          </td> -->
						<td align="center" id="setactive-${objquestion.questionid}"><a  href="javascript:void(0)" onclick="return setActive(${objquestion.questionid},0,4)" ><img height="30" width="30" src="${pageContext.request.contextPath}/templates/public/images/icon-red.jpg" alt="" /></a></td>
                     </tr>
                 </c:forEach>  
                </tbody>
            </table>
		</c:if>
		
		<c:if test="${not empty part5}">
			<br>
			<p align="center">------------------------------------</p>
			<br>
			<strong>PART V: 40 câu</strong>
			<input id="part5" type="hidden" name="" value="0">
			<input id="examinationid" type="hidden" name="" value="${examinationid }">
			<input id="categoryexaminationid" type="hidden" name="" value="${categoryexaminationid }">
			<table cellpadding="0" cellspacing="0" border="1" class="table table-striped table-bordered" id="example" >
                <thead>
                    <tr>
                        <th class="center" style="text-align:center;">question</th>
                        <th class="center" style="text-align:center;" width="20">Chọn</th>
                    </tr>
                </thead>
                <tbody>
                 <c:forEach items="${part5 }" var="objquestion">
                     <tr class="odd gradeX">
                         <td style="text-align:center;">${objquestion.question}</td>
<!--                          <td class="center text-center"> -->
<%--                              <a href="javascript:void(0)" title="" onclick="return confirmAction()" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span><img alt="" height="30" width="30" src="<%=request.getContextPath()%>/templates/public/images/imagess.jpg"></a> --%>
<!--                          </td> -->
						<td align="center" id="setactive-${objquestion.questionid}"><a  href="javascript:void(0)" onclick="return setActive(${objquestion.questionid},0,5)" ><img height="30" width="30" src="${pageContext.request.contextPath}/templates/public/images/icon-red.jpg" alt="" /></a></td>
                     </tr>
                 </c:forEach>  
                </tbody>
            </table>
		</c:if>
		
		<c:if test="${not empty part6}">
			<br>
			<p align="center">------------------------------------</p>
			<br>
			<strong>PART VI: 12 câu</strong>
			<input id="part6" type="hidden" name="" value="0">
			<input id="categoryexaminationid" type="hidden" name="" value="${categoryexaminationid }">
			<table cellpadding="0" cellspacing="0" border="1" class="table table-striped table-bordered" id="example">
                <thead>
                    <tr>
                        <th class="center" style="text-align:center;">đoạn văn</th>
                        <th class="center" style="text-align:center;" width="20">Chọn</th>
                    </tr>
                </thead>
                <tbody>
                 <c:forEach items="${part6 }" var="objquestion">
                     <tr class="odd gradeX">
                         <td style="text-align:center;">${objquestion.paragraph}</td>
<!--                          <td class="center text-center"> -->
<%--                              <a href="javascript:void(0)" title="" onclick="return confirmAction()" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span><img alt="" height="30" width="30" src="<%=request.getContextPath()%>/templates/public/images/imagess.jpg"></a> --%>
<!--                          </td> -->
						<td align="center" id="setactive-${objquestion.questionid}"><a  href="javascript:void(0)" onclick="return setActive(${objquestion.questionid},0,6)" ><img height="30" width="30" src="${pageContext.request.contextPath}/templates/public/images/icon-red.jpg" alt="" /></a></td>
                     </tr>
                 </c:forEach>  
                </tbody>
            </table>
		</c:if>
		
		<c:if test="${not empty part7}">
			<br>
			<p align="center">------------------------------------</p>
			<br>
			<strong>PART VII: 28 câu</strong>
			<input id="part7" type="hidden" name="" value="0">
			<input id="categoryexaminationid" type="hidden" name="" value="${categoryexaminationid }">
			<table cellpadding="0" cellspacing="0" border="1" class="table table-striped table-bordered" id="example" >
                <thead>
                    <tr>
                        <th class="center" style="text-align:center;">đoạn văn</th>
                        <th class="center" style="text-align:center;" width="20">Chọn</th>
                    </tr>
                </thead>
                <tbody>
                 <c:forEach items="${part7 }" var="objquestion">
                     <tr class="odd gradeX">
                         <td style="text-align:center;">${objquestion.paragraph}</td>
<!--                          <td class="center text-center"> -->
<%--                              <a href="javascript:void(0)" title="" onclick="return confirmAction()" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span><img alt="" height="30" width="30" src="<%=request.getContextPath()%>/templates/public/images/imagess.jpg"></a> --%>
<!--                          </td> -->
							<td align="center" id="setactive-${objquestion.questionid}"><a  href="javascript:void(0)" onclick="return setActive(${objquestion.questionid},0,7)" ><img height="30" width="30" src="${pageContext.request.contextPath}/templates/public/images/icon-red.jpg" alt="" /></a></td>
                     </tr>
                 </c:forEach>  
                </tbody>
            </table>
		</c:if>
		
		<div class="row align-right question-body" id="nopbai-button">
			<button id="buttoncreate" class="next-question">Tạo đề thi</button>
		</div>
	</form>
</div>
<script type="text/javascript">
var listquestion = [];
var examinationidtmp = $('#examinationid').val();
var examinationid = parseInt(examinationidtmp);
var categoryexaminationidtmp = $('#categoryexaminationid').val();
var categoryexaminationid = parseInt(categoryexaminationidtmp);
function setActive(id, isactive,partid){
	var dem1 = $('#part1').val();
	var a1 = parseInt(dem1);
	if(partid == 1){
		if(a1 == 10){
			if(isactive == 1){
				a1 -= 1;
				var removeItem = id;
				listquestion = jQuery.grep(listquestion, function(value) {
					  return value != removeItem;
				});
			}else{
				alert("Part 1 chỉ giới hạn 10 câu hỏi");
				return false;
			}
		}else{
			if(isactive == 1){
				a1 -= 1;
				var removeItem = id;
				listquestion = jQuery.grep(listquestion, function(value) {
					  return value != removeItem;
				});
				
			}else{
				a1 += 1;
				listquestion.push(id);
			}
		}
		$("#part1").val(a1);
	}
	
	var dem2 = $('#part2').val();
	var a2 = parseInt(dem2);
	if(partid == 2){
		if(a2 == 10){
			if(isactive == 1){
				a2 -= 1;
				var removeItem = id;
				listquestion = jQuery.grep(listquestion, function(value) {
					  return value != removeItem;
				});
			}else{
				alert("Part 2 chỉ giới hạn 10 câu hỏi");
				return false;
			}
		}else{
			if(isactive == 1){
				a2 -= 1;
				var removeItem = id;
				listquestion = jQuery.grep(listquestion, function(value) {
					  return value != removeItem;
				});
			}else{
				a2 += 1;
				listquestion.push(id);
			}
		}
		$("#part2").val(a2);
	}
	
	var dem3 = $('#part3').val();
	var a3 = parseInt(dem3);
	if(partid == 3){
		if(a3 == 10){
			if(isactive == 1){
				a3 -= 1;
				var removeItem = id;
				listquestion = jQuery.grep(listquestion, function(value) {
					  return value != removeItem;
				});
			}else{
				alert("Part 3 chỉ giới hạn 10 câu hỏi");
				return false;
			}
		}else{
			if(isactive == 1){
				a3 -= 1;
				var removeItem = id;
				listquestion = jQuery.grep(listquestion, function(value) {
					  return value != removeItem;
				});
			}else{
				a3 += 1;
				listquestion.push(id);
			}
		}
		$("#part3").val(a3);
	}
	
	var dem4 = $('#part4').val();
	var a4 = parseInt(dem4);
	if(partid == 4){
		if(a4 == 10){
			if(isactive == 1){
				a4 -= 1;
				var removeItem = id;
				listquestion = jQuery.grep(listquestion, function(value) {
					  return value != removeItem;
				});
			}else{
				alert("Part 4 chỉ giới hạn 10 câu hỏi");
				return false;
			}
		}else{
			if(isactive == 1){
				a4 -= 1;
				var removeItem = id;
				listquestion = jQuery.grep(listquestion, function(value) {
					  return value != removeItem;
				});
			}else{
				a4 += 1;
				listquestion.push(id);
			}
		}
		$("#part4").val(a4);
	}
	
	var dem5 = $('#part5').val();
	var a5 = parseInt(dem5);
	if(partid == 5){
		if(a5 == 15){
			if(isactive == 1){
				a5 -= 1;
				var removeItem = id;
				listquestion = jQuery.grep(listquestion, function(value) {
					  return value != removeItem;
				});
			}else{
				alert("Part 5 chỉ giới hạn 15 câu hỏi");
				return false;
			}
		}else{
			if(isactive == 1){
				a5 -= 1;
				var removeItem = id;
				listquestion = jQuery.grep(listquestion, function(value) {
					  return value != removeItem;
				});
			}else{
				a5 += 1;
				listquestion.push(id);
			}
		}
		$("#part5").val(a5);
	}
	
	var dem6 = $('#part6').val();
	var a6 = parseInt(dem6);
	if(partid == 6){
		if(a6 == 12){
			if(isactive == 1){
				a6 -= 1;
				var removeItem = id;
				listquestion = jQuery.grep(listquestion, function(value) {
					  return value != removeItem;
				});
			}else{
				alert("Part 6 chỉ giới hạn 12 câu hỏi");
				return false;
			}
		}else{
			if(isactive == 1){
				a6 -= 1;
				var removeItem = id;
				listquestion = jQuery.grep(listquestion, function(value) {
					  return value != removeItem;
				});
			}else{
				a6 += 1;
				listquestion.push(id);
			}
		}
		$("#part6").val(a6);
	}
	
	var dem7 = $('#part7').val();
	var a7 = parseInt(dem7);
	if(partid == 7){
		if(a7 == 10){
			if(isactive == 1){
				a7 -= 1;
				var removeItem = id;
				listquestion = jQuery.grep(listquestion, function(value) {
					  return value != removeItem;
				});
			}else{
				alert("Part 7 chỉ giới hạn 10 câu hỏi");
				return false;
			}
		}else{
			if(isactive == 1){
				a7 -= 1;
				var removeItem = id;
				listquestion = jQuery.grep(listquestion, function(value) {
					  return value != removeItem;
				});
			}else{
				a7 += 1;
				listquestion.push(id);
			}
		}
		$("#part7").val(a7);
	}
	
	$.ajax({
		url: '${pageContext.request.contextPath }/public/setActiveQuestion',
		type: 'POST',
		cache: false,
		data: {aid: id, aisactive: isactive, apartid: partid},
		success: function(data){
			$('#setactive-' + id).html(data);
		},
		error: function(){
			alert('Có lỗi xảy ra');
		}
	});
	return false;
}

$( "#buttoncreate" ).click(function() {
	var dem1 = $('#part1').val();
	var a1 = parseInt(dem1);
	var dem2 = $('#part2').val();
	var a2 = parseInt(dem2);
	var dem3 = $('#part3').val();
	var a3 = parseInt(dem3);
	var dem4 = $('#part4').val();
	var a4 = parseInt(dem4);
	var dem5 = $('#part5').val();
	var a5 = parseInt(dem5);
	var dem6 = $('#part6').val();
	var a6 = parseInt(dem6);
	var dem7 = $('#part7').val();
	var a7 = parseInt(dem7);
	if(categoryexaminationid == 1){
		if(a1 != 10 || a2 != 10 || a3 != 10 || a4 != 10  ){
			alert("Bạn hãy chọn đủ số lượng câu hỏi");
			return false;
		}else{
			$.ajax({
				url: '${pageContext.request.contextPath }/public/saveQuestionofexam',
				type: 'POST',
				cache: false,
				data: {alistquestion:listquestion, aexaminationid:examinationid},
				success: function(data){
					window.location.replace("${pageContext.request.contextPath}/");
					alert('Thêm bài thi thành công!!!');
				},
				error: function(){
					alert('Có lỗi xảy ra');
				}
			});
			return false;
		}
	}else if(categoryexaminationid == 2){
		if(a5 != 15 || a6 != 12 || a7 != 10  ){
			alert("Bạn hãy chọn đủ số lượng câu hỏi");
			return false;
		}else{
			$.ajax({
				url: '${pageContext.request.contextPath }/public/saveQuestionofexam',
				type: 'POST',
				cache: false,
				data: {alistquestion:listquestion, aexaminationid:examinationid},
				success: function(data){
					window.location.replace("${pageContext.request.contextPath}/");
					alert('Thêm bài thi thành công!!!');
				},
				error: function(){
					alert('Có lỗi xảy ra');
				}
			});
			return false;
		}
	}else{
		if(a1 != 10 || a2 != 10 || a3 != 10 || a4 != 10  || a5 != 15 || a6 != 12 || a7 != 10  ){
			alert("Bạn hãy chọn đủ số lượng câu hỏi");
			return false;
		}else{
			$.ajax({
				url: '${pageContext.request.contextPath }/public/saveQuestionofexam',
				type: 'POST',
				cache: false,
				data: {alistquestion:listquestion, aexaminationid:examinationid},
				success: function(data){
					window.location.replace("${pageContext.request.contextPath}/");
					alert('Thêm bài thi thành công!!!');
				},
				error: function(){
					alert('Có lỗi xảy ra');
				}
			});
			return false;
		}
	}
	
	
});
</script>