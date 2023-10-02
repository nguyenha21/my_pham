<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta charset="utf-8">

</head>
<body>
	<footer class="border-top footer text-muted">
		<div class="footer-first">
			<div class="container">
				<div class="row">
					<div class="col-lg-5 col-md-12">
						<div class="box-info">
							<span>HỆ THỐNG CỬA HÀNG</span>
							<hr>
							<ul class="ul-non ul-info">
							<c:forEach var="hethongcuahang" items="${hethongcuahang }">
								<li><a href="" onclick=""> <b> <i
											class="fa fa-map-marker" aria-hidden="true"></i> ${hethongcuahang.diaChi }
									</b> - ${hethongcuahang.sdt }
										<div class="map-mages img-luna"></div>
								</a></li>
							</c:forEach>
							
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-6">
						<div class="box-info">
							<span> VỀ CHÚNG TÔI</span>
							<hr>
							<ul class="ul-non ul-infos">
								<li><a href="">Hệ thống cửa hàng</a></li>
								<li><a href="">Giới thiệu Beautygarden</a></li>
								<li><a href="">Liên kết</a></li>
								<li><a href="">Bảo mật thông tin</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-6">
						<div class="box-info">
							<span> HỖ TRỢ</span>
							<hr>
							<ul class="ul-non ul-infos">
								<li><a href="">Giải đáp thắc mắc</a></li>
								<li><a href="">Hướng dẫn mua hàng</a></li>
								<li><a href="">Thanh toán &amp; Vận chuyển</a></li>
								<li><a href="">Chính sách đổi trả hàng</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="box-info">
							<span> NHẬN THÔNG TIN KHUYẾN MÃI</span>
							<hr>
							<div>
								<form class="example form-inline">
									<input type="email" class="form-control ip-send" id="sendmail"
										placeholder="Vui lòng nhập email..." name="search2">
									<button type="button" id="email_km" class="btn btn-send"
										onclick="">GỬI</button>
								</form>
								<!-- <span id="result"></span> -->
							</div>
							<script type="text/javascript">
								$('#email_km').click(function(e) {
									var email = $('#sendmail').val();
									$.post('model/sendmail.php', {
										'email' : email
									}, function(data) {
										// $("#result").html(data); 
										alert(data);

									});
								});
							</script>
							<span class="non-back"> LIÊN KẾT</span>
							<ul class="ul-non ul-sofooter">
								<li><a href="https://www.facebook.com/beautyshop"
									target="_blank" class="a-fb"><i class="fa fa-facebook"
										aria-hidden="true"></i></a></li>
								<li><a href="https://www.instagram.com/beautyshop"
									target="_blank" class="a-it"><i class="fa fa-instagram"
										aria-hidden="true"></i></a></li>
								<li><a href="https://www.pinterest.com/beautyshop"
									target="_blank" class="a-pn"><i class="fa fa-pinterest-p"
										aria-hidden="true"></i></a></li>
								<li><a href="https://plus.google.com/beautyshop"
									target="_blank" class="a-gg"><i class="fa fa-google-plus"
										aria-hidden="true"></i></a></li>
							</ul>
							<div class="clr"></div>
							<div class="mar-top-10">
								<a href="" title="DMCA.com Protection Status" class="dmca-badge"
									target="_blank">
									<div class="img-luna img-dmca"></div>
								</a>
								<script src=""></script>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-5 col-md-6 ">
						<div class="box-info">
							<span> WEBSITE THUỘC QUYỀN</span>
							<hr>
							<ul class="ul-non ul-infos">
								<li>﻿CÔNG TY CỔ PHẦN BEAUTYSHOP</li>
								<li>ĐKKD số: 1111111111</li>
								<li>Do Sở KH&amp;ĐT Tp. HN Cấp ngày 21/12/2112</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="box-info">
							<span> TRỤ SỞ CHÍNH</span>
							<hr>
							<ul class="ul-non ul-infos">
								<li><a>Địa chỉ: Tp.HN</a></li>
								<li><a>Tel: 0999 966 699 - Email: info@beautyshop.vn</a></li>
								<li><a>Website: www.beautyshop.vn</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3 col-md-12">
						<div class="box-info">
							<a href="" target="_blank">
								<div class="img-luna img-ct"></div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-second">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<a href="./admin" style="color: #555"><p class="p-naio">Edit
								by
								N̴͈̩̤͉̊̀͗̃̏͌̀̄̕͝g̸̠͌́̌͒͑̋͐̑̒̊͑̓͗ǘ̵͖̹̰̣̹̦̀̅͒͌̀̚ỳ̷͖͔̘̗̣̞͙́͛͐̑͠ễ̵̡̥͙̦̳̝̝̟̰̟̓̓̐͘ͅn̶͕̫͔̙̠̩͇̩̂́̊̈́͊̃́̃͗͘͜͝͠ͅ
								H̸̡̨̢͓̼̥̻̙̖̜͉̫͙̒̈̀̃̀̚à̶̳̮̱͐̓̀͐͑͋͆̔̃̑͠</p></a>
					</div>

				</div>

			</div>
		</div>
	</footer>
</body>

</html>