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

	<header>
		<div class="head-first">
			<div class="container">

				
				
				
				<div class="box-social hidden-xs">
					<ul class="ul-non ul-social">
					<c:forEach  var="item" items="${thongtinweb}">
					
						<li class=""><a href="${item.facebook}"
							target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li class="hidden-sm"><a
							href="${item.instagram}" target="_blank"><i
								class="fa fa-instagram" aria-hidden="true"></i></a></li>
						<li class="hidden-sm"><a
							href="${item.pinterest}" target="_blank"><i
								class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
						<li class="hidden-sm"><a
							href="${item.google}" target="_blank"><i
								class="fa fa-google-plus" aria-hidden="true"></i></a></li>
						</c:forEach >
					</ul>
					
					<div class="box-pdseen" style="display: inline-block;">
						<a style="cursor: pointer; color: #999;" id="lichsu"> <i
							class="fa fa-chevron-down"></i> Sản phẩm bạn đã xem
						</a>
						<div class="box-after" id="load-seen"
							style="display: none; visibility: hidden;">
							<div class="slider-productseen ul-pdseen ">
								<div class=""
									style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 98px; display: inline-block; margin: 0px;">
									<div class="" style="width: 94.583px; margin-right: 0px;">
										<div class="item">
											<a href="?page=product&id=135"
												title="Dưỡng Mi Eveline Cosmetics Lash Therapy"> <img
												src="<c:url value='/template/images/products/20-08-2020/a1-31012019112847.jpg'/>"
												alt="" class="img-reponsive">
											</a>
										</div>
									</div>
								</div>
								<div class=""
									style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 98px; display: inline-block; margin: 0px;">
									<div class="" style="width: 94.583px; margin-right: 0px;">
										<div class="item">
											<a href="?page=product&id=70"
												title="Phấn Má + Bắt Sáng Sivanna Colors Glower Cheek">
												<img
												src="images/products/21-07-2020/13243565-10102019100627.jpg"
												alt="" class="img-reponsive">
											</a>
										</div>
									</div>
								</div>
								<div class=""
									style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 98px; display: inline-block; margin: 0px;">
									<div class="" style="width: 94.583px; margin-right: 0px;">
										<div class="item">
											<a href="?page=product&id=114"
												title="Mặt Nạ Giấy Foodaholic Essential Mask"> <img
												src="images/products/20-08-2020/avatar-sp-web11-recovered-recovered-recovered-22052020110145.jpg"
												alt="" class="img-reponsive">
											</a>
										</div>
									</div>
								</div>
								<div class=""
									style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 98px; display: inline-block; margin: 0px;">
									<div class="" style="width: 94.583px; margin-right: 0px;">
										<div class="item">
											<a href="?page=product&id=118"
												title="Mặt Nạ Giấy LOreal Paris"> <img
												src="images/products/20-08-2020/123456780-22052020030607.jpg"
												alt="" class="img-reponsive">
											</a>
										</div>
									</div>
								</div>

								<!--  <div class="owl-nav disabled">
                                <button type="button" role="presentation" class="owl-prev">
                                    <span aria-label="Previous">‹</span>
                                </button>
                                <button type="button" role="presentation" class="owl-next">
                                    <span aria-label="Next">›</span>
                                </button>
                            </div>
                            <div class="owl-dots disabled">
                                <button role="button" class="owl-dot active">
                                    <span></span>
                                </button>
                            </div> -->
							</div>
						</div>
					</div>
				</div>
				<script type="text/javascript">
					$('#lichsu').hover(function() {
						$('#load-seen').css({
							"display" : "block",
							"visibility" : "visible"
						});

					});
					$('#load-seen').mouseleave(function() {
						$('#load-seen').css({
							"display" : "none",
							"visibility" : "hidden"
						});

					});
				</script>
				<div class="box-hotline">
					<ul class="ul-non ul-hotline">
						<c:forEach var="item" items="${thongtinweb }">
						<li><a href="tel:0989999111" class="just-hl"><span
								style="font-weight: bold;">Hotline:</span>
								${item.hotline } </a></li>
						<li class="hidden-xs"><a href="tel:19009198" class="just-hl">
								<span>Tổng đài tư vấn:</span> ${item.tongdTuvan }
						</a></li>
						</c:forEach>
						<li class="hidden-xs"><a href="#" class="pixen-lg">Tài
								khoản <i class="fa fa-angle-down" aria-hidden="true"></i>
						</a>
							<ul class="ul-non ul-lg">
								<li><a href="./?page=account&select=login">Đăng nhập</a></li>
								<li><a href="./?page=account&select=registration">Đăng
										ký</a></li>
							</ul></li>
					</ul>
				</div>
				<div class="clr"></div>
			</div>

		</div>
		<div class="head-second">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-12">
						<div class="box-logo">
							<a href="<c:url value="/" ></c:url>"> <img
								src="<c:url value='/template/images/products/24-07-2020/logo.png'/>"
								alt="" class="img-reponsive">
							</a>
						</div>
					</div>
					<div class="col-lg-4 order-lg-first col-md-6">
						<div class="box-Sform">
							<form class="form-inline" method="post" action="?page=search">
								<input type="text" class="form-control my-form"
									id="inlineFormInputName2" placeholder="Tìm kiếm..." value=""
									autocomplete="off" onfocus="" onfocusout="" onkeydown=""
									name="search"> <select class="custom-select my-form"
									id="inlineFormCustomSelectPref" name="option">
									<option selected value="0">Sản phẩm</option>
									<option value="1" hidden>Tin tức</option>
								</select>
								<button type="submit" class="btn btn-search" onclick=""
									id="buttonFormInputName2">
									<i class="fa fa-search" aria-hidden="true"></i>
								</button>
							</form>
							<script type="text/javascript">
								$("#buttonFormInputName2")
										.click(
												function() {
													check = $(
															'#inlineFormInputName2')
															.val();
													if (check == '') {
														$(
																'#buttonFormInputName2')
																.attr('type',
																		'button');
														alert('Bạn vui lòng nhập từ khóa!');
													}
												});
							</script>
						</div>
					</div>
					<div
						class="col-lg-4 order-lg-last col-md-6 order-md-last hidden-xs">
						<div class="box-card">
							<ul class="ul-non ul-card">
								<li><a href="./?page=like" class="like-pd"
									title="Sản phẩm yêu thích"> <i class="fa fa-heart-o"
										aria-hidden="true"></i> Yêu thích <span id="numberLike"
										data-id="0">0</span>
								</a></li>
								<li><a href="./?page=cart" class="shop_cart"
									title="Giỏ hàng"> <i class="fa fa-shopping-cart "></i> Giỏ
										hàng <span id="result0">3</span>
								</a></li>
							</ul>
						</div>
					</div>
					<div class="clr"></div>
				</div>
			</div>
		</div>
		<div class="head-three" id="myHeader">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="box-menu">
							<div class="hidden-md ">
								<ul class="ul-non menu-mb">
									<li><a href="./?page=cart" class="shop_cart_mb"
										title="Giỏ hàng"> <i class="fa fa-shopping-cart "></i> <span
											id="result1">3</span>
									</a></li>
									<li><a href="./?page=like" class="like-pd-mb"> <i
											class="fa fa-heart-o" aria-hidden="true"></i> <span>0</span>
									</a></li>
								</ul>
								<a href="tel:0989999111" class="hl-pd-mb" title="Tổng đài">
									<i class="fa fa-phone"></i> 0989 999 111
								</a>
								<button type="button" class="btn-pd-mb hidden-xs" onclick="">
									Categories <i class="fa fa-bars" aria-hidden="true"></i>
								</button>
								<button type="button" class="btn-mn-mb" onclick="addshow();">
									<i class="fa fa-bars" aria-hidden="true"></i>
								</button>
								<div class="clr"></div>
							</div>
							<ul class="ul-non ul-menu show" id="menu">
								<li class="hidden-md first-li"><button type="button"
										class="btn-remove" onclick="closeshow()">
										<i class="fa fa-times" aria-hidden="true"></i>
									</button></li>
								<!-- âf -->
								<li class="li-parent-first hidden-xs hidden-sm"><a href=""
									class="a-parent" id="megaloger"><i class="fa fa-bars"
										aria-hidden="true"></i></a>
									<ul class="ul-non ul-menu-lagi" id="ul-megaloger">
										<li><a href="" class="">
												<div class="img-luna img-icon img-tt">
													<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16"
														width="16" height="16">
														<path fill-rule="evenodd"
															d="M8 1.5a6.5 6.5 0 100 13 6.5 6.5 0 000-13zM0 8a8 8 0 1116 0A8 8 0 010 8zm6.5-.25A.75.75 0 017.25 7h1a.75.75 0 01.75.75v2.75h.25a.75.75 0 010 1.5h-2a.75.75 0 010-1.5h.25v-2h-.25a.75.75 0 01-.75-.75zM8 6a1 1 0 100-2 1 1 0 000 2z"></path></svg>
												</div> <span>Thông tin</span> <i class="fa fa-angle-right"
												aria-hidden="true"></i>
										</a>
											<ul class="ul-non ul-mega">
												<li><a href="./?page=beautypage">Bí quyết làm đẹp</a></li>
												<li><a href="">Review sản phẩm</a></li>
											</ul></li>
										<li><a href="?page=infor&select=introduce" class="">
												<div class="img-luna img-icon">
													<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16"
														width="16" height="16">
														<path fill-rule="evenodd"
															d="M15.571.572A.75.75 0 0116 1.25L14.777.668c.001 0 0 0 0 0l-.015.012-.076.056a5.508 5.508 0 01-.345.224 9.982 9.982 0 01-1.463.719c-1.322.528-3.351 1.07-6.124 1.071a1.6 1.6 0 00-.861-.25H4a4 4 0 00-1.499 7.71.758.758 0 00-.001.04c0 2.32.486 3.93.813 4.75.262.66.897 1 1.517 1h1.197c.685 0 1.228-.389 1.546-.857.317-.466.468-1.09.31-1.696-.2-.767-.382-1.835-.383-3.183 2.394.086 4.177.577 5.378 1.057a9.965 9.965 0 011.463.719 5.7 5.7 0 01.421.28l.014.012h.002A.75.75 0 0016 11.75V1.25L14.777.668a.75.75 0 01.794-.096zM4.002 10.5c.033 1.969.45 3.306.704 3.946.004.01.01.02.027.03a.185.185 0 00.097.024h1.197c.083 0 .202-.047.305-.2a.608.608 0 00.1-.475 14.036 14.036 0 01-.43-3.329 1.64 1.64 0 01-.11.004h-1.89zM7.5 8.763c2.601.087 4.573.62 5.935 1.166.41.164.766.33 1.065.483V2.588c-.3.154-.654.319-1.065.483C12.073 3.616 10.1 4.15 7.5 4.237v4.526zM14.777.668zM1.5 6.5A2.5 2.5 0 014 4h1.893c.059 0 .107.048.107.107v4.786A.107.107 0 015.893 9H4a2.5 2.5 0 01-2.5-2.5z"></path></svg>
												</div> <span>Về chúng tôi</span> <i class="fa fa-angle-right"
												aria-hidden="true"></i>
										</a>
											<ul class="ul-non ul-mega">
												<li><a href="?page=infor&select=introduce">Giới
														thiệu Beautygarden</a></li>
												<li><a href="">Bảo mật thông tin</a></li>
												<li><a href="">Điều khoản sử dụng</a></li>
											</ul></li>
										<li><a href="" class="">
												<div class="img-luna img-icon">
													<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16"
														width="16" height="16">
														<path fill-rule="evenodd"
															d="M7.693 1.066a.75.75 0 01.614 0l7.25 3.25a.75.75 0 010 1.368L13 6.831v2.794c0 1.024-.81 1.749-1.66 2.173-.893.447-2.075.702-3.34.702-.278 0-.55-.012-.816-.036a.75.75 0 01.133-1.494c.22.02.45.03.683.03 1.082 0 2.025-.221 2.67-.543.69-.345.83-.682.83-.832V7.503L8.307 8.934a.75.75 0 01-.614 0L4 7.28v1.663c.296.105.575.275.812.512.438.438.688 1.059.688 1.796v3a.75.75 0 01-.75.75h-3a.75.75 0 01-.75-.75v-3c0-.737.25-1.358.688-1.796.237-.237.516-.407.812-.512V6.606L.443 5.684a.75.75 0 010-1.368l7.25-3.25zM2.583 5L8 7.428 13.416 5 8 2.572 2.583 5zM2.5 11.25c0-.388.125-.611.25-.735a.704.704 0 01.5-.203c.19 0 .37.071.5.203.125.124.25.347.25.735v2.25H2.5v-2.25z"></path></svg>
												</div> <span>Hỗ trợ</span> <i class="fa fa-angle-right"
												aria-hidden="true"></i>
										</a>
											<ul class="ul-non ul-mega">
												<li><a href="">Hướng dẫn mua hàng</a></li>
												<li><a href="">Thanh toán vận chuyển</a></li>
												<li><a href="">Chính sách đổi trả</a></li>
												<li><a href="">Giải đáp thắc mắc</a></li>
											</ul></li>
										<li><a href="" class="">
												<div class="img-luna img-icon">
													<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16"
														width="16" height="16">
														<path fill-rule="evenodd"
															d="M5.5 3.5a2 2 0 100 4 2 2 0 000-4zM2 5.5a3.5 3.5 0 115.898 2.549 5.507 5.507 0 013.034 4.084.75.75 0 11-1.482.235 4.001 4.001 0 00-7.9 0 .75.75 0 01-1.482-.236A5.507 5.507 0 013.102 8.05 3.49 3.49 0 012 5.5zM11 4a.75.75 0 100 1.5 1.5 1.5 0 01.666 2.844.75.75 0 00-.416.672v.352a.75.75 0 00.574.73c1.2.289 2.162 1.2 2.522 2.372a.75.75 0 101.434-.44 5.01 5.01 0 00-2.56-3.012A3 3 0 0011 4z"></path></svg>
												</div> <span>Liên hệ</span>
										</a></li>
									</ul></li>

								<!-- sádgfdas -->
								<li class="li-parent">
								<!-- a href="?page=category&id=1"
									class="a-parent"> Trang Điểm <i
										class="fa fa-angle-down hidden-xs hidden-sm"
										aria-hidden="true"></i> <i class="fa fa-angle-right hidden-md"
										aria-hidden="true"></i>
								</a> -->
								<a href='<c:url value= "/category/1"></c:url>'
									class="a-parent"> Trang Điểm <i
										class="fa fa-angle-down hidden-xs hidden-sm"
										aria-hidden="true"></i> <i class="fa fa-angle-right hidden-md"
										aria-hidden="true"></i>
								</a>
									<div class="out-menu ">
										<div class="row">
											<div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
												<div>
												
													<a href="<c:url value= "/classify/1"></c:url>" class="title-two">Trang Điểm Mặt</a>
													<ul class="ul-non ul-out">
														<li><a href="<c:url value= "/classify/1"></c:url>">Kem che khuyết
																điểm</a></li>
														<li><a href="<c:url value= "/classify/2"></c:url>">Cushion</a></li>
														<li><a href="<c:url value= "/classify/3"></c:url>">Kem nền</a></li>
														<li><a href="<c:url value= "/classify/4"></c:url>">Kem BB - CC -
																DD</a></li>
														<li><a href="<c:url value= "/classify/5"></c:url>">Primer - Kem
																Lót</a></li>
														<li><a href="<c:url value= "/classify/6"></c:url>">Phấn phủ - Phấn
																nền</a></li>
														<li><a href="<c:url value= "/classify/7"></c:url>">Phấn má hồng</a></li>
														<li><a href="<c:url value= "/classify/8"></c:url>">Tạo khối -
																Highlighter</a></li>
														<li><a href="<c:url value= "/classify/9"></c:url>">Xịt khoáng nền</a></li>
													</ul>
												</div>
											</div>
											<div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
												<div>
													<a href="<c:url value= "/classify/10"></c:url>" class="title-two">Trang
														Điểm Mắt</a>
													<ul class="ul-non ul-out">
														<li><a href="<c:url value= "/classify/10"></c:url>">Phấn Mắt</a></li>
														<li><a href="<c:url value= "/classify/11"></c:url>">Eye Primer –
																Kem Lót Mắt</a></li>
														<li><a href="<c:url value= "/classify/12"></c:url>">Kẻ Mày</a></li>
														<li><a href="<c:url value= "/classify/13"></c:url>">Eyeliner – Kẻ
																Mắt</a></li>
														<li><a href="<c:url value= "/classify/14"></c:url>">Mascara</a></li>
													</ul>
												</div>
											</div>
											<div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
												<div>
													<a href="<c:url value= "/classify/15"></c:url>" class="title-two">Trang
														Điểm Môi</a>
													<ul class="ul-non ul-out">
														<li><a href="<c:url value= "/classify/15"></c:url>">Che khuyết
																điểm môi</a></li>
														<li><a href="<c:url value= "/classify/16"></c:url>">Son môi</a></li>
														<li><a href="<c:url value= "/classify/17"></c:url>">Son dưỡng </a></li>
														<li><a href="<c:url value= "/classify/18"></c:url>">Lót môi – Khóa
																môi</a></li>
														<li><a href="<c:url value= "/classify/19"></c:url>">Son high-end</a></li>
													</ul>
												</div>
											</div>
											<div
												class="col-lg-3 col-md-12 col-sm-12 col-xs-12 hidden-sm hidden-xs">
												<div>
													<img src="<c:url value='/template/img/girl1.jpg'/>" alt="" class="img-reponsive">
												</div>
											</div>
										</div>
									</div></li>
								<li class="li-parent"><a href="<c:url value= "/category/2"></c:url>"
									class="a-parent"> Chăm Sóc Da <i
										class="fa fa-angle-down hidden-xs hidden-sm"
										aria-hidden="true"></i> <i class="fa fa-angle-right hidden-md"
										aria-hidden="true"></i>
								</a>

									<div class="out-menu right-mn">
										<div class="row">
											<div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
												<div>
													<a href="<c:url value= "/classify/20"></c:url>" class="title-two">Mask -
														Mặt nạ</a>
													<ul class="ul-non ul-out">
														<li><a href="<c:url value= "/classify/20"></c:url>">Mặt nạ lột mụn</a></li>
														<li><a href="<c:url value= "/classify/21"></c:url>">Mask Đất Sét</a></li>
														<li><a href="<c:url value= "/classify/22"></c:url>">Mask Giấy</a></li>
														<li><a href="<c:url value= "/classify/23"></c:url>">Mask Đắp - Rửa
														</a></li>
														<li><a href="<c:url value= "/classify/24"></c:url>">Mask Ngủ</a></li>
														<li><a href="<c:url value= "/classify/25"></c:url>">Mask Thiên
																Nhiên</a></li>
													</ul>
												</div>
											</div>
											<div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
												<div>
													<a href="<c:url value= "/classify/26"></c:url>" class="title-two">Làm
														sạch da </a>
													<ul class="ul-non ul-out">
														<li><a href="<c:url value= "/classify/26"></c:url>">Sữa rửa mặt</a></li>
														<li><a href="<c:url value= "/classify/27"></c:url>">Tẩy trang </a></li>
														<li><a href="<c:url value= "/classify/28"></c:url>">Tẩy tế bào
																chết</a></li>
													</ul>
												</div>
											</div>
											<div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
												<div>
													<a href="<c:url value= "/classify/29"></c:url>" class="title-two">Dưỡng
														da </a>
													<ul class="ul-non ul-out">
														<li><a href="<c:url value= "/classify/29"></c:url>">Dưỡng da mặt</a></li>
														<li><a href="<c:url value= "/classify/30"></c:url>">Hỗ trợ</a></li>
														<li><a href="<c:url value= "/classify/31"></c:url>">Dưỡng vùng mắt</a></li>
														<li><a href="<c:url value= "/classify/32"></c:url>">Kem dưỡng da</a></li>
														<li><a href="<c:url value= "/classify/33"></c:url>">Essence -
																Serum - Ampoule</a></li>
														<li><a href="<c:url value= "/classify/34"></c:url>">Lotion - Sữa
																dưỡng</a></li>
														<li><a href="<c:url value= "/classify/35"></c:url>">Toner - Nước
																hoa hồng</a></li>
														<li><a href="<c:url value= "/classify/36"></c:url>">Kem chống nắng</a></li>
													</ul>
												</div>
											</div>
											<div
												class="col-lg-3 col-md-12 col-sm-12 col-xs-12 hidden-sm hidden-xs">
												<div>
													<img src="<c:url value='/template/img/girl2.jpg'/>" alt="" class="img-reponsive">
												</div>
											</div>
										</div>
									</div></li>
								<li class="li-parent"><a href="<c:url value= "/category/3"></c:url>"
									class="a-parent"> Chăm Sóc Tóc <i
										class="fa fa-angle-down hidden-xs hidden-sm"
										aria-hidden="true"></i> <i class="fa fa-angle-right hidden-md"
										aria-hidden="true"></i>
								</a>
									<div class="out-menu right-mn">
										<div class="row">
											<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
												<div>
													<ul class="ul-non ul-out">
														<li><a href="<c:url value= "/classify/37"></c:url>">Set dưỡng tóc</a></li>
														<li><a href="<c:url value= "/classify/38"></c:url>">Dầu gội </a></li>
													</ul>
												</div>
											</div>
											<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
												<div>
													<ul class="ul-non ul-out">
														<li><a href="<c:url value= "/classify/39"></c:url>">Dầu xả</a></li>
														<li><a href="<c:url value= "/classify/40"></c:url>">Kem ủ tóc</a></li>
													</ul>
												</div>
											</div>
											<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
												<div>
													<ul class="ul-non ul-out">
														<li><a href="<c:url value= "/classify/41"></c:url>">Dầu gội khô</a></li>
														<li><a href="<c:url value= "/classify/42"></c:url>">Serum dưỡng
																tóc</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div></li>
								<li class="li-parent"><a href="<c:url value= "/category/4"></c:url>"
									class="a-parent"> Phụ Kiện <i
										class="fa fa-angle-down hidden-xs hidden-sm"
										aria-hidden="true"></i> <i class="fa fa-angle-right hidden-md"
										aria-hidden="true"></i>
								</a>
									<div class="out-menu menu-outer">
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div>
													<ul class="ul-non ul-out">
														<li><a href="<c:url value= "/classify/43"></c:url>">Dụng cụ trang
																điểm</a></li>
														<li><a href="<c:url value= "/classify/44"></c:url>">Phụ kiện làm
																đẹp</a></li>
														<li><a href="<c:url value= "/classify/45"></c:url>">Sơn móng - Rửa
																móng</a></li>
														
													</ul>
												</div>
											</div>
										</div>
									</div></li>
								<li class="li-parent"><a href="<c:url value= "/category/5"></c:url>"
									class="a-parent"> Nước Hoa <i
										class="fa fa-angle-down hidden-xs hidden-sm"
										aria-hidden="true"></i> <i class="fa fa-angle-right hidden-md"
										aria-hidden="true"></i>
								</a>
									<div class="out-menu menu-outer">
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div>
													<ul class="ul-non ul-out">
														<li><a href="<c:url value= "/classify/47"></c:url>">Nước hoa nữ </a></li>
														<li><a href="<c:url value= "/classify/48"></c:url>">Nước hoa nam</a></li>
														<li><a href="<c:url value= "/classify/49"></c:url>">Xịt thơm body</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div></li>
								<li class="li-parent"><a href="<c:url value= "/category/6"></c:url>"
									class="a-parent"> Chăm Sóc Toàn Thân <i
										class="fa fa-angle-down hidden-xs hidden-sm"
										aria-hidden="true"></i> <i class="fa fa-angle-right hidden-md"
										aria-hidden="true"></i>
								</a>

									<div class="out-menu right-mn">
										<div class="row">
											<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
												<div>
													<ul class="ul-non ul-out">
														<li><a href="<c:url value= "/classify/50"></c:url>">Dưỡng thể -
																Body Lotion</a></li>
														<li><a href="<c:url value= "/classify/51"></c:url>">Sữa tắm</a></li>
														<li><a href="<c:url value= "/classify/52"></c:url>">Kem dưỡng toàn
																thân - Body Cream</a></li>
													</ul>
												</div>
											</div>
											<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
												<div>
													<ul class="ul-non ul-out">
														<li><a href="<c:url value= "/classify/53"></c:url>">Dưỡng da tay</a></li>
														<li><a href="<c:url value= "/classify/54"></c:url>">Tẩy tế bào
																chết</a></li>
														<li><a href="<c:url value= "/classify/55"></c:url>">Tẩy lông</a></li>
													</ul>
												</div>
											</div>
											<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
												<div>
													<ul class="ul-non ul-out">
														<li><a href="<c:url value= "/classify/56"></c:url>">Khử mùi</a></li>
														<li><a href="<c:url value= "/classify/57"></c:url>">Giảm sẹo –
																Giảm thâm – Giảm nám</a></li>
														<li><a href="<c:url value= "/classify/58"></c:url>">Chăm sóc răng
																miệng</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div></li>
								<li class="li-parent"><a href="?page=off" class="a-parent">
										Khuyến mãi <i class="fa fas" aria-hidden="true"></i> <span
										class="pos-kam">Hot</span>
								</a></li>
								<li class="li-parent"><a href="?page=trademark&id=1"
									class="a-parent"> Thương hiệu <i
										class="fa fa-angle-down hidden-xs hidden-sm"
										aria-hidden="true"></i> <i class="fa fa-angle-right hidden-md"
										aria-hidden="true"></i>
								</a>
									<div class="out-menu right-mn">
										<div class="row">
											<div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
												<div>
													<ul class="ul-non ul-out">
														<li><a href="?page=trademark&id=1">3CE</a></li>
														<li><a href="?page=trademark&id=2">3W Clinic</a></li>
														<li><a href="?page=trademark&id=3">A'PIEU</a></li>
														<li><a href="?page=trademark&id=4">Aritaum</a></li>
														<li><a href="?page=trademark&id=5">Avene</a></li>
														<li><a href="?page=trademark&id=6">Bath and body
																works</a></li>
														<li><a href="?page=trademark&id=7">Benton</a></li>
														<li><a href="?page=trademark&id=8">Bioderma</a></li>
														<li><a href="?page=trademark&id=9">Careline</a></li>
														<li><a href="?page=trademark&id=10">City Color</a></li>
														<li><a href="?page=trademark&id=11">Cocoon</a></li>
														<li><a href="?page=trademark&id=12">Covergirl</a></li>
														<li><a href="?page=trademark&id=13">DHC</a></li>
														<li><a href="?page=trademark&id=14">Dr.Belmeur</a></li>
													</ul>
												</div>
											</div>
											<div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
												<div>
													<ul class="ul-non ul-out">
														<li><a href="?page=trademark&id=15">Etude House</a></li>
														<li><a href="?page=trademark&id=16">Evoluderm</a></li>
														<li><a href="?page=trademark&id=17">Hada Labo</a></li>
														<li><a href="?page=trademark&id=18">Holika Holika
														</a></li>
														<li><a href="?page=trademark&id=19">Innisfree</a></li>
														<li><a href="?page=trademark&id=20">Kose</a></li>
														<li><a href="?page=trademark&id=21">L.A Girl</a></li>
														<li><a href="?page=trademark&id=22">LANEIGE KOREA</a></li>
														<li><a href="?page=trademark&id=23">Lanopearl</a></li>
														<li><a href="?page=trademark&id=24">L'oreal Paris</a></li>
														<li><a href="?page=trademark&id=25">MAC</a></li>
														<li><a href="?page=trademark&id=26">Mamonde</a></li>
														<li><a href="?page=trademark&id=27">Maybelline</a></li>
														<li><a href="?page=trademark&id=28">Missha</a></li>
													</ul>
												</div>
											</div>
											<div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
												<div>
													<ul class="ul-non ul-out">
														<li><a href="?page=trademark&id=29">Nature
																Republic</a></li>
														<li><a href="?page=trademark&id=30">Neutrogena</a></li>
														<li><a href="?page=trademark&id=31">NYX</a></li>
														<li><a href="?page=trademark&id=32">Ohui </a></li>
														<li><a href="?page=trademark&id=33">Paula's
																Choice</a></li>
														<li><a href="?page=trademark&id=34">Physician
																Formula</a></li>
														<li><a href="?page=trademark&id=35">Play Boy </a></li>
														<li><a href="?page=trademark&id=36">Pony</a></li>
														<li><a href="?page=trademark&id=37">Rebirth </a></li>
														<li><a href="?page=trademark&id=38">Revlon</a></li>
														<li><a href="?page=trademark&id=39">Rimmel</a></li>
														<li><a href="?page=trademark&id=40">Secret Key</a></li>
														<li><a href="?page=trademark&id=41">Shiseido</a></li>
														<li><a href="?page=trademark&id=42">Simple</a></li>
													</ul>
												</div>
											</div>
											<div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
												<div>
													<ul class="ul-non ul-out">
														<li><a href="?page=trademark&id=43">Sivanna
																Colors</a></li>
														<li><a href="?page=trademark&id=44">SK - II</a></li>
														<li><a href="?page=trademark&id=45">Skinfood</a></li>
														<li><a href="?page=trademark&id=46">StIves</a></li>
														<li><a href="?page=trademark&id=47">The Body Shop</a></li>
														<li><a href="?page=trademark&id=48">The Face Shop</a></li>
														<li><a href="?page=trademark&id=49">Thương Hiệu
																Khác</a></li>
														<li><a href="?page=trademark&id=50">Tonymoly</a></li>
														<li><a href="?page=trademark&id=51">Vacosi</a></li>
														<li><a href="?page=trademark&id=52">Vichy</a></li>
														<li><a href="?page=trademark&id=53">Victoria's
																Secret</a></li>
														<li><a href="?page=trademark&id=54">W7 </a></li>
														<li><a href="?page=trademark&id=55">Yadah </a></li>
													</ul>
												</div>
											</div>
										</div>
									</div></li>
							</ul>
							<ul class="ul-non ul-right">
								<li><a><i class="fa fa-search" aria-hidden="true"></i></a>
									<div class="searcf-s">
										<form class="form-inline" method="post" action="?page=search">
											<input type="text" class="form-control my-form"
												id="inlineFormInputName3" placeholder="Tìm kiếm..."
												autocomplete="off" onfocus="" onfocusout="unfos2()"
												name="search">
											<button type="button" class="btn btn-search" onclick=""
												id="buttonFormInputName3">
												<i class="fa fa-search" aria-hidden="true"></i>
											</button>
										</form>
										<script type="text/javascript">
											$("#buttonFormInputName3")
													.click(
															function() {
																check = $(
																		'#inlineFormInputName3')
																		.val();
																if (check == '') {
																	$(
																			'#buttonFormInputName3')
																			.attr(
																					'type',
																					'button');
																	alert('Bạn vui lòng nhập từ khóa!');
																}
															});
										</script>
									</div></li>
								<li><a href="./?page=cart"> <i
										class="fa fa-shopping-cart " id="result2">3</i>
								</a></li>
							</ul>
							<ul class="ul-non ul-menu-lagi hidden-md" id="ul-megaloger-mb">
								<li><a href="" class="">
										<div class="img-luna img-icon img-tt"></div> <span>Thông
											tin</span> <i class="fa fa-angle-right" aria-hidden="true"></i>
								</a>
									<ul class="ul-non ul-mega">
										<li><a href="">Sự kiện khuyến mãi</a></li>
										<li><a href="./?select=beautypage">Bí quyết làm đẹp</a></li>
										<li><a href="">Tin báo chí</a></li>
										<li><a href="">Review sản phẩm</a></li>
									</ul></li>
								<li><a href="" class="">
										<div class="img-luna img-icon img-about"></div> <span>Về
											chúng tôi</span> <i class="fa fa-angle-right" aria-hidden="true"></i>
								</a>
									<ul class="ul-non ul-mega">
										<li><a href="">Giới thiệu Beautygarden</a></li>
										<li><a href="">Hệ thống cửa hàng</a></li>
										<li><a href="">Chương trình tích điểm</a></li>
										<li><a href="">Bảo mật thông tin</a></li>
										<li><a href="">Điều khoản sử dụng</a></li>
									</ul></li>
								<li><a href="" class="">
										<div class="img-luna img-icon img-support"></div> <span>Hỗ
											trợ</span> <i class="fa fa-angle-right" aria-hidden="true"></i>
								</a>
									<ul class="ul-non ul-mega">
										<li><a href="">Hướng dẫn mua hàng</a></li>
										<li><a href="">Thanh toán vận chuyển</a></li>
										<li><a href="l">Chính sách đổi trả</a></li>
										<li><a href="">Giải đáp thắc mắc</a></li>
									</ul></li>
								<li><a href="" class="">
										<div class="img-luna img-icon img-contact"></div> <span>Liên
											hệ</span>
								</a></li>
								<li><a href="" class="">
										<div class="img-luna img-icon img-thucpham"></div> <span>Thực
											phẩm chức năng</span>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
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