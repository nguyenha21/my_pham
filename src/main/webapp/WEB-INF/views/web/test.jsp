<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

</head>
<body>
<div class="box-products">
						<div class="head-box">
							<div class="title-box">
								<h2>
									<a href=""> SẢN PHẨM MỚI VỀ </a>
									
								</h2>
							</div>
							<div class="clr"></div>
						</div>
						<div class="body-box">
							<div class="owl-carousel owl-theme">
							<c:forEach var="spmoive" items="${sanphamrandom }">
								<div class="item">
									<div class="pd-box ">
										<div class="box-images">
											<a href="./?page=product&id=${spmoive.ma_Sp }"> <img data-src="" alt=""
												class="img-reponsive owl-lazy "
												src="<c:url value="/template/${spmoive.img }"></c:url>"
												style="opacity: 1;">
											</a>
											<button type="button" onclick="load_cart(${spmoive.ma_Sp })"
												class="btn-addlike ">
												<i class="fa fa-cart-plus"></i>
											</button>
											<div class="sale-off hide">
												0%<br>OFF
											</div>
										</div>
										<div class="box-content">
											<h3>
												<a href="./?page=product&id=${spmoive.ma_Sp }">${spmoive.ten_Sp }</a>
											</h3>
											<div>
												<span class="price-drop">${spmoive.gia_Ban }₫</span> <span
													class="price ">${spmoive.gia_Thi_Truong }₫</span>
											</div>
										</div>
									</div>
								</div>
								
							</c:forEach>
							</div>
						</div>

					</div>
					<script type="text/javascript">
					$(document).ready(function(){
						  $(".owl-carousel").owlCarousel();
						});
					</script>
</body>
</html>