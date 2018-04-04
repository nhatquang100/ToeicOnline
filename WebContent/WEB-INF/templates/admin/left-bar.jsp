<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<ul class="nav">
    <!-- Main menu -->
    <li class="current"><a href="${pageContext.request.contextPath}/admin"><i class="glyphicon glyphicon-home"></i> Trang chủ</a></li>
    <li><a href="${pageContext.request.contextPath}/admin/member"><i class="glyphicon glyphicon-list"></i> Quản lý Member</a></li>
    <li class="submenu">
         <a href="#">
            <i class="glyphicon glyphicon-list"></i> Quản lý danh mục
            <span class="caret pull-right"></span>
         </a>
         <ul>
            <li>
            	<a class="glyphicon glyphicon-book" href="${pageContext.request.contextPath}/admin/member">  login</a>
            </li>
        </ul>
    </li>
</ul>