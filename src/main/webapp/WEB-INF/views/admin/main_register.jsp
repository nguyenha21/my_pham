<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value='/template/admin/assets/images/favicon.png'/>">
    <title></title>
    <!-- Custom CSS -->
    <link href="<c:url value='/template/admin/dist/css/style.min.css'/>" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
<!-- Sử dụng JavaScript để hiển thị thông báo từ server -->
    <script type="text/javascript">
        var message = "${message}";
        if (message) {
            alert(message);
        }
    </script>
    <div class="main-wrapper">
        <!-- ============================================================== -->
        <!-- Preloader - style you can find in spinners.css -->
        <!-- ============================================================== -->
        <div class="preloader">
            <div class="lds-ripple">
                <div class="lds-pos"></div>
                <div class="lds-pos"></div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- Preloader - style you can find in spinners.css -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Login box.scss -->
        <!-- ============================================================== -->
        <div class="auth-wrapper d-flex no-block justify-content-center align-items-center" style="background:url(assets/images/big/auth-bg.jpg) no-repeat center center;">
            <div class="auth-box">
                <div>
                    <div class="logo">
                        <span class="db"><img src="<c:url value='/template/admin/assets/images/logo-icon.png'/>" alt="logo" /></span>
                        <h5 class="font-medium m-b-20">Đăng ký quản trị </h5>
                    </div>
                    <!-- Form -->
                    <div class="row">
                        <div class="col-12">
                        	<form:form method="POST" action="admin-register" modelAttribute="admin-register" class="form-horizontal m-t-20">
                            	<div class="form-group row ">
                                    <div class="col-12 ">
                                    	<form:input path="hoVaTen" class="form-control form-control-lg" type="text" required=" " placeholder="Họ và tên"/>
                                    </div>
                                </div>
                                
                               
                                <div class="form-group row">
                                    <div class="col-12 ">
                                    	<form:input path="email" class="form-control form-control-lg" type="email" required=" " placeholder="Email"/>
                                    </div>
                                </div>
                                <div class="form-group row ">
                                    <div class="col-12 ">
                                    	<form:input path="tenTk" class="form-control form-control-lg" type="text" required=" " placeholder="Tên tài khoản"/>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-12 ">
                                    	<form:input path="mk" class="form-control form-control-lg" type="password" required=" " placeholder="Mật khẩu"/>
                                    </div>
                                </div>
                               <%--  <div class="form-group row">
                                    <div class="col-12 ">
                                    	<form:input path="email" class="form-control form-control-lg" type="email" required=" " placeholder="Email"/>
                                        <input class="form-control form-control-lg" type="password" required=" " placeholder="Xác nhận mật ">
                                    </div>
                                </div> --%>
                                <div class="form-group row">
                                    <div class="col-md-12 ">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="customCheck1">
                                            <label class="custom-control-label" for="customCheck1">Tôi đồng ý với tất  <a href="javascript:void(0)">các điều khoản</a></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group text-center ">
                                    <div class="col-xs-12 p-b-20 ">
                                        <button class="btn btn-block btn-lg btn-info " id="register" type="submit">Đăng ký</button>
                                    </div>
                                </div>
                                <div class="col-sm-12 text-center" style="color: red;">
                                <c:if test="${status }">${status }</c:if>
                                </div>
                                <div class="form-group m-b-0 m-t-10 ">
                                    <div class="col-sm-12 text-center ">
                                        Bạn đã có tài khoản? <a href="<c:url value= '/admin'></c:url>" class="text-info m-l-5 "><b>Đăng nhập</b></a>
                                    </div>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- Login box.scss -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper scss in scafholding.scss -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper scss in scafholding.scss -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Right Sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Right Sidebar -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- All Required js -->
    <!-- ============================================================== -->
    <script src="<c:url value='/template/admin/assets/libs/jquery/dist/jquery.min.js'/>"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="<c:url value='/template/admin/assets/libs/popper.js/dist/umd/popper.min.js'/>"></script>
    <script src="<c:url value='/template/admin/assets/libs/bootstrap/dist/js/bootstrap.min.js'/>"></script>
    <!-- ============================================================== -->
    <!-- This page plugin js -->
    <!-- ============================================================== -->
    <script>
    $('[data-toggle="tooltip "]').tooltip();
    $(".preloader ").fadeOut();
 
    </script>

</body>

</html>