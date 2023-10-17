<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<%-- <c:set var="pageTitle" value="Đăng nhập" /> --%>
<title><c:out value="${pageTitle}" /></title>

<dec:head>


</dec:head>

<link href="<c:url value='/template/admin/dist/css/style.min.css'/>" rel="stylesheet">
</head>
<body id="page-top">
	<%-- 	<c:if test="${user != null}">
	<%@ include file="/common/web/header.jsp"%>
	</c:if> --%>

	<dec:body />


</body>

<script
	src="<c:url value='/template/admin/assets/libs/jquery/dist/jquery.min.js'/>"></script>
<!-- Bootstrap tether Core JavaScript -->
<script
	src="<c:url value='/template/admin/assets/libs/popper.js/dist/umd/popper.min.js'/>"></script>
<script
	src="<c:url value='/template/admin/assets/libs/bootstrap/dist/js/bootstrap.min.js'/>"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <!-- apps -->
    <script src="<c:url value='/template/admin/dist/js/app.min.js'/>"></script>
    <script src="<c:url value='/template/admin/dist/js/app.init.mini-sidebar.js'/>"></script>
    <script src="<c:url value='/template/admin/dist/js/app-style-switcher.js'/>"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="<c:url value='/template/admin/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js'/>"></script>
    <script src="<c:url value='/template/admin/assets/extra-libs/sparkline/sparkline.js'/>"></script>
    <!--Wave Effects -->
    <script src="<c:url value='/template/admin/dist/js/waves.js'/>"></script>
    <!--Menu sidebar -->
    <script src="<c:url value='/template/admin/dist/js/sidebarmenu.js'/>"></script>
    <!--Custom JavaScript -->
    <script src="<c:url value='/template/admin/dist/js/custom.js'/>"></script>
    <!--This page JavaScript -->
    <!--chartis chart-->
    <script src="<c:url value='/template/admin/assets/libs/chartist/dist/chartist.min.js'/>"></script>
    <script src="<c:url value='/template/admin/assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js'/>"></script>
    <!--c3 charts -->
    <script src="<c:url value='/template/admin/assets/extra-libs/c3/d3.min.js'/>"></script>
    <script src="<c:url value='/template/admin/assets/extra-libs/c3/c3.min.js'/>"></script>
    <script src="<c:url value='/template/admin/dist/js/pages/dashboards/dashboard3.js'/>"></script>

</html>