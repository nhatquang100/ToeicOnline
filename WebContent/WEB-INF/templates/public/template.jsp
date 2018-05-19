<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>
<tiles:insertAttribute name="header"></tiles:insertAttribute>
		<div class="width content-container">
			<tiles:insertAttribute name="leftbar"></tiles:insertAttribute>
	      	<!-- content -->
			<div class="content" style="">
				<tiles:insertAttribute name="body"></tiles:insertAttribute>
			</div>
			<tiles:insertAttribute name="rightbar"></tiles:insertAttribute>
		</div>
<tiles:insertAttribute name="footer"></tiles:insertAttribute>  