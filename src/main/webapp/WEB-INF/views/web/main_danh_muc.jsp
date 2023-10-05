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
	<h1>${AllProductsByID.size() }</h1>
	<main role="main" class="pb-3">
		<div class="bracum">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ol class="ol-non">
							<li><a href="./">Trang chủ</a></li>
							<li><a
								href="?page=category&id=<?php echo $resultLMadm['ma_dm']; ?>">
									<?php echo $resultLMadm['ten_dm']; ?>
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
							<!-- ảnh đại diện danh mục -->
							<a href="" class="mar-bot-20 dl-block"> <img
								src="<?php echo $resultLMadm['img']; ?>"
								alt="<?php echo $resultLMadm['ten_dm']; ?>"
								class="img-reponsive">
							</a>
							<!-- kết thúc -->
							<!-- phần conten -->
							<div class="my-content">



								<div class="head-box">
									<div class="title-box">
										<h2>
											<a href="" title="Trang Điểm"> tên danh muc

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
												<a href="<c:url value= "/category/${idCategory }/${loop.index }"></c:url>" class="active">${loop.index }</a>
											</c:if>
											
											<c:if test="${(loop.index) != paginatesInfo.currentPage}">
												<a href="<c:url value= "/category/${idCategory }/${loop.index }"></c:url>">${loop.index }</a>
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
										href="?page=category&id=<?php echo $result[0]['ma_dm']; ?>"
										title="Trang Điểm"> <i class="fa fa-angle-right"
											aria-hidden="true"></i> Trang Điểm
									</a>
										<ul class="ul-non ul-childs">
											<li><a href="?page=classify&id=1" title="Trang Điểm Mặt"
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Trang Điểm Mặt
											</a></li>
											<li><a href="?page=classify&id=10"
												title="Trang Điểm Mắt" class=""> <i
													class="fa fa-caret-right" aria-hidden="true"></i> Trang
													Điểm Mắt
											</a></li>
											<li><a href="?page=classify&id=15"
												title="Trang Điểm Môi" class=""> <i
													class="fa fa-caret-right" aria-hidden="true"></i> Trang
													Điểm Môi
											</a></li>
										</ul></li>
									<li class=" "><a
										href="?page=category&id=<?php echo $result[1]['ma_dm']; ?>"
										title="Chăm Sóc Da"> <i class="fa fa-angle-right"
											aria-hidden="true"></i> Chăm Sóc Da
									</a>
										<ul class="ul-non ul-childs">
											<li><a href="?page=classify&id=26" title="Làm sạch da "
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Làm sạch da
											</a></li>
											<li><a href="?page=classify&id=29" title="Dưỡng da "
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Dưỡng da
											</a></li>
											<li><a href="?page=classify&id=20" title="Mask - Mặt nạ"
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Mask - Mặt nạ
											</a></li>
										</ul></li>
									<li class=" "><a
										href="?page=category&id=<?php echo $result[2]['ma_dm']; ?>"
										title="Chăm Sóc Tóc"> <i class="fa fa-angle-right"
											aria-hidden="true"></i> Chăm Sóc Tóc
									</a>
										<ul class="ul-non ul-childs">
											<li><a href="?page=classify&id=38" title="Dầu gội "
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Dầu gội
											</a></li>
											<li><a href="?page=classify&id=39" title="Dầu xả"
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Dầu xả
											</a></li>
											<li><a href="?page=classify&id=41" title="Kem ủ tóc"
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Kem ủ tóc
											</a></li>
											<li><a href="?page=classify&id=40" title="Dầu gội khô"
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Dầu gội khô
											</a></li>
											<li><a href="?page=classify&id=42"
												title="Serum dưỡng tóc" class=""> <i
													class="fa fa-caret-right" aria-hidden="true"></i> Serum
													dưỡng tóc
											</a></li>
											<li><a href="?page=classify&id=37" title="Set dưỡng tóc"
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Set dưỡng tóc
											</a></li>
										</ul></li>
									<li class=" "><a
										href="?page=category&id=<?php echo $result[3]['ma_dm']; ?>"
										title="Phụ Kiện"> <i class="fa fa-angle-right"
											aria-hidden="true"></i> Phụ Kiện
									</a>
										<ul class="ul-non ul-childs">
											<li><a href="?page=classify&id=43"
												title="Dụng cụ trang điểm" class=""> <i
													class="fa fa-caret-right" aria-hidden="true"></i> Dụng cụ
													trang điểm
											</a></li>
											<li><a href="?page=classify&id=44"
												title="Phụ kiện làm đẹp" class=""> <i
													class="fa fa-caret-right" aria-hidden="true"></i> Phụ kiện
													làm đẹp
											</a></li>
											<li><a href="?page=classify&id=45"
												title="Sơn móng - Rửa móng" class=""> <i
													class="fa fa-caret-right" aria-hidden="true"></i> Sơn móng
													- Rửa móng
											</a></li>
										</ul></li>
									<li class=" "><a
										href="?page=category&id=<?php echo $result[4]['ma_dm']; ?>"
										title="Nước Hoa"> <i class="fa fa-angle-right"
											aria-hidden="true"></i> Nước Hoa
									</a>
										<ul class="ul-non ul-childs">
											<li><a href="?page=classify&id=47" title="Nước hoa nữ "
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Nước hoa nữ
											</a></li>
											<li><a href="?page=classify&id=48" title="Nước hoa nam"
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Nước hoa nam
											</a></li>
											<li><a href="?page=classify&id=49" title="Xịt thơm body"
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Xịt thơm body
											</a></li>
										</ul></li>
									<li class=" "><a
										href="?page=category&id=<?php echo $result[5]['ma_dm']; ?>"
										title="Chăm Sóc Toàn Thân"> <i class="fa fa-angle-right"
											aria-hidden="true"></i> Chăm Sóc Toàn Thân
									</a>
										<ul class="ul-non ul-childs">
											<li><a href="?page=classify&id=51" title="Sữa tắm"
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Sữa tắm
											</a></li>
											<li><a href="?page=classify&id=52"
												title="Kem dưỡng toàn  thân - Body Cream" class=""> <i
													class="fa fa-caret-right" aria-hidden="true"></i> Kem dưỡng
													toàn thân - Body Cream
											</a></li>
											<li><a href="?page=classify&id=53" title="Dưỡng da tay"
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Dưỡng da tay
											</a></li>
											<li><a href="?page=classify&id=54"
												title="Tẩy tế bào chết" class=""> <i
													class="fa fa-caret-right" aria-hidden="true"></i> Tẩy tế
													bào chết
											</a></li>
											<li><a href="?page=classify&id=55" title="Tẩy lông"
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Tẩy lông
											</a></li>
											<li><a href="?page=classify&id=56" title="Khử mùi"
												class=""> <i class="fa fa-caret-right"
													aria-hidden="true"></i> Khử mùi
											</a></li>
											<li><a href="?page=classify&id=57"
												title="Giảm sẹo – Giảm thâm – Giảm nám" class=""> <i
													class="fa fa-caret-right" aria-hidden="true"></i> Giảm sẹo
													– Giảm thâm – Giảm nám
											</a></li>
											<li><a href="?page=classify&id=58"
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
								<?php while ($resultSpNew = mysqli_fetch_assoc($querySpNew)) {
                                 $ma_SP = $resultSpNew['ma_sp'];
                                include('ajax/kiemtraKM.php');
                                if ($queryKM->num_rows == 0) {
                                ?>
								<!-- bắt đầu -->
								<div class="box-shas">
									<div class="box-imgs">
										<a href="?page=product&id=<?php echo $resultSpNew['ma_sp'] ?>"
											title=""> <img
											alt="Viên Serum Dưỡng Tóc Menas Hair Serum"
											class="img-reponsive lazy" data-id="lazy-t0"
											src="<?php echo $resultSpNew['img'] ?>" style="">
										</a>
									</div>
									<div class="content-shas">
										<a href="?page=product&id=<?php echo $resultSpNew['ma_sp'] ?>"
											title="Viên Serum Dưỡng Tóc Menas Hair Serum"> <?php echo $resultSpNew['ten_sp'] ?>
										</a> <span>
											<?php echo number_format($resultSpNew['gia_ban'], 0, ',', ','); ?>₫
										</span>
									</div>
									<div class="clr"></div>
								</div>
								<!--kết thúc  -->
								<?php 
                                }else{ 
                                    $resultKM = mysqli_fetch_assoc($queryKM);
                                    $gia_ban = $resultSpNew['gia_ban'];
                                    $gia_sau = $gia_ban*(100-$resultKM['gia_tri_km'])/100;
                                ?>
								<!-- bắt đầu -->
								<div class="box-shas">
									<div class="box-imgs">
										<a href="?page=product&id=<?php echo $resultSpNew['ma_sp'] ?>"
											title=""> <img
											alt="Viên Serum Dưỡng Tóc Menas Hair Serum"
											class="img-reponsive lazy" data-id="lazy-t0"
											src="<?php echo $resultSpNew['img'] ?>" style="">
										</a>
									</div>
									<div class="content-shas">
										<a href="?page=product&id=<?php echo $resultSpNew['ma_sp'] ?>"
											title="Viên Serum Dưỡng Tóc Menas Hair Serum"> <?php echo $resultSpNew['ten_sp'] ?>
										</a> <span>
											<?php echo number_format($gia_sau, 0, ',', ','); ?>₫
										</span>
									</div>
									<div class="clr"></div>
								</div>
								<!--kết thúc  -->
								<?php } } ?>
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