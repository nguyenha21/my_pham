<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value='/template/web/public/css/shopcard.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/template/web/public/css/category.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/template/web/public/css/easyzoom.css'/>"
	rel="stylesheet" type="text/css">
<script src="<c:url value='/template/web/public/js/easyzoom.js'/>"></script>
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
</head>
<body>

	<main role="main" class="pb-3">
		<div class="bracum">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ol class="ol-non">
							<li><a href='<c:url value="/" ></c:url>'>Trang chủ</a></li>
							
							<li><a
								href="<c:forEach var="chitietsanpham" items="${chitietsanpham }">
										<c:url value= "/classify/${chitietsanpham.ma_Pl }"></c:url>
									</c:forEach>">
									<c:forEach var="chitietsanpham" items="${chitietsanpham }">
										${chitietsanpham.tenLoaiSp }
									</c:forEach>
							</a></li>
							<li><a
								href="<c:forEach var="chitietsanpham" items="${chitietsanpham }">
										<c:url value= "/product/${chitietsanpham.ma_Sp }"></c:url>
									</c:forEach>">
									<c:forEach var="chitietsanpham" items="${chitietsanpham }">
										${chitietsanpham.ten_Sp }
									</c:forEach>
							</a></li>
						</ol>
					</div>
				</div>

			</div>
		</div>

			<div class="container">
				<div class="row">
					<div class="col-lg-9">
						<div class="box-product-detail">
							<div class="row">
								<div class="col-lg-6">
									<div class="mar-bot-20">
										<div class="box-img-detail">
											<div class="config-alige">
												<div
													class="easyzoom easyzoom--overlay easyzoom--with-thumbnails is-ready">
													<a
														href="<c:forEach var="chitietsanpham" items="${chitietsanpham }">
														        <c:url value='/template/${chitietsanpham.img }'/>
														    </c:forEach>">
														<img
														src="<c:forEach var="chitietsanpham" items="${chitietsanpham }">
														        <c:url value='/template/${chitietsanpham.img }'/>
														    </c:forEach>"
														width="300" height="300" alt="" class="">
													</a>
												</div>
											</div>
										</div>
										<div class="box-thumnail-detail">
											<ul class="thumbnails ">
												<li><a
													href="<c:forEach var="chitietsanpham" items="${chitietsanpham }">
														        <c:url value='/template/${chitietsanpham.img }'/>
														    </c:forEach>"
													data-standard="<c:forEach var="chitietsanpham" items="${chitietsanpham }">
														        <c:url value='/template/${chitietsanpham.img }'/>
														    </c:forEach>">
														<img
														src="<c:forEach var="chitietsanpham" items="${chitietsanpham }">
														        <c:url value='/template/${chitietsanpham.img }'/>
														    </c:forEach>"
														alt="">
												</a></li>
												<c:forEach var="imgspbs" items="${imgspbs }">
												<li>
													<a href="<c:url value='/template/${imgspbs.img }'/>"
													data-standard="<c:url value='/template/${imgspbs.img }'/>"> <img
														src="<c:url value='/template/${imgspbs.img }'/>" alt="">
													</a>
												</li>
												</c:forEach>
												

												<!-- <div class="clr"></div> -->

											</ul>


										</div>



										<script type="text/javascript">
                                var $easyzoom = $('.is-ready').easyZoom();
                                var api = $easyzoom.data('easyZoom');

                                $('.thumbnails').on('click', 'a', function(event) {
                                    event.preventDefault();
                                    api.swap($(this).data('standard'), $(this).attr('href'));
                                });
                            </script>
									</div>
								</div>

								<div class="col-lg-6">
									<div>
										<h1 class="title-Product">
											<c:forEach var="chitietsanpham" items="${chitietsanpham }">
										        ${chitietsanpham.ten_Sp }
										    </c:forEach>
										</h1>

										<div class="box-price">
											<div class="price-drop">
												<span> <c:forEach var="chitietsanpham"
														items="${chitietsanpham }">
														<fmt:formatNumber value="${chitietsanpham.gia_Ban}"
															type="currency" currencySymbol="₫" />
													</c:forEach>
												</span> <span class="issale hide"> <c:forEach
														var="chitietsanpham" items="${chitietsanpham }">
														<fmt:formatNumber value="${chitietsanpham.gia_Thi_Truong}"
															type="currency" currencySymbol="₫" />
													</c:forEach>
												</span> <span class="persale hide ">- <?php echo number_format((float)20, 0, '.', '') ?>%
												</span>
											</div>
											<div class="price-vince">
												<p>

													Giá thị trường: <span> <c:forEach
															var="chitietsanpham" items="${chitietsanpham }">
															<fmt:formatNumber
																value="${chitietsanpham.gia_Thi_Truong}" type="currency"
																currencySymbol="₫" />
														</c:forEach>
													</span> - Tiết kiệm: <span> ₫ </span> (<span>- % </span>)
												</p>
											</div>
											<div class="hanc">
												<p>
													Thương hiệu:
													<c:forEach var="chitietsanpham" items="${chitietsanpham }">
														${chitietsanpham.tenThuongHieu}
													</c:forEach>
												</p>
											</div>
										</div>

										<div class="box-note ">
											<c:forEach var="chitietsanpham" items="${chitietsanpham }">
														${chitietsanpham.khaiQuat}
													</c:forEach>
										</div>
										<div class="card-box">
											<div class="inner-load">
												<div class="box-add">
													
													<div class="bst">
														<button type="button" class="btn-bts btn-atc " id="themvaogiohang" data-id="<c:forEach var="chitietsanpham" items="${chitietsanpham }">${chitietsanpham.ma_Sp }</c:forEach>"
															>
															<i class="fa fa-shopping-cart"></i> Thêm giỏ hàng
														</button>
														<button type="button" class="btn-bts btn-hea"
															id="<c:forEach var="chitietsanpham" items="${chitietsanpham }">
														        ${chitietsanpham.ma_Sp }
														    </c:forEach>">
															<!-- onclick="load_like(<?php echo $resultProductDetail['ma_sp'] ?>)" -->
															<i class="fa fa-heart-o heart_new"></i>
														</button>
														<div class="clr"></div>
													</div>
													<div class="clr"></div>
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
						<script type="text/javascript">
                        

$('.btn-hea').click(function(){
    ma_sp = $(".btn-hea").attr("id");
    $.post("ajax/like.php", {'ma_sp': ma_sp}, function(result){
        if (result=='no') {
            $('.btn-hea').css({
                'color':'white',
                'background-color':'#1f601f'
            });
            sl_Like = $("#numberLike").html();
            x = parseInt(sl_Like);
            sl =x+1;
            document.getElementById("numberLike").innerHTML = sl;
        }
        if (result=='yes') {
            $('.btn-hea').css({
                'color':'#555',
                'background-color':'white'
            });
            sl_Like = $("#numberLike").html();
            x = parseInt(sl_Like);
            sl =x-1;
            document.getElementById("numberLike").innerHTML = sl;
        }
        // alert(result);
    });
});
    
</script>
						<!-- box sản phẩm đề xuất -->

						<div class="box-products">
							<div class="head-box">
								<div class="title-box">
									<strong>SẢN PHẨM ĐỀ XUẤT</strong>
								</div>
								<div class="clr"></div>
							</div>
							<div class="body-box">
								<div class="owl-carousel owl-theme">
									<c:forEach var="sanphamdexuat" items="${sanphamdexuat }">
									<div class="item">
										<div class="pd-box ">
											<div class="box-images">
												<a
													href="<c:url value= "/product/${sanphamdexuat.ma_Sp }"></c:url>">
													<img data-src="" alt="" class="img-reponsive owl-lazy "
													src="<c:url value="/template/${sanphamdexuat.img }"></c:url>"
													style="opacity: 1;">
												</a>
												<button type="button"
													data-id="${sanphamdexuat.ma_Sp }"
													class="btn-addlike ">
													<i class="fa fa-cart-plus"></i>
												</button>
												<div class="sale-off hide">
													0%<br>OFF
												</div>
											</div>
											<div class="box-content">
												<h3>
													<a
														href="<c:url value= "/product/${sanphamdexuat.ma_Sp }"></c:url>">
														${sanphamdexuat.ten_Sp }
													</a>
												</h3>
												<div>
													<span class="price-drop"><fmt:formatNumber value="${sanphamdexuat.gia_Ban}" type="currency" currencySymbol="₫" />
													</span> <span class="price "> <fmt:formatNumber value="${sanphamdexuat.gia_Ban}" type="currency" currencySymbol="₫" />
													</span>
												</div>
											</div>
										</div>
									</div>
									
									</c:forEach>
																		

								</div>
							</div>
							<!-- Thông tin sản phẩm -->
							<div class="box-thongtin">
								<c:forEach var="chitietsanpham" items="${chitietsanpham }">
														${chitietsanpham.noiDung}
													</c:forEach>

							</div>
						</div>

						<!-- Sản phẩm cùng loại -->
						<div class="box-products">
							<div class="head-box">
								<div class="title-box">
									<strong>SẢN PHẨM CÙNG LOẠI</strong>
								</div>
								<div class="clr"></div>
							</div>
							<div class="body-box">
								<div class="owl-carousel owl-theme">
									<c:forEach var="sanphamcungloai" items="${sanphamcungloai }">
										<div class="item">
											<div class="pd-box ">
												<div class="box-images">
													<a
														href="<c:url value= "/product/${sanphamcungloai.ma_Sp }"></c:url>">
														<img data-src="" alt="" class="img-reponsive owl-lazy "
														src="<c:url value="/template/${sanphamcungloai.img }"></c:url>"
														style="opacity: 1;">
													</a>
													<button type="button"
															data-id="${sanphamcungloai.ma_Sp }"
														class="btn-addlike ">
														<i class="fa fa-cart-plus"></i>
													</button>
													<div class="sale-off hide">
														0%<br>OFF
													</div>
												</div>
												<div class="box-content">
													<h3>
														<a
															href="<c:url value= "/product/${sanphamcungloai.ma_Sp }"></c:url>">
															${sanphamcungloai.ten_Sp } </a>
													</h3>
													<div>
														<span class="price-drop"> <fmt:formatNumber
																value="${sanphamcungloai.gia_Ban}" type="currency"
																currencySymbol="₫" />
														</span> <span class="price "> <fmt:formatNumber
																value="${sanphamcungloai.gia_Thi_Truong}"
																type="currency" currencySymbol="₫" />
														</span>
													</div>
												</div>
											</div>
										</div>

									</c:forEach>


								</div>

							</div>
						</div>
						<!-- face comment -->
						<div class="fb-comments"
							data-href="http://nguyenha.com/du_an_my_pham/?page=product&id=<?php echo $ma_sp; ?>"
							data-mobile="auto" data-numposts="2" data-lazy="false"
							data-width="100%"></div>







					</div>

					<!-- bên phải -->
					<div class="col-lg-3">
						<!-- 1111 -->
						<div class="box-left">
							<div class="title-left">
								<strong>-- CHẤT LƯỢNG CHO HOT GIRL --</strong>
							</div>
							<div class="content-left pad-8-15">
								<div class="box-shas rig-limit">
									<img alt="abc" class="img-reponsive lazy"
										src="<c:url value='/template/img/chinh-sach-04.png'/>"
										style="">
									<div class="content-shas">
										<strong>mỹ phẩm 1000% chính hãng </strong>
										<p>Chất lượng sản phẩm là sự tin cậy của khách hàng</p>
									</div>
									<div class="clr"></div>
								</div>
								<div class="box-shas rig-limit">
									<img alt="abc" class="img-reponsive lazy"
										src="<c:url value='/template/img/chinh-sach-05.png'/>"
										style="">
									<div class="content-shas">
										<strong> LUÔN TÍCH ĐIỂM </strong>
										<p>Đơn hàng từ 100M=1 điểm, 10 điểm nhận voucher 1k</p>
									</div>
									<div class="clr"></div>
								</div>
								<div class="box-shas rig-limit">
									<img alt="abc" class="img-reponsive lazy"
										src="<c:url value='/template/img/chinh-sach-06.png'/>"
										style="">
									<div class="content-shas">
										<strong>MIỄN PHÍ GIAO HÀNG </strong>
										<p>Đơn hàng trên 200M nội thành Hà Nội</p>
									</div>
									<div class="clr"></div>
								</div>
								<div class="box-shas rig-limit">
									<img alt="abc" class="img-reponsive lazy"
										src="<c:url value='/template/img/chinh-sach-07.png'/>"
										style="">
									<div class="content-shas">
										<strong>TRI ÂN KHÁCH HÀNG</strong>
										<p>Với các chương trình khuyến mãi, các sự kiện &amp; quà
											tặng đặc biệt vô cùng hấp dẫn</p>
									</div>
									<div class="clr"></div>
								</div>
							</div>
						</div>


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
						<!-- 3333333333 -->

						<div class="box-left">
							<div class="title-left">
								<strong>SẢN PHẨM MỚI VỀ</strong>
							</div>
							<div class="content-left">
								<c:forEach var="sanphammoive" items="${sanphammoive }" end = "5">
									<div class="box-shas">
										<div class="box-imgs">
											<a
												href="<c:url value= "/product/${sanphammoive.ma_Sp }"></c:url>"
												title=""> <img alt="" class="img-reponsive lazy"
												data-id="lazy-t0"
												src="<c:url value="/template/${sanphammoive.img }"></c:url>">
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
								</c:forEach>


							</div>
						</div>
						<!-- kết thúc 33333333333 -->

					</div>









				</div>
			</div>
	</main>
</body>
</html>