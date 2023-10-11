<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>Đặt hàng thành công</title>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<style type="text/css">
	#box{
		width: 500px;
		margin: 0 auto;
		/*background: red;*/
	}
	#box .hea {
		width: 100px;
		margin: 0 auto;
		color: #199427;
		font-size: 100px;
	}
	#box p {
		font-size: 15px;
		text-align: center;
	}
	#box span{
		color: red;
	}
</style>
<body>
 <c:forEach items="${mdh}" var="item">
            <li>${item}</li>
        </c:forEach>
	<div id="box">
		<div class="hea" style="width: fit-content">
			<img  alt="" src="data:image/png;base64,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">
		</div>
		<div class="content">
			<p>Cảm ơn bạn đã đặt hàng tại Beauty shop</p>
			<p>Thông tin đơn hàng của bạn đã được gửi về Email, vui lòng kiểm tra Email để xem chi tiết đơn hàng.</p>
			<p>Nhân viên sẽ xác nhận và giao đơn hàng cho bạn sớm nhất!</p>
			<p>Thời gian nhận hàng sẽ từ 3-5 ngày nếu ở khu vực ngoại thành(trừ thứ 7,CN). Riêng khu vực nội thành Hà Nội sẽ được giao hàng trong ngày( Khi đặt hàng trước 9h mỗi ngày, trừ thứ 7,CN).</p>
		</div>
		<hr>
		<div class="note">
			<!-- <p><b>Lưu ý:</b> Thanh toán sau khi nhận hàng!</p> -->
			<p><b>Mọi thắc mắc vui lòng liên hệ: </b><span><?php echo $resultOk['hotline']; ?></span></p>
		</div>
	</div>
</body>
</html>