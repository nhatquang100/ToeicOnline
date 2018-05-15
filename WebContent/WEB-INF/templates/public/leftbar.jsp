<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>
        		<!-- left sidebar -->
        <div class="sidebar-left">
            <a class="list l4" href="${pageContext.request.contextPath}/">&nbsp;</a>
            <a class="list l1" href="${pageContext.request.contextPath}/public/vocabulary">&nbsp;</a>
            <a class="list l2" href="${pageContext.request.contextPath}/">&nbsp;</a>
            <a class="list l3" href="${pageContext.request.contextPath}/public/grammar">&nbsp;</a>          
            <img  style="width:224px;height:547px" src="<%=request.getContextPath() %>/templates/public/images/left-banner.png" />
			<br><span style="float: right;"><div class="fb-like" data-href="${pageContext.request.contextPath}/" data-layout="button_count" data-action="like" data-show-faces="true" data-share="true"></div></span>
			
        </div>
        <!-- end left sidebar -->