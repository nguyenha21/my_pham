<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Beauty shop mỹ phẩm chính hãng</title>
<meta charset="utf-8">


</head>
<body>

	<main role="main" class="pb-3">
		<!-- slideshow -->
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div id="carouselExampleControls" class="carousel slide"
						data-ride="carousel">
						<div class="carousel-inner">
							<c:forEach var="itemsd" items="${imgshow }" varStatus="loop">

								<div class="carousel-item   <c:if test="${loop.first}">active</c:if>">
									<img src='<c:url value="/template/${itemsd.img }"></c:url>' class="d-block w-100" alt="...">
								</div>

							</c:forEach>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleControls"
							role="button" data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#carouselExampleControls"
							role="button" data-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span> <span
							class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>
		</div>

		<!-- sản phẩm mới về -->
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
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
							<c:forEach var="spmoive" items="${sanphammoive }">
								<div class="item">
									<div class="pd-box ">
										<div class="box-images">
											<a href="<c:url value= "/product/${spmoive.ma_Sp }"></c:url>"> <img data-src="" alt=""
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
												<a href="<c:url value= "/product/${spmoive.ma_Sp }"></c:url>">${spmoive.ten_Sp }</a>
											</h3>
											<div>
												<span class="price-drop"><fmt:formatNumber value="${spmoive.gia_Ban}" type="currency" currencySymbol="₫" /></span> <span
													class="price "><fmt:formatNumber value="${spmoive.gia_Ban}" type="currency" currencySymbol="₫" /></span>
											</div>
										</div>
									</div>
								</div>
								
							</c:forEach>
							</div>
						</div>

					</div>
				</div>

			</div>
		</div>
<script type="text/javascript">
$(document).ready(function(){
	$('.owl-carousel').owlCarousel({
		loop : false,
		margin : 10,
		nav : false,
		responsive : {
			0 : {
				items : 2
			},
			600 : {
				items : 4
			},
			1000 : {
				items : 6
			}
		}
	});
});
</script>
		<!-- Top  bán chạy -->
		<div class="back-gray pad-30">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="box-products-category">
							<div class="head-box-category">
								<a href="" class="left-head"> <img src=" <c:url value='/template/img/sh11-128.png'/>" alt="type icon">
									<h2>TOP BÁN CHẠY</h2> <i class="fa fa-angle-right"
									aria-hidden="true"></i>
								</a>
								
								<div class="clr"></div>
							</div>
							<div class="body-box-category">
							<c:forEach var="topbanchay" items="${sanphambanchay }">
								<!-- Bắt đàu sản phẩm -->
								<div class="col-2-ct">
									<div class="pd-box pd-box-category">
										<div class="box-images">
											<a href="<c:url value= "/product/${topbanchay.ma_Sp }"></c:url>"> <img alt=""
												class="img-reponsive lazy "
												src="<c:url value="/template/${topbanchay.img }"></c:url>"
												style="">
											</a>
											<button type="button" onclick="load_cart(${topbanchay.ma_Sp })"
												class="btn-addlike ">
												<i class="fa fa-cart-plus"></i>
											</button>
											<div class="sale-off hide">
												37%<br>OFF
											</div>
										</div>
										<div class="box-content">
											<h3>
												<a href="<c:url value= "/product/${topbanchay.ma_Sp }"></c:url>">${topbanchay.ten_Sp}</a>
											</h3>
											<div>
												<span class="price-drop"><fmt:formatNumber value="${topbanchay.gia_Ban}" type="currency" currencySymbol="₫" /></span> 
												<span class="price "><fmt:formatNumber value="${topbanchay.gia_Thi_Truong}" type="currency" currencySymbol="₫" /></span>
											</div>
										</div>
									</div>
								</div>
								<!-- Kết thúc -->
							</c:forEach>
								
								


							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Trang điểm -->
		<div class="back-gray pad-30">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="box-products-category">
							<div class="head-box-category">
								<a href="" class="left-head"> <img alt="Trang Điểm Icon"
									class="lazy" src="<c:url value='/template/img/trangdiem.png'/>" style="">
									<h2>Trang Điểm</h2> <i class="fa fa-angle-right"
									aria-hidden="true"></i>
								</a>
								<div class="clr"></div>
							</div>
							<div class="body-box-category">
							<c:forEach var="sanphamtrangdiem" items="${sanphamtrangdiem }">
								<!-- Bắt đầu sp -->
								<div class="col-2-ct">
									<div class="pd-box pd-box-category">
										<div class="box-images">
											<a href="<c:url value= "/product/${sanphamtrangdiem.ma_Sp }"></c:url>"
												title="Tạo Khối Dạng Phấn Too Cool For School ArtClass">
												<img src="<c:url value="/template/${sanphamtrangdiem.img }"></c:url>"
												alt="" class="img-reponsive lazy ">
											</a>
											<button type="button" onclick="load_cart(${sanphamtrangdiem.ma_Sp})"
												class="btn-addlike ">
												<i class="fa fa-cart-plus"></i>
											</button>
											<div class="sale-off hide">
												33%<br>OFF
											</div>
										</div>
										<div class="box-content">
											<h3>
												<a href="<c:url value= "/product/${sanphamtrangdiem.ma_Sp }"></c:url>">${sanphamtrangdiem.ten_Sp }</a>
											</h3>
											<div>
												<span class="price-drop"><fmt:formatNumber value="${sanphamtrangdiem.gia_Ban}" type="currency" currencySymbol="₫" /></span> <span
													class="price "><fmt:formatNumber value="${sanphamtrangdiem.gia_Thi_Truong}" type="currency" currencySymbol="₫" /></span>
											</div>
										</div>
									</div>
								</div>
								<!-- Kết thúc -->
							</c:forEach>
								
								







							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<!-- Chăm sóc da -->
		<div class="back-gray pad-30">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="box-products-category">
							<div class="head-box-category">
								<a href="" class="left-head"> <img alt="Chăm Sóc Da Icon"
									class="lazy" src="<c:url value='/template/img/chamsocda.png'/>" style="">
									<h2>Chăm Sóc Da</h2> <i class="fa fa-angle-right"
									aria-hidden="true"></i>
								</a>
								<div class="clr"></div>
							</div>
							<div class="body-box-category">
								<c:forEach var="sanphamchamsocda" items="${sanphamchamsocda }">
								<!-- Bắt đầu sp -->
								<div class="col-2-ct">
									<div class="pd-box pd-box-category">
										<div class="box-images">
											<a href="<c:url value= "/product/${sanphamchamsocda.ma_Sp }"></c:url>"
												title="Tạo Khối Dạng Phấn Too Cool For School ArtClass">
												<img src="<c:url value="/template/${sanphamchamsocda.img }"></c:url>"
												alt="" class="img-reponsive lazy ">
											</a>
											<button type="button" onclick="load_cart(${sanphamchamsocda.ma_Sp})"
												class="btn-addlike ">
												<i class="fa fa-cart-plus"></i>
											</button>
											<div class="sale-off hide">
												33%<br>OFF
											</div>
										</div>
										<div class="box-content">
											<h3>
												<a href="<c:url value= "/product/${sanphamchamsocda.ma_Sp }"></c:url>">${sanphamchamsocda.ten_Sp }</a>
											</h3>
											<div>
												<span class="price-drop"><fmt:formatNumber value="${sanphamchamsocda.gia_Ban}" type="currency" currencySymbol="₫" /></span> <span
													class="price "><fmt:formatNumber value="${sanphamchamsocda.gia_Thi_Truong}" type="currency" currencySymbol="₫" /></span>
											</div>
										</div>
									</div>
								</div>
								<!-- Kết thúc -->
							</c:forEach>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- thương hiệu nổi bật -->
		<div class="pad-30">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="box-brand">
							<h2>THƯƠNG HIỆU NỔI BẬT</h2>
						</div>
						<div class="body-box">
							<div class="owl-carousel owl-theme">
						
							<c:forEach var="thuonghieu" items="${thuonghieu }">
								<div class="item imgth">
									<img src="<c:url value='/template/${thuonghieu.img }'></c:url>">
								</div>
							</c:forEach>
							

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
<script>
	window.onscroll = function() {
		myFunction()
	};

	var header = document.getElementById("myHeader");
	var sticky = header.offsetTop;

	function myFunction() {
		if (window.pageYOffset > sticky) {
			header.classList.add("scrollshead");
		} else {
			header.classList.remove("scrollshead");
		}
	}
</script>

</html>