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
							<li><a href="<c:url value= "/dat-hang"></c:url>">Thanh toán đơn hàng</a></li>
						</ol>
					</div>
				</div>

			</div>
		</div>
		<div class="pad-tab-40">
			<div class="container">
				<div class="row">
					<!-- bắt đ -->
					<div class="col-lg-7">
						<div id="load-error"></div>
						<h2 class="h2-fiead">Địa chỉ nhận hàng</h2>
						<form:form action="order" modelAttribute="donhang" method="post">
							<div class="form-group row">
								<label for="inputPassword" class="col-sm-3 col-form-label text-rights opsize"><b>Họ tên</b></label>
								<div class="col-sm-9">
									<form:input type="text" path="hoVaTen" class="form-control opsize" id="txtName" placeholder="VD: N̴͈̩̤͉̊̀͗̃̏͌̀̄̕͝g̸̠͌́̌͒͑̋͐̑̒̊͑̓͗ǘ̵͖̹̰̣̹̦̀̅͒͌̀̚ỳ̷͖͔̘̗̣̞͙́͛͐̑͠ễ̵̡̥͙̦̳̝̝̟̰̟̓̓̐͘ͅn̶͕̫͔̙̠̩͇̩̂́̊̈́͊̃́̃͗͘͜͝͠ͅ H̸̡̨̢͓̼̥̻̙̖̜͉̫͙̒̈̀̃̀̚à̶̳̮̱͐̓̀͐͑͋͆̔̃̑͠ (*)" onchange="" value=""/>  
									<div class="invalid-feedback" id="val-txtName">

									</div>
								</div>
							</div>
							<div class="form-group row">
								<label path="gioiTinh" for="inputPassword" class="col-sm-3 col-form-label text-rights opsize"><b>Giới tính</b></label>
								<div class="col-sm-9">
									
									<label>Nam</label> <form:radiobutton path="gioiTinh" value="1"/>
									<label>Nữ</label> <form:radiobutton path="gioiTinh" value="0"/>
									<div class="invalid-feedback" id="val-txtName">

									</div>
								</div>
							</div>
							<div class="form-group row">
								<label for="inputPassword" class="col-sm-3 col-form-label text-rights opsize"><b>Số điện thoại</b></label>
								<div class="col-sm-9">
								<form:input path="sdt" type="text" class="form-control opsize" id="txtPhone" placeholder="VD: 0999 666 999 (*)" onchange="" value=""/>
									<div class="invalid-feedback" id="val-txtPhone">

									</div>
								</div>
							</div>
	                    <!-- <div class="form-group row">
	                        <label for="inputPassword" class="col-sm-3 col-form-label text-rights opsize"><b>Tỉnh/Thành phố</b></label>
	                        <div class="col-sm-9">
	                            <select id="RegionId" class="form-control opsize" onchange="">

	                                <option value="0">Chọn tỉnh thành phố</option>
	                                <option value="23">Hồ Chí Minh</option>
	                                <option value="18">Hà Nội</option>
	                                <option value="58">Đà Nẵng</option>
	                                
	                            </select>
	                            <div class="invalid-feedback" id="val-RegionId">

	                            </div>
	                        </div>
	                    </div>
	                    <div class="form-group row">
	                        <label for="inputPassword" class="col-sm-3 col-form-label text-rights opsize"><b>Quận/Huyện</b></label>
	                        <div class="col-sm-9">
	                            <select id="DistristId" class="form-control opsize" onchange="">
	                                <option value="0">Chọn quận huyện</option>
	                                <option value="691">Huyện Định Quán</option>
	                                <option value="692">Huyện Long Thành</option>
	                                <option value="693">Huyện Cẩm Mỹ</option>
	                                <option value="694">Thành phố Biên Hòa</option>
	                                <option selected="" value="695">Huyện Thống Nhất</option>
	                                <option value="696">Huyện Nhơn Trạch</option>
	                                <option value="697">Huyện Vĩnh Cửu</option>
	                                <option value="698">Huyện Xuân Lộc</option>
	                                <option value="699">Huyện Trảng Bom</option>
	                                <option value="700">Huyện Tân Phú</option>
	                                <option value="701">Thị xã Long Khánh</option>

	                            </select>
	                            <div class="invalid-feedback" id="val-DistristId">

	                            </div>
	                        </div>
	                    </div>
	                    <div class="form-group row hide">
	                        <label for="inputPassword" class="col-sm-3 col-form-label text-rights opsize"><b>Phường/Xã</b></label>
	                        <div class="col-sm-9">
	                            <select id="WardId" class="form-control opsize" onchange="">
	                                <option selected="" value="0">Chọn phường xã</option>
	                                <option value="">Xã Bàu Hàm 2</option>
	                                <option value="">Xã Gia Kiệm</option>
	                                
	                            </select>
	                            <div class="invalid-feedback" id="val-WardId">

	                            </div>
	                        </div>
	                    </div> -->
	                    <div class="form-group row">
	                    	<label for="inputPassword" class="col-sm-3 col-form-label text-rights opsize"><b>Địa chỉ</b></label>
	                    	<div class="col-sm-9">
	                    		<textarea id="txtAdress" class="form-control opsize" placeholder="Số nhà, đường, phường xã..." onchange="" name="address"></textarea>
	                    		<div class="invalid-feedback" id="val-txtAdress">

	                    		</div>
	                    	</div>
	                    </div>
	                    <div class="form-group row">
	                    	<label for="staticEmail" class="col-sm-3 col-form-label text-rights opsize"><b>Email</b></label>
	                    	<div class="col-sm-9">
	                    		<input type="email" class="form-control opsize " id="txtEmail" placeholder="VD: beautygirl@gmail.com" onchange="" name="email" value="">
	                    		<div class="invalid-feedback" id="val-txtEmail">

	                    		</div>
	                    	</div>
	                    </div>
	                    <div class="form-group row">
	                    	<label for="inputPassword" class="col-sm-3 col-form-label text-rights opsize"><b>Ghi chú</b></label>
	                    	<div class="col-sm-9">
	                    		<textarea id="txtNote" class="form-control opsize" placeholder="VD: Giao hàng vào buổi sáng" onchange="" name="note"></textarea>
	                    	</div>
	                    </div>
	                    <div class="form-group row hidden-sm hidden-xs">
	                    	<div class="col-sm-6 col-7">
	                    		<a class="btn btn-light pull-left opsize" href="<c:url value= "/gio-hang"></c:url>">QUAY LẠI GIỎ HÀNG</a>
	                    	</div>
	                    	<div class="col-sm-6 col-5">
	                    		<button class="btn btn-thanhtoan pull-right opsize" type="submit" onclick="return kiemtraFormdathang()" id="btn-tt">THANH TOÁN</button>
	                    	</div>
	                    </div>
	                    <!-- </form> -->
	                </div>
	                <!-- kết thúc -->
	                <!-- bắt đầu -->
	                <div class="col-lg-5">
	                	<div id="load-casf" class="order">

	                		<div id="cart-info" class="cart-info">
	                			<h2 class="title-secres">Giỏ Hàng</h2>
	                			<ul class="list-unstyled">
	                					<c:forEach var="Cart" items="${Cart }">
	                					<li>
	                						<figure>
	                							<a class="cart_list_product_img" href="" title="">
	                								<img src="<c:url value="/template/${Cart.value.product.img }"></c:url>" alt="" class="img-reponsive imds">
	                							</a>
	                						</figure>
	                						<div class="list_content">
	                						
	                							<h5>
	                								<a href="<c:url value= "/product/${Cart.value.product.ma_Sp}"></c:url>" title="">
	                									<span class="name-ps">${Cart.value.product.ten_Sp}</span>
	                								</a>

	                							</h5>
	                							<div class="quantity">
	                								${Cart.value.quanty} x
	                								<span class="amount">
	                									<span class="money" style="color: #199427; font-size: 14px !important;">
	                										<fmt:formatNumber value="${Cart.value.product.gia_Ban}" type="currency" currencySymbol="" />₫
	                									</span>
	                									
	                								</span>
	                								<div class="pull-right tt">
	                									<fmt:formatNumber value="${Cart.value.totalPrice}" type="currency" currencySymbol="" />₫
	                								</div>
	                							</div>
	                							<div class="iserror">
	                							</div>
	                							
	                						</div>
	                						<div class="clr"></div>
	                					</li>
	                				</c:forEach>
	                			</ul>
	                			<div class="load-lead">
	                				<div class="box-coupon">
<c:set var="totalPrice" value="0" />
<c:forEach items="${Cart}" var="cartItem">
    <c:set var="totalPrice" value="${totalPrice + cartItem.value.totalPrice}" />
</c:forEach>
	                					<p class="list-info-price" id="price-before" data-id="318000">
	                						<small class="color-black">Tạm tính: </small> <span style="color:green"><fmt:formatNumber value="${totalPrice}" type="currency" currencySymbol="₫" /></span>
	                					</p>
	                				</div>
	                			</div>
	                			<!--Tổng số tiền-->
					       <!--  <div class="load-giamgia " id="fac" data-id="False">
					            <div class="box-coupon">
					                <p class="list-info-price" id="pricetotalmis" data-id="318000">
					                    <small class="color-black">Giảm giá: </small> <span>- ₫</span>
					                </p>
					            </div>
					        </div> -->
					        <div class="load-ship">
					        	<div class="box-coupon">
					        		<p class="list-info-price" id="priceship" data-id="0">
					        			<small class="color-black">Phí vận chuyển: </small> <span>+30,000₫</span>
					        		</p>
					        	</div>
					        </div>
					        <div class="subtotal">
					        	Thành tiền:
					        	<span>
					        		<span class="amount">
					        			<strong class="money lucal" style="color: #e54d42;"> <fmt:formatNumber value="${totalPrice+30000}" type="currency" currencySymbol="₫" /> </strong>
					        		</span>
					        	</span>
					        </div>
					        <div class="pttt">
					        	<span>* Phương thức thanh toán: Nhận hàng &amp; thanh toán tiền mặt tại nhà</span>
					        </div>
					    </div>
					</div>
					<!-- <form class="hidden-md" action="?page=cart&select=pay" method="post"> -->
						<div class="form-group row hidden-md">
							<div class="col-sm-6 col-7">
								<a class="btn btn-light pull-left opsize" href="<c:url value= "/gio-hang"></c:url>">QUAY LẠI GIỎ HÀNG</a>
							</div>
							<div class="col-sm-6 col-5">
								<button class="btn btn-thanhtoan pull-right opsize" type="submit" onclick="return kiemtraFormdathang()" id="btn-tt2">THANH TOÁN</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</main>
</body>
</html>