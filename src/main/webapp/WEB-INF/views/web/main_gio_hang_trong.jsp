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
							<li><a href="<c:url value="/gio-hang" ></c:url>">Giỏ hàng</a></li>
						</ol>
					</div>
				</div>
				
			</div>
		</div>
		<div class="">
			<div class="container" id="load-card">
				<div class="row">
					<div class="col-lg-12">
						<div class="box-none-card">
							<img src="<c:url value='/template/img/mascot@2x.png'/>" class="img-reponsive">
							<p>Không có sản phẩm nào trong giỏ hàng của bạn.</p>
							<a href="<c:url value="/" ></c:url>">Tiếp tục mua sắm</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="bk-opps">
			<div class="lds-roller">
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
			</div>
		</div>
		
	</main>
</body>
</html>