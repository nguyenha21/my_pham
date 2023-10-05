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
							<li><a href="<c:url value="/" ></c:url>">Trang chủ</a></li>
							<li><a
							
							
								href="<c:forEach var="thuonghieu" items="${thuonghieu }"><c:url value= "/trademark/${thuonghieu.maTh }"></c:url></c:forEach>">
									<c:forEach var="thuonghieu" items="${thuonghieu }">${thuonghieu.tenThuongHieu }</c:forEach>
							</a></li>
						</ol>
					</div>
				</div>
			</div>
		</div>

		<!-- main chính -->
		<div class="">
			<div class="container">
				<div class="row">
					<!-- bên phải -->
					<div class="col-lg-9 order-lg-last">
						<div class="box-manugar">
							<!-- phần conten -->
							<div class="my-content">



								<div class="head-box">
									<div class="title-box">
										<h2>
											<a href="" title="<c:forEach var="thuonghieu" items="${thuonghieu }">${danhmuc.tenThuongHieu }</c:forEach>"> <c:forEach var="thuonghieu" items="${thuonghieu }">${thuonghieu.tenThuongHieu }</c:forEach>

											</a>
										</h2>
									</div>
									<div class="select hidden-sm hidden-xs">
										<a style="border-left: 1px solid #d0cccc"
											href="?page=category&id=<?php echo $ma_dm ?>&sort=0"
											class="<?php if($sort==0){echo 'active';} ?>">Mới về</a> <a
											href="?page=category&id=<?php echo $ma_dm ?>&sort=1"
											class="<?php if($sort==1){echo 'active';} ?>">Giá</a> <a
											href="?page=category&id=<?php echo $ma_dm ?>&sort=2"
											class="<?php if($sort==2){echo 'active';} ?>">Mua nhiều</a>
									</div>
									<div class="clr"></div>
								</div>



								<div class="filter mar-bot-10 text-right hidden-md">
									<div class="select2 ">
										<a style="border-left: 1px solid #d0cccc"
											href="?page=category&id=1&sort=0"
											class="<?php if($sort==0){echo 'active';} ?>">Mới về</a> <a
											href="?page=category&id=<?php echo $ma_dm ?>&sort=1"
											class="<?php if($sort==1){echo 'active';} ?>">Giá</a> <a
											href="?page=category&id=<?php echo $ma_dm ?>&sort=2"
											class="<?php if($sort==2){echo 'active';} ?>">Mua nhiều</a>
									</div>
								</div>



								<div class="mar-bot-20">
									<div class="row">
										<c:if test="${productPaginate.size() > 0 }">
											<c:forEach var="productPaginate" items="${productPaginate }">
												<!-- bắt đầu -->
												<div
													class="col-lg-3 col-md-4 col-sm-6 col-6 pan-right mar-bot-10">
													<div class="pd-box ">
														<div class="box-images">
															<a
																href="<c:url value= "/product/${productPaginate.ma_Sp }"></c:url>"
																title=""> <img alt="" class="img-reponsive lazy "
																src="<c:url value="/template/${productPaginate.img }"></c:url>"
																style="">
															</a>
															<button type="button"
																onclick="load_cart(${productPaginate.ma_Sp })"
																class="btn-addlike ">
																<i class="fa fa-cart-plus"></i>
															</button>
															<div class="sale-off hide">
																15%<br>OFF
															</div>
														</div>
														<div class="box-content">
															<h3>
																<a
																	href="<c:url value= "/product/${productPaginate.ma_Sp }"></c:url>"
																	title="">${productPaginate.ten_Sp }</a>
															</h3>
															<div>
																<span class="price-drop"><fmt:formatNumber
																		value="${productPaginate.gia_Ban}" type="currency"
																		currencySymbol="₫" /></span> <span class="price "><fmt:formatNumber
																		value="${productPaginate.gia_Thi_Truong}"
																		type="currency" currencySymbol="₫" /> </span>
															</div>
														</div>
													</div>
												</div>
												<!-- kết thúc -->
											</c:forEach>
										</c:if>



									</div>

									<!-- phân trang -->
									<div class="phantrang" style="color: red">
										<c:forEach var="item" begin="1" end="${paginatesInfo.totalPage}" varStatus="loop">
											<c:if test="${(loop.index) == paginatesInfo.currentPage}">
												<a href="<c:url value= "/trademark/${idTrademark }/${loop.index }"></c:url>" class="active">${loop.index }</a>
											</c:if>
											
											<c:if test="${(loop.index) != paginatesInfo.currentPage}">
												<a href="<c:url value= "/trademark/${idTrademark }/${loop.index }"></c:url>">${loop.index }</a>
											</c:if>
											
										</c:forEach>

									</div>
									<!--  -->
								</div>



							</div>
							<!-- kết thúc -->
						</div>
					</div>
					<!-- kết thúc -->
					<!-- bên trái -->
					<div class="col-lg-3 order-lg-first">
						<!-- 22222222 -->
						<div class="box-left">
							<div class="title-left">
								<strong>DANH MỤC SẢN PHẨM</strong>
							</div>
							<div class="content-left">
								<ul class="ul-non ul-left">
									<li class=" "><a
										href="<c:url value= '/category/1'></c:url>"
										title="Trang Điểm"> <i class="fa fa-angle-right"
											aria-hidden="true"></i> Trang Điểm
									</a>
										<ul class="ul-non ul-childs">
											<li><a href="<c:url value= '/classify/1'></c:url>" title="Trang Điểm Mặt"
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Trang Điểm Mặt
											</a></li>
											<li><a href="<c:url value= '/classify/13'></c:url>"
												title="Trang Điểm Mắt" class=""> <i
													class="fa fa-caret-right" aria-hidden="true"></i> Trang
													Điểm Mắt
											</a></li>
											<li><a href="<c:url value= '/classify/18'></c:url>"
												title="Trang Điểm Môi" class=""> <i
													class="fa fa-caret-right" aria-hidden="true"></i> Trang
													Điểm Môi
											</a></li>
										</ul></li>
									<li class=" "><a
										href="<c:url value= '/category/2'></c:url>"
										title="Chăm Sóc Da"> <i class="fa fa-angle-right"
											aria-hidden="true"></i> Chăm Sóc Da
									</a>
										<ul class="ul-non ul-childs">
											<li><a href="<c:url value= '/classify/26'></c:url>" title="Làm sạch da "
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Làm sạch da
											</a></li>
											<li><a href="<c:url value= '/classify/29'></c:url>" title="Dưỡng da "
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Dưỡng da
											</a></li>
											<li><a href="<c:url value= '/classify/20'></c:url>" title="Mask - Mặt nạ"
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Mask - Mặt nạ
											</a></li>
										</ul></li>
									<li class=" "><a
										href="<c:url value= '/category/3'></c:url>"
										title="Chăm Sóc Tóc"> <i class="fa fa-angle-right"
											aria-hidden="true"></i> Chăm Sóc Tóc
									</a>
										<ul class="ul-non ul-childs">
											<li><a href="<c:url value= '/classify/38'></c:url>" title="Dầu gội "
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Dầu gội
											</a></li>
											<li><a href="<c:url value= '/classify/39'></c:url>" title="Dầu xả"
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Dầu xả
											</a></li>
											<li><a href="<c:url value= '/classify/41'></c:url>" title="Kem ủ tóc"
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Kem ủ tóc
											</a></li>
											<li><a href="<c:url value= '/classify/40'></c:url>" title="Dầu gội khô"
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Dầu gội khô
											</a></li>
											<li><a href="<c:url value= '/classify/42'></c:url>"
												title="Serum dưỡng tóc" class=""> <i
													class="fa fa-caret-right" aria-hidden="true"></i> Serum
													dưỡng tóc
											</a></li>
											<li><a href="?p<c:url value= '/classify/37'></c:url>" title="Set dưỡng tóc"
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Set dưỡng tóc
											</a></li>
										</ul></li>
									<li class=" "><a
										href="<c:url value= '/category/4'></c:url>"
										title="Phụ Kiện"> <i class="fa fa-angle-right"
											aria-hidden="true"></i> Phụ Kiện
									</a>
										<ul class="ul-non ul-childs">
											<li><a href="<c:url value= '/classify/43'></c:url>"
												title="Dụng cụ trang điểm" class=""> <i
													class="fa fa-caret-right" aria-hidden="true"></i> Dụng cụ
													trang điểm
											</a></li>
											<li><a href="?<c:url value= '/classify/44'></c:url>"
												title="Phụ kiện làm đẹp" class=""> <i
													class="fa fa-caret-right" aria-hidden="true"></i> Phụ kiện
													làm đẹp
											</a></li>
											<li><a href="<c:url value= '/classify/45'></c:url>"
												title="Sơn móng - Rửa móng" class=""> <i
													class="fa fa-caret-right" aria-hidden="true"></i> Sơn móng
													- Rửa móng
											</a></li>
										</ul></li>
									<li class=" "><a
										href="<c:url value= '/category/5'></c:url>"
										title="Nước Hoa"> <i class="fa fa-angle-right"
											aria-hidden="true"></i> Nước Hoa
									</a>
										<ul class="ul-non ul-childs">
											<li><a href="<c:url value= '/classify/47'></c:url>" title="Nước hoa nữ "
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Nước hoa nữ
											</a></li>
											<li><a href="<c:url value= '/classify/48'></c:url>" title="Nước hoa nam"
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Nước hoa nam
											</a></li>
											<li><a href="<c:url value= '/classify/49'></c:url>" title="Xịt thơm body"
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Xịt thơm body
											</a></li>
										</ul></li>
									<li class=" "><a
										href="<c:url value= '/category/6'></c:url>"
										title="Chăm Sóc Toàn Thân"> <i class="fa fa-angle-right"
											aria-hidden="true"></i> Chăm Sóc Toàn Thân
									</a>
										<ul class="ul-non ul-childs">
											<li><a href="<c:url value= '/classify/51'></c:url>" title="Sữa tắm"
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Sữa tắm
											</a></li>
											<li><a href="<c:url value= '/classify/52'></c:url>"
												title="Kem dưỡng toàn  thân - Body Cream" class=""> <i
													class="fa fa-caret-right" aria-hidden="true"></i> Kem dưỡng
													toàn thân - Body Cream
											</a></li>
											<li><a href="<c:url value= '/classify/53'></c:url>" title="Dưỡng da tay"
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Dưỡng da tay
											</a></li>
											<li><a href="<c:url value= '/classify/54'></c:url>"
												title="Tẩy tế bào chết" class=""> <i
													class="fa fa-caret-right" aria-hidden="true"></i> Tẩy tế
													bào chết
											</a></li>
											<li><a href="<c:url value= '/classify/55'></c:url>" title="Tẩy lông"
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Tẩy lông
											</a></li>
											<li><a href="<c:url value= '/classify/56'></c:url>" title="Khử mùi"
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Khử mùi
											</a></li>
											<li><a href="<c:url value= '/classify/57'></c:url>"
												title="Giảm sẹo – Giảm thâm – Giảm nám" class=""> <i
													class="fa fa-caret-right" aria-hidden="true"></i> Giảm sẹo
													– Giảm thâm – Giảm nám
											</a></li>
											<li><a href="<c:url value= '/classify/58'></c:url>"
												title="Chăm sóc răng miệng" class=""> <i
													class="fa fa-caret-right" aria-hidden="true"></i> Chăm sóc
													răng miệng
											</a></li>
										</ul></li>
								</ul>
							</div>
						</div>
						<!-- kết thúc 2222222222222 -->



						<div class="box-left hidden-sm hidden-xs">
							<div class="title-left">
								<strong>THƯƠNG HIỆU NỔI BẬT</strong>
							</div>
							<div class="content-left">
								<ul class="ul-non ul-left">
									<li><a href="?page=trademark&id=19" title="Innisfree">Innisfree
									</a></li>
									<li><a href="?page=trademark&id=48" title="The Face Shop">The
											Face Shop </a></li>
									<li><a href="?page=trademark&id=30" title="Neutrogena">Neutrogena
									</a></li>
									<li><a href="?page=trademark&id=24"
										title="L&#39;oreal Paris">L'oreal Paris </a></li>
									<li><a href="?page=trademark&id=27" title="Maybelline">Maybelline
									</a></li>
									<li><a href="?page=trademark&id=51" title="Vacosi">Vacosi
									</a></li>
									<li><a href="?page=trademark&id=3" title="A&#39;PIEU">A'PIEU
									</a></li>
									<li><a href="?page=trademark&id=45" title="Skinfood">Skinfood
									</a></li>
									<li><a href="?page=trademark&id=28" title="Missha">Missha
									</a></li>
									<li><a href="?page=trademark&id=53"
										title="Victoria&#39;s Secret">Victoria's Secret </a></li>
									<li><a href="?page=trademark&id=47" title="The Body Shop">The
											Body Shop </a></li>
								</ul>
							</div>
						</div>



						<div class="box-left">
							<div class="title-left">
								<strong>SẢN PHẨM MỚI VỀ</strong>
							</div>
							<div class="content-left">
								<c:forEach var="sanphammoive" items="${sanphammoive }" end="5">
								<!-- bắt đầu -->
								<div class="box-shas">
										<div class="box-imgs">
											<a
												href="<c:url value= "/product/${sanphammoive.ma_Sp }"></c:url>"
												title=""> <img alt="" class="img-reponsive lazy"
												data-id="lazy-t0"
												src="<c:url value="/template/${sanphammoive.img }"></c:url>"
												style="">
											</a>
										</div>
										<div class="content-shas">
											<a
												href="<c:url value= "/product/${sanphammoive.ma_Sp }"></c:url>"
												title=""> ${sanphammoive.ten_Sp } </a> <span> <fmt:formatNumber
													value="${sanphammoive.gia_Ban}" type="currency"
													currencySymbol="₫" />
											</span>
										</div>
										<div class="clr"></div>
									</div>
								<!--kết thúc  -->
								</c:forEach>
								
								
							</div>

						</div>
					</div>
					<!-- kết thúc -->
				</div>
			</div>
		</div>




	</main>
</body>
</html>