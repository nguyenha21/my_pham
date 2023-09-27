<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">

    <script type="text/javascript" src="public/js/js.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

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
                                                            <li>
                                    <a href="" onclick="">
                                        <b>
                                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                                            190 Chùa Bộc, Đống Đa, Hà Nội                                        </b>
                                        -  0988 777 555                                        <div class="map-mages img-luna"></div>
                                    </a>
                                </li>
                                                            <li>
                                    <a href="" onclick="">
                                        <b>
                                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                                            502 Phan Đình Phùng, Vũ Thư, Thái Bình                                        </b>
                                        -  0945 543 342                                        <div class="map-mages img-luna"></div>
                                    </a>
                                </li>
                                                            <li>
                                    <a href="" onclick="">
                                        <b>
                                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                                            45 Hai Bà Trưng, Long Vũ, Điện Biên                                        </b>
                                        -  0888 444 333                                        <div class="map-mages img-luna"></div>
                                    </a>
                                </li>
                                                            <li>
                                    <a href="" onclick="">
                                        <b>
                                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                                            854 Lê Lợi, Phan Bá Vành, Hà Nội                                        </b>
                                        -  0789 543 123                                        <div class="map-mages img-luna"></div>
                                    </a>
                                </li>
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
                                <input type="email" class="form-control ip-send" id="sendmail" placeholder="Vui lòng nhập email..." name="search2">
                                <button type="button" id="email_km" class="btn btn-send" onclick="">GỬI</button>
                            </form>
                            <!-- <span id="result"></span> -->
                        </div>
                        <script type="text/javascript">
                            $('#email_km').click(function(e){
                                var email = $('#sendmail').val();
                                $.post('model/sendmail.php', {'email':email}, function(data) { 
        // $("#result").html(data); 
        alert(data);
        
    });
                            });
                        </script>
                        <span class="non-back"> LIÊN KẾT</span>
                        <ul class="ul-non ul-sofooter">
                            <li><a href="https://www.facebook.com/beautyshop" target="_blank" class="a-fb"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="https://www.instagram.com/beautyshop" target="_blank" class="a-it"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                            <li><a href="https://www.pinterest.com/beautyshop" target="_blank" class="a-pn"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
                            <li><a href="https://plus.google.com/beautyshop" target="_blank" class="a-gg"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                        </ul>
                        <div class="clr"></div>
                        <div class="mar-top-10">
                            <a href="" title="DMCA.com Protection Status" class="dmca-badge" target="_blank"> 
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
                            <li><a>Tel:  0999 966 699 - Email: info@beautyshop.vn</a></li>
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
                    <a href="./admin" style="color: #555"><p class="p-naio">Edit by N̴͈̩̤͉̊̀͗̃̏͌̀̄̕͝g̸̠͌́̌͒͑̋͐̑̒̊͑̓͗ǘ̵͖̹̰̣̹̦̀̅͒͌̀̚ỳ̷͖͔̘̗̣̞͙́͛͐̑͠ễ̵̡̥͙̦̳̝̝̟̰̟̓̓̐͘ͅn̶͕̫͔̙̠̩͇̩̂́̊̈́͊̃́̃͗͘͜͝͠ͅ H̸̡̨̢͓̼̥̻̙̖̜͉̫͙̒̈̀̃̀̚à̶̳̮̱͐̓̀͐͑͋͆̔̃̑͠</p></a>
                </div>
                
            </div>
            
        </div>
    </div>
</footer>
</body>
<!-- <script type="text/javascript">
    $('.owl-carousel').owlCarousel({
        loop:true,
        margin:10,
        nav:false,
        responsive:{
            0:{
                items:2
            },
            600:{
                items:3
            },
            1000:{
                items:6
            }
        }
    })


   
</script> -->
</html>