<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<main role="main" class="pb-3">
		<div class="bracum">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ol class="ol-non">
							<li><a href="./">Trang chủ</a></li>
							<li><a href="<c:url value= "/gio-hang"></c:url>">Giỏ hàng</a></li>
						</ol>
					</div>
				</div>

			</div>
		</div>
		<div class="">
			<div class="container" id="load-card">
				<div class="row titles">

					<!-- Sản phẩm bên phải -->
					<div class="col-lg-8 col-md-12 cart-col-1">
						<div id="load-error">
							<!-- lỗi khi chưa có sản phẩm nào -->
						</div>
						<div class="row">
							<div class="col-lg-6 col-md-6 col-12"
								style="padding-left: 0; height: 31px">
								<span class="cart_index"> Giỏ hàng <span>(${Cart.size() } sản phẩm)
								</span>
								</span>
							</div>
							<div class="col-lg-2 col-md-2 hidden-xs">
								<h6>Giá mua</h6>
							</div>
							<div class="col-lg-2 col-md-2 hidden-xs">
								<h6>Số lượng</h6>
							</div>
							<div class="col-lg-2 col-md-2 hidden-xs">
								<h6>Thành tiền</h6>
							</div>
						</div>
						<div class="shopping-cart-item">
						<c:forEach var="Cart" items="${Cart }">
						<div class="row">
								<div class="col-lg-2 col-md-2 col-3 img-thumnail-custom">
									<div class="image">
										<a class="top_zindex"
											href="<c:url value= "/product/${Cart.value.product.ma_Sp}"></c:url>"
											title="${Cart.value.product.ten_Sp}"> <img
											class="img-reponsive" src="<c:url value="/template/${Cart.value.product.img}"></c:url>"
											alt="">
										</a>
									</div>
								</div>
								<div class="col-lg-4 col-md-4 c2 col-6">
									<div class="name">
										<a class="top_zindex"
											href="<c:url value= "/product/${Cart.value.product.ma_Sp}"></c:url>"
											title="${Cart.value.product.ten_Sp}"> ${Cart.value.product.ten_Sp}</a>

									</div>

									<p class="action">
										<a href="<c:url value= "/DeleteCart/${Cart.value.product.ma_Sp}"></c:url>"
											class="btn btn-link btn-item-delete hidden-sm hidden-xs"
											title="Xóa"
											>
											Xóa </a>
									</p>
									<div class="clr"></div>
								</div>
								<div class="col-lg-2 col-md-2 col-3">
									<div class="mar-bot-mb">
										<span class="price price-mb" style="color: #199427;">
											<fmt:formatNumber value="${Cart.value.product.gia_Ban}" type="currency" currencySymbol="" />
										</span> <span class="price price-mb oik ">
										</span>
										<!-- <span class="sale  hidden-sm hidden-xs">Giảm 15%</span> -->
									</div>
								</div>
								<div class="col-3 hidden-lg hidden-md"></div>
								<div class="col-lg-2 col-md-2 col-6 " style="width: 240px;">
									<!--Số lượng-->
									<div class="form-group">
										<div class="input-group wb-60">
											<input  type="number"
												id="soluong${Cart.key}"
												class="form-control input-qty"
												value="${Cart.value.quanty}" name="qty1"
												min="1" max="${Cart.value.product.sl_Trong_Kho}">
											<div class="input-group-addon" style="border: 0;">
												<a data-id="${Cart.key}" class="edit-cart" href="" id="save${Cart.value.quanty}"
													title="Lưu thay đổi" onclick=""> <i class="fa fa-save "></i>
												</a>
											</div>
										</div>
										<a
											href="<c:url value= "/DeleteCart/${Cart.value.product.ma_Sp}"></c:url>"
											class="btn btn-link btn-item-delete hidden-md btn-mbx"
											title="Xóa"
											>
											Xóa </a>
									</div>
								</div>
								<div class="col-lg-2 col-md-2 col-3">
									<p class="price tt-mb"
										id="thanhtien<?php echo $array[$i]['ma_sp']; ?>"
										style="color: #199427;">
										<fmt:formatNumber value="${Cart.value.totalPrice}" type="currency" currencySymbol="" />
										<span class="price price-mb oik ">₫</span>
									</p>
								</div>
								<div class="box-info-discount-mobile hidden-md hidden-lg"></div>
							</div>
						</c:forEach>
							
						</div>
						<script type="text/javascript">
							$(".edit-cart").on("click", function(){
								var id = $(this).data("id");
								var quanty = $("#soluong"+id).val();
								/* alert(quanty); */
								window.location = "EditCart/"+id+"/"+quanty;
							});
							

							</script>
				
					</div>




					<!-- sản phẩm bên trái -->
					<div class="col-lg-4 col-md-12">
						<div class="panel panel-default fee">
							<div class="panel-body">
<c:set var="totalPrice" value="0" />
<c:forEach items="${Cart}" var="cartItem">
    <c:set var="totalPrice" value="${totalPrice + cartItem.value.totalPrice}" />
</c:forEach>
								<p class="list-info-price" id="pricetotal">
									<b>Tạm tính: </b> <span> <fmt:formatNumber value="${totalPrice}" type="currency" currencySymbol="₫" />
									</span>
								</p>
								<div class="load-giamgia hide">
									<p>
										Giảm giá: <span style="float: right;">10%</span>
									</p>
								</div>
								<p class="total2">
									Thành tiền: <span style="float: right" class="load-price">
										<fmt:formatNumber value="${totalPrice}" type="currency" currencySymbol="₫" />
									</span>
								</p>
								<p class="text-right">
									<i>(Chưa bao gồm phí vận chuyển)</i>
								</p>
							</div>
						</div>
						<button id="btn_submit_cart" type="button"
							class="btn btn-large btn-block btn-default btn-checkout"
							onclick="" style="color: white;">
							<a style="color: white; text-decoration: none;"
								href="<c:url value= "/dat-hang"></c:url>">TIẾN HÀNH ĐẶT HÀNG </a>
						</button>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
</html>