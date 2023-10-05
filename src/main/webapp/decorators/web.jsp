<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>

<link href="<c:url value='/template/web/public/css/shopcard.css'/>" rel="stylesheet" type="text/css">
<link href="<c:url value='/template/web/public/css/category.css'/>" rel="stylesheet" type="text/css">
<link href="<c:url value='/template/web/public/css/easyzoom.css'/>" rel="stylesheet" type="text/css">
<script src="<c:url value='/template/web/public/js/easyzoom.js'/>"></script>
<!-- phân trang -->
<style>
.phantrang {
  display: flex;
  justify-content: center;
  margin-top: 40px;
}

.phantrang a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  transition: background-color .3s;
}

.phantrang a.active {
  background-color: #4CAF50;
  color: white;
}

.phantrang a:hover:not(.active) {background-color: #ddd;}
</style>
<!--  -->

<style type="text/css">
.thumbnails {
	display: inline-block;
	padding-left: 0px;
	margin-bottom: 0px;
}

.thumbnails li {
	display: inline-block;
	list-style-type: none;
	float: left;
	padding: 5px;
}

.thumbnails li a {
	display: block;
	text-decoration: none;
	border: 1px solid #eee;
}

.thumbnails li a img {
	width: 85px;
	height: 85px;
}
/* <?php 
        if (!empty($like)) {?>
            .btn-hea{
                background-color: #1f601f;
                color: white;
            }
            
       <?php }
        ?> */
.btn-hea:hover {
	color: white;
	background-color: #199427;
}

.btn-atc:hover {
	background-color: #199427;
}
</style>


	<link rel="stylesheet" type="text/css" href="<c:url value='/template/web/public/css/site.min.css'/>">
       <link rel="stylesheet" type="text/css" href="<c:url value='/template/web/public/css/style.css'/>">
       <script type="text/javascript" src="<c:url value='/template/web/public/js/js.js'/>"></script>
       <link rel="stylesheet" type="text/css" href="<c:url value='/template/web/public/css/bootstrap.css'/>">
       <meta name="viewport" content="width=device-width, initial-scale=1">
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
       <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
       <link rel="stylesheet" href="<c:url value='/template/web/public/owlcarousel/assets/owl.carousel.min.css'/>">
       <link rel="stylesheet" href="<c:url value='/template/web/public/owlcarousel/assets/owl.theme.default.min.css'/>">
       <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
       <script src="<c:url value='/template/web/public/owlcarousel/owl.carousel.min.js'/>"></script>
	
<style type="text/css">
.box-Sform .btn-search {
	border-top-left-radius: 0;
	border: 1px solid #eee;
	height: 40px;
	padding: 5px 10px;
	border-bottom-left-radius: 0;
	color: #4eaf4e;
	width: 40px;
}

.box-Sform .my-form {
	font-size: 14px;
	border-top-right-radius: 0;
	border-bottom-right-radius: 0;
	border-right: none;
	padding: 6px 25px 6px 7px;
	height: 40px;
	border-color: #eee;
	color: #777;
}

.box-Sform .btn-search:hover {
	color: black;
}
</style>
<dec:head></dec:head>
</head>
<body>
	<%@ include file="/common/web/header.jsp"%>
	<dec:body />
	<%@ include file="/common/web/footer.jsp"%>
</body>
</html>