<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Beauty shop mỹ phẩm chính hãng</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="public/css/site.min.css">
    <link rel="stylesheet" type="text/css" href="public/css/style.css">
    <script type="text/javascript" src="public/js/js.js"></script>
    <link rel="stylesheet" type="text/css" href="public/css/bootstrap.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="public/owlcarousel/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="public/owlcarousel/assets/owl.theme.default.min.css">
    <script type="text/javascript" src="public/js/jquery-3.5.1.min.js"></script>
    <script src="public/owlcarousel/owl.carousel.min.js"></script>

</head>
<body>
<h1>${sanpham.size() }</h1>
    <main role="main" class="pb-3">
        <!-- slideshow -->
        <div class="container">
          <div class="row">
             <div class="col-lg-12">
                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                                            <div class="carousel-item active">
                          <img src="images/products/24-07-2020/6.png" class="d-block w-100" alt="...">
                      </div>
                                              <div class="carousel-item ">
                          <img src="images/products/24-07-2020/2.png" class="d-block w-100" alt="...">
                      </div>
                                              <div class="carousel-item ">
                          <img src="images/products/24-07-2020/5.jpg" class="d-block w-100" alt="...">
                      </div>
                                              <div class="carousel-item ">
                          <img src="images/products/24-07-2020/4.png" class="d-block w-100" alt="...">
                      </div>
                                              <div class="carousel-item ">
                          <img src="images/products/24-07-2020/3.jpg" class="d-block w-100" alt="...">
                      </div>
                                              <div class="carousel-item ">
                          <img src="images/products/24-07-2020/logo.jpg" class="d-block w-100" alt="...">
                      </div>
                                          <!-- <div class="carousel-item">
                      <img src="img/2.png" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                      <img src="img/3.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                      <img src="img/4.png" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                      <img src="img/5.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                      <img src="img/6.png" class="d-block w-100" alt="...">
                  </div> -->
              </div>
              <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>
</div>

<!-- sản phẩm mới về -->
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="box-products">
                <div class="head-box">
                    <div class="title-box">
                        <h2>
                            <a href="">
                                SẢN PHẨM MỚI VỀ
                            </a>
                        </h2>
                    </div>
                    <div class="clr"></div>
                </div>
                <div class="body-box">
                    <div class="owl-carousel owl-theme">
                                                    <div class="item">
                                <div class="pd-box ">
                                    <div class="box-images">
                                        <a href="./?page=product&id=182">
                                            <img data-src="" alt="" class="img-reponsive owl-lazy " src="images/products/20-08-2020/vivid-mint-30102019094855.jpg" style="opacity: 1;">
                                        </a>
                                        <button type="button" onclick="load_cart(182)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">0%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="./?page=product&id=182">Kem Đánh Răng Crest 3D White Vivid Mint Ultra</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">160,000₫</span>
                                            <span class="price ">176,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                    <div class="item">
                                <div class="pd-box ">
                                    <div class="box-images">
                                        <a href="./?page=product&id=181">
                                            <img data-src="" alt="" class="img-reponsive owl-lazy " src="images/products/20-08-2020/Kem-tri-seo-Nga-Klirvin-beauty-garden-1.jpg" style="opacity: 1;">
                                        </a>
                                        <button type="button" onclick="load_cart(181)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">0%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="./?page=product&id=181">Kem Mờ Sẹo Nga</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">25,000₫</span>
                                            <span class="price ">59,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                    <div class="item">
                                <div class="pd-box ">
                                    <div class="box-images">
                                        <a href="./?page=product&id=180">
                                            <img data-src="" alt="" class="img-reponsive owl-lazy " src="images/products/20-08-2020/lan-khu-mui-15042020090757.jpg" style="opacity: 1;">
                                        </a>
                                        <button type="button" onclick="load_cart(180)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">0%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="./?page=product&id=180">Lăn Khử Mùi Sción Pure White Roll On</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">85,000₫</span>
                                            <span class="price ">116,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                    <div class="item">
                                <div class="pd-box ">
                                    <div class="box-images">
                                        <a href="./?page=product&id=179">
                                            <img data-src="" alt="" class="img-reponsive owl-lazy " src="images/products/20-08-2020/kem-tay-long-veet.jpg" style="opacity: 1;">
                                        </a>
                                        <button type="button" onclick="load_cart(179)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">0%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="./?page=product&id=179">Kem Tẩy Lông Veet Silk And Fresh Technology</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">110,000₫</span>
                                            <span class="price ">136,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                    <div class="item">
                                <div class="pd-box ">
                                    <div class="box-images">
                                        <a href="./?page=product&id=178">
                                            <img data-src="" alt="" class="img-reponsive owl-lazy " src="images/products/20-08-2020/tay-da-chet-toan-than-organic-rose-sugar-body-polish-beauty-garden-1.jpg" style="opacity: 1;">
                                        </a>
                                        <button type="button" onclick="load_cart(178)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">0%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="./?page=product&id=178">Tẩy Da Chết Toàn Thân Organic Rose & Sugar - Body </a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">120,000₫</span>
                                            <span class="price ">190,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                    <div class="item">
                                <div class="pd-box ">
                                    <div class="box-images">
                                        <a href="./?page=product&id=177">
                                            <img data-src="" alt="" class="img-reponsive owl-lazy " src="images/products/20-08-2020/avatar-sp-web11-1-recovered-recovered-recovered-recovered-recovered-27022020031100.jpg" style="opacity: 1;">
                                        </a>
                                        <button type="button" onclick="load_cart(177)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">0%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="./?page=product&id=177">Gel Rửa Tay Khô Bath&Body Work</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">270,000₫</span>
                                            <span class="price ">315,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                    <div class="item">
                                <div class="pd-box ">
                                    <div class="box-images">
                                        <a href="./?page=product&id=176">
                                            <img data-src="" alt="" class="img-reponsive owl-lazy " src="images/products/20-08-2020/avatar-sp-web11-1-recovered-11032020043641.jpg" style="opacity: 1;">
                                        </a>
                                        <button type="button" onclick="load_cart(176)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">0%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="./?page=product&id=176">Kem Dưỡng Da Tay Kosé Q10 Hand Cream</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">130,000₫</span>
                                            <span class="price ">146,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                    <div class="item">
                                <div class="pd-box ">
                                    <div class="box-images">
                                        <a href="./?page=product&id=175">
                                            <img data-src="" alt="" class="img-reponsive owl-lazy " src="images/products/20-08-2020/a4-23032019030646.jpg" style="opacity: 1;">
                                        </a>
                                        <button type="button" onclick="load_cart(175)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">0%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="./?page=product&id=175">Kem Dưỡng Trắng Body Alpha Arbutin 2In1 Cream</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">80,000₫</span>
                                            <span class="price ">91,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                    <div class="item">
                                <div class="pd-box ">
                                    <div class="box-images">
                                        <a href="./?page=product&id=174">
                                            <img data-src="" alt="" class="img-reponsive owl-lazy " src="images/products/20-08-2020/sua-tam-18022020113800.jpg" style="opacity: 1;">
                                        </a>
                                        <button type="button" onclick="load_cart(174)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">0%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="./?page=product&id=174">Sữa Tắm Hatomugi Moisturizing & Washing</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">145,000₫</span>
                                            <span class="price ">224,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                    <div class="item">
                                <div class="pd-box ">
                                    <div class="box-images">
                                        <a href="./?page=product&id=173">
                                            <img data-src="" alt="" class="img-reponsive owl-lazy " src="images/products/20-08-2020/a6-06042019095818.jpg" style="opacity: 1;">
                                        </a>
                                        <button type="button" onclick="load_cart(173)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">0%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="./?page=product&id=173">Sữa Tắm Trắng Da Gluta Milky</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">130,000₫</span>
                                            <span class="price ">148,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                    <div class="item">
                                <div class="pd-box ">
                                    <div class="box-images">
                                        <a href="./?page=product&id=172">
                                            <img data-src="" alt="" class="img-reponsive owl-lazy " src="images/products/20-08-2020/a1-26012019011540.jpg" style="opacity: 1;">
                                        </a>
                                        <button type="button" onclick="load_cart(172)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">0%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="./?page=product&id=172">Dưỡng Thể Trắng Da Vaseline Healthy White</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">190,000₫</span>
                                            <span class="price ">209,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                    <div class="item">
                                <div class="pd-box ">
                                    <div class="box-images">
                                        <a href="./?page=product&id=171">
                                            <img data-src="" alt="" class="img-reponsive owl-lazy " src="images/products/20-08-2020/Avatar-SP-Web(1)(1)-Recovered-Recovered-Recovered(4).jpg" style="opacity: 1;">
                                        </a>
                                        <button type="button" onclick="load_cart(171)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">0%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="./?page=product&id=171">Sữa Dưỡng Thể Vaseline Concentrated 30X</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">165,000₫</span>
                                            <span class="price ">209,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        
<!-- <script type="text/javascript">
function load_data(query){
    get = getCookie('gio_hang');
    if (get ==='') {
        var cartArray = new Array();
    } else {
        var cartArray = new Array(get);
    }

    cartArray.push(query);
    var text = cartArray.toString();
    for (var i = 0; i < 50; i++) {
        getT = get.split(',', i);
        dem = i;
        if (getT==get) {
            break;
        }
    }
    document.getElementById("result").innerHTML = dem+1;
    sol=dem+1;
    setCookie('sl',sol,30);
    setCookie('gio_hang',text,30);
}
function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires="+ d.toUTCString();
    document.cookie = cname + "=" + cvalue + "; " + expires;
}


function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i = 0; i <ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length,c.length);
        }
    }
    return "";
}


function checkCookie() {
    var username=getCookie("username");
    if (username!="") {
        alert("Welcome again " + username);
    } else {
        username = prompt("Please enter your name:", "");
        if (username != "" && username != null) {
            setCookie("username", username, 365);
        }
    }
}   
</script> -->




</div>
</div>

</div>
</div>

</div>
</div>

<!-- Top  bán chạy -->
<div class="back-gray pad-30">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="box-products-category">
                    <div class="head-box-category">
                        <a href="" class="left-head">
                            <img src="./img/sh11-128.png" alt="type icon">
                            <h2>
                                TOP BÁN CHẠY
                            </h2>
                            <i class="fa fa-angle-right" aria-hidden="true"></i>
                        </a>
                            <!-- <button class="btn-ct hidden-md" onclick="" data-id="topsale">
                                <i class="fa fa-bars" aria-hidden="true"></i>
                            </button> -->
                            <div class="clr"></div>
                        </div>
                        <div class="body-box-category">
                                                     <!-- Bắt đàu sản phẩm -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=81">
                                            <img alt="" class="img-reponsive lazy " src="images/products/19-08-2020/xit-khoang-evoluderm.jpg" style="">
                                        </a>
                                        <button type="button" onclick="load_cart(81)" class="btn-addlike "><i class="fa fa-cart-plus"></i></button>
                                        <div class="sale-off hide">37%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=81">Xịt Khoáng Evoluderm Atomiseur Eau Pure Spray</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">85,000₫</span>
                                            <span class="price ">100,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đàu sản phẩm -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=64">
                                            <img alt="" class="img-reponsive lazy " src="images/products/21-07-2020/avatar-sp-web11-1-recovered-recovered-recovered-recovered-recovered-26022020111337.jpg" style="">
                                        </a>
                                        <button type="button" onclick="load_cart(64)" class="btn-addlike "><i class="fa fa-cart-plus"></i></button>
                                        <div class="sale-off hide">37%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=64">Set Trang Điểm Sivanna Colors Peachy Make Up</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">350,000₫</span>
                                            <span class="price ">388,500₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đàu sản phẩm -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=107">
                                            <img alt="" class="img-reponsive lazy " src="images/products/20-08-2020/a00-15032019021423.jpg" style="">
                                        </a>
                                        <button type="button" onclick="load_cart(107)" class="btn-addlike "><i class="fa fa-cart-plus"></i></button>
                                        <div class="sale-off hide">37%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=107">Son Kem Lì Black Rouge Air Fit Velvet Tint</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">115,000₫</span>
                                            <span class="price ">171,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đàu sản phẩm -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=58">
                                            <img alt="" class="img-reponsive lazy " src="images/products/21-07-2020/a6-18032019095720.jpg" style="">
                                        </a>
                                        <button type="button" onclick="load_cart(58)" class="btn-addlike "><i class="fa fa-cart-plus"></i></button>
                                        <div class="sale-off hide">37%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=58">Phấn Nền Siêu Mịn Maybelline Fit Me Skin-Fit</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">210,000₫</span>
                                            <span class="price ">222,300₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đàu sản phẩm -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=66">
                                            <img alt="" class="img-reponsive lazy " src="images/products/21-07-2020/avatar-sp-web11-1-recovered-11032020092514.jpg" style="">
                                        </a>
                                        <button type="button" onclick="load_cart(66)" class="btn-addlike "><i class="fa fa-cart-plus"></i></button>
                                        <div class="sale-off hide">37%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=66">Má Hồng Dạng Kem Canmake Cream Cheek Face Color</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">220,000₫</span>
                                            <span class="price ">255,200₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đàu sản phẩm -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=92">
                                            <img alt="" class="img-reponsive lazy " src="images/products/19-08-2020/a1-25022019112811.jpg" style="">
                                        </a>
                                        <button type="button" onclick="load_cart(92)" class="btn-addlike "><i class="fa fa-cart-plus"></i></button>
                                        <div class="sale-off hide">37%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=92">Kẻ Chân Mày Sợi Maybelline Tatoo Brow Ink Pen</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">210,000₫</span>
                                            <span class="price ">247,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đàu sản phẩm -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=132">
                                            <img alt="" class="img-reponsive lazy " src="images/products/20-08-2020/ava-fb.jpg" style="">
                                        </a>
                                        <button type="button" onclick="load_cart(132)" class="btn-addlike "><i class="fa fa-cart-plus"></i></button>
                                        <div class="sale-off hide">37%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=132">Bộ Dưỡng Trắng Some By Mi Yuja Niacin 30Days</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">320,000₫</span>
                                            <span class="price ">342,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đàu sản phẩm -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=120">
                                            <img alt="" class="img-reponsive lazy " src="images/products/20-08-2020/a1-15052019094347.jpg" style="">
                                        </a>
                                        <button type="button" onclick="load_cart(120)" class="btn-addlike "><i class="fa fa-cart-plus"></i></button>
                                        <div class="sale-off hide">37%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=120">Mặt Nạ SkinFood Mask Wash Off Coconut Sugar</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">195,000₫</span>
                                            <span class="price ">228,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đàu sản phẩm -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=108">
                                            <img alt="" class="img-reponsive lazy " src="images/products/20-08-2020/son-thoi-Mac-Liptensity-Lipstick-Rouge-A-Levres-beauty-garden-1(1).jpg" style="">
                                        </a>
                                        <button type="button" onclick="load_cart(108)" class="btn-addlike "><i class="fa fa-cart-plus"></i></button>
                                        <div class="sale-off hide">37%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=108">Son Mac Liptensity Lipstick Rouge À Lèvres</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">560,000₫</span>
                                            <span class="price ">616,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đàu sản phẩm -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=121">
                                            <img alt="" class="img-reponsive lazy " src="images/products/20-08-2020/s1-02102018030714.jpg" style="">
                                        </a>
                                        <button type="button" onclick="load_cart(121)" class="btn-addlike "><i class="fa fa-cart-plus"></i></button>
                                        <div class="sale-off hide">37%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=121">Mặt Nạ Ngủ Dưỡng Bio-Essence Birds Nest</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">360,000₫</span>
                                            <span class="price ">414,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đàu sản phẩm -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=122">
                                            <img alt="" class="img-reponsive lazy " src="images/products/20-08-2020/mask-ngu-20122019110645.jpg" style="">
                                        </a>
                                        <button type="button" onclick="load_cart(122)" class="btn-addlike "><i class="fa fa-cart-plus"></i></button>
                                        <div class="sale-off hide">37%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=122">Mặt Nạ Ngủ Naruko Tea Tree Shine Control</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">280,000₫</span>
                                            <span class="price ">333,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đàu sản phẩm -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=123">
                                            <img alt="" class="img-reponsive lazy " src="images/products/20-08-2020/mat-na-Pink-Racoony-Hydro-Gel-Eye-Cheek-Patch-a1.jpg" style="">
                                        </a>
                                        <button type="button" onclick="load_cart(123)" class="btn-addlike "><i class="fa fa-cart-plus"></i></button>
                                        <div class="sale-off hide">37%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=123">Mặt Nạ Pink Racoony Hydro Gel Eye & Cheek Patch</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">270,000₫</span>
                                            <span class="price ">307,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                            

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Trang điểm -->
<div class="back-gray pad-30">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="box-products-category">
                    <div class="head-box-category">
                        <a href="" class="left-head">
                            <img alt="Trang Điểm Icon" class="lazy" src="./img/trangdiem.png" style="">
                            <h2>
                                Trang Điểm
                            </h2>
                            <i class="fa fa-angle-right" aria-hidden="true"></i>
                        </a>
                        <div class="clr"></div>
                    </div>
                    <div class="body-box-category">
                                                    <!-- Bắt đầu sp -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=73" title="Tạo Khối Dạng Phấn Too Cool For School ArtClass">
                                            <img src="images/products/19-08-2020/a6-19022019022936.jpg" alt="" class="img-reponsive lazy ">
                                        </a>
                                        <button type="button" onclick="load_cart(73)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">33%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=73">Tạo Khối Dạng Phấn Too Cool For School ArtClass</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">250,000₫</span>
                                            <span class="price ">322,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đầu sp -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=29" title="Kem Nền Kiềm Dầu The Saem Saemmul Perfect Pore">
                                            <img src="images/products/21-07-2020/a0-20042019111305.jpg" alt="" class="img-reponsive lazy ">
                                        </a>
                                        <button type="button" onclick="load_cart(29)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">33%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=29">Kem Nền Kiềm Dầu The Saem Saemmul Perfect Pore</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">85,000₫</span>
                                            <span class="price ">99,450₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đầu sp -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=9" title="Bảng Hiệu Chỉnh Màu Da Essence">
                                            <img src="images/products/21-07-2020/avatar-sp-web11-1-29082019112933.jpg" alt="" class="img-reponsive lazy ">
                                        </a>
                                        <button type="button" onclick="load_cart(9)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">33%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=9">Bảng Hiệu Chỉnh Màu Da Essence</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">110,000₫</span>
                                            <span class="price ">126,500₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đầu sp -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=70" title="Phấn Má + Bắt Sáng Sivanna Colors Glower Cheek">
                                            <img src="images/products/21-07-2020/13243565-10102019100627.jpg" alt="" class="img-reponsive lazy ">
                                        </a>
                                        <button type="button" onclick="load_cart(70)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">33%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=70">Phấn Má + Bắt Sáng Sivanna Colors Glower Cheek</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">150,000₫</span>
                                            <span class="price ">174,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đầu sp -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=59" title="Phấn Phủ MAC Studio Fix Powder Plus Foundation">
                                            <img src="images/products/21-07-2020/phan-phu-22052020092451.jpg" alt="" class="img-reponsive lazy ">
                                        </a>
                                        <button type="button" onclick="load_cart(59)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">33%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=59">Phấn Phủ MAC Studio Fix Powder Plus Foundation</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">720,000₫</span>
                                            <span class="price ">856,800₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đầu sp -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=57" title="Phấn Rôm Gohnson's Baby Powder">
                                            <img src="images/products/21-07-2020/45gr-real-26092019120207.jpg" alt="" class="img-reponsive lazy ">
                                        </a>
                                        <button type="button" onclick="load_cart(57)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">33%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=57">Phấn Rôm Gohnson's Baby Powder</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">15,000₫</span>
                                            <span class="price ">16,900₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đầu sp -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=2" title="Che Khuyết Điểm Tạo Khối NYX Correcting">
                                            <img src="images/products/21-07-2020/kem-tao-khoi-che-khuyet-diem-Nyx-Eyeshadow-Nyx-Conceal-Correct-Contour-Palette-Beauty-garden.jpg" alt="" class="img-reponsive lazy ">
                                        </a>
                                        <button type="button" onclick="load_cart(2)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">33%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=2">Che Khuyết Điểm Tạo Khối NYX Correcting</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">190,000₫</span>
                                            <span class="price ">241,500₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đầu sp -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=15" title="Phấn Nước April Skin Magic Essence">
                                            <img src="images/products/21-07-2020/aprilskin-30102019104456.jpg" alt="" class="img-reponsive lazy ">
                                        </a>
                                        <button type="button" onclick="load_cart(15)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">33%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=15">Phấn Nước April Skin Magic Essence</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">330,000₫</span>
                                            <span class="price ">364,800₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đầu sp -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=44" title="Kem Lót Kiềm Dầu Catrice Poreless Blur Primer">
                                            <img src="images/products/21-07-2020/a1-10012019115801.jpg" alt="" class="img-reponsive lazy ">
                                        </a>
                                        <button type="button" onclick="load_cart(44)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">33%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=44">Kem Lót Kiềm Dầu Catrice Poreless Blur Primer</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">150,000₫</span>
                                            <span class="price ">171,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đầu sp -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=6" title="Kem Che Khuyết Điểm Bắt Sáng E.L.F">
                                            <img src="images/products/21-07-2020/avatar-sp-web11-1-recovered-recovered-recovered-recovered-recovered-recovered-19032020114148.jpg" alt="" class="img-reponsive lazy ">
                                        </a>
                                        <button type="button" onclick="load_cart(6)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">33%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=6">Kem Che Khuyết Điểm Bắt Sáng E.L.F</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">130,000₫</span>
                                            <span class="price ">146,900₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đầu sp -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=33" title="Kem Nền Face It Power Perfection BB SPF 37/PA++">
                                            <img src="images/products/21-07-2020/kem-nen-Face-It-Power-Perfection-BB-Cream-SPF-37-PA-beauty-garden-1.jpg" alt="" class="img-reponsive lazy ">
                                        </a>
                                        <button type="button" onclick="load_cart(33)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">33%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=33">Kem Nền Face It Power Perfection BB SPF 37/PA++</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">350,000₫</span>
                                            <span class="price ">442,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đầu sp -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=38" title="Kem Nền Loreal Paris Infallible Stay Fresh 24h">
                                            <img src="images/products/21-07-2020/a1-29112018105908.jpg" alt="" class="img-reponsive lazy ">
                                        </a>
                                        <button type="button" onclick="load_cart(38)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">33%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=38">Kem Nền Loreal Paris Infallible Stay Fresh 24h</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">250,000₫</span>
                                            <span class="price ">250,800₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                            







                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Chăm sóc da -->
<div class="back-gray pad-30">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="box-products-category">
                    <div class="head-box-category">
                        <a href="" class="left-head">
                            <img alt="Chăm Sóc Da Icon" class="lazy" src="./img/chamsocda.png" style="">
                            <h2>
                                Chăm Sóc Da
                            </h2>
                            <i class="fa fa-angle-right" aria-hidden="true"></i>
                        </a>
                        <div class="clr"></div>
                    </div>
                    <div class="body-box-category">
                                                    <!-- Bắt đầu sp -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=119" title="Mặt Nạ Kiehls Calendula Aloe">
                                            <img src="images/products/20-08-2020/avatar-sp-web11-recovered-recovered-recovered-recovered-recovered-07052020093815.jpg" alt="" class="img-reponsive lazy ">
                                        </a>
                                        <button type="button" onclick="load_cart(119)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">33%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=119">Mặt Nạ Kiehls Calendula Aloe</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">30,000₫</span>
                                            <span class="price ">39,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đầu sp -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=125" title="Sữa Rửa Mặt Innisfree Jeju Volcanic">
                                            <img src="images/products/20-08-2020/forest-for-men-shaving-cleansing-foam-2-200x200-15052020035135.jpg" alt="" class="img-reponsive lazy ">
                                        </a>
                                        <button type="button" onclick="load_cart(125)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">33%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=125">Sữa Rửa Mặt Innisfree Jeju Volcanic</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">180,000₫</span>
                                            <span class="price ">207,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đầu sp -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=123" title="Mặt Nạ Pink Racoony Hydro Gel Eye & Cheek Patch">
                                            <img src="images/products/20-08-2020/mat-na-Pink-Racoony-Hydro-Gel-Eye-Cheek-Patch-a1.jpg" alt="" class="img-reponsive lazy ">
                                        </a>
                                        <button type="button" onclick="load_cart(123)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">33%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=123">Mặt Nạ Pink Racoony Hydro Gel Eye & Cheek Patch</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">270,000₫</span>
                                            <span class="price ">307,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đầu sp -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=143" title="Nước Cân Bằng Hatomugi The Lotion Moisturizing">
                                            <img src="images/products/20-08-2020/avatar-sp-web11-recovered-recovered-recovered-recovered-21042020100344.jpg" alt="" class="img-reponsive lazy ">
                                        </a>
                                        <button type="button" onclick="load_cart(143)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">33%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=143">Nước Cân Bằng Hatomugi The Lotion Moisturizing</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">190,000₫</span>
                                            <span class="price ">224,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đầu sp -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=130" title="Tinh Chất Tái Tạo Da So'Natural Red Peel Tingle">
                                            <img src="images/products/20-08-2020/a1-14052019093821.jpg" alt="" class="img-reponsive lazy ">
                                        </a>
                                        <button type="button" onclick="load_cart(130)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">33%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=130">Tinh Chất Tái Tạo Da So'Natural Red Peel Tingle</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">250,000₫</span>
                                            <span class="price ">310,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đầu sp -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=146" title="Kem Chống Nắng Nature Republic Sun Block Daily">
                                            <img src="images/products/20-08-2020/dang-kem-2-21042020013528.jpg" alt="" class="img-reponsive lazy ">
                                        </a>
                                        <button type="button" onclick="load_cart(146)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">33%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=146">Kem Chống Nắng Nature Republic Sun Block Daily</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">150,000₫</span>
                                            <span class="price ">199,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đầu sp -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=113" title="Mặt Nạ Đất Sét Kiềm Dầu Laikou Black Pearl">
                                            <img src="images/products/20-08-2020/mask-dat-set-18112019041048.jpg" alt="" class="img-reponsive lazy ">
                                        </a>
                                        <button type="button" onclick="load_cart(113)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">33%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=113">Mặt Nạ Đất Sét Kiềm Dầu Laikou Black Pearl</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">50,000₫</span>
                                            <span class="price ">57,500₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đầu sp -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=124" title="Mặt Nạ Hoa Cúc Kiehls Calendula&Aloe 14ml">
                                            <img src="images/products/20-08-2020/a1-03012019112256.jpg" alt="" class="img-reponsive lazy ">
                                        </a>
                                        <button type="button" onclick="load_cart(124)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">33%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=124">Mặt Nạ Hoa Cúc Kiehls Calendula&Aloe 14ml</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">170,000₫</span>
                                            <span class="price ">253,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đầu sp -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=129" title="Tẩy Da Chết Huxley Secret Of Sahara Scrub Mask">
                                            <img src="images/products/20-08-2020/huxley-26112019092015.jpg" alt="" class="img-reponsive lazy ">
                                        </a>
                                        <button type="button" onclick="load_cart(129)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">33%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=129">Tẩy Da Chết Huxley Secret Of Sahara Scrub Mask</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">75,000₫</span>
                                            <span class="price ">124,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đầu sp -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=136" title="Kem Giảm Quầng Thâm Mắt Kumargic">
                                            <img src="images/products/20-08-2020/kem-tri-quang-tham-mat-kumargic-eye-beauty-garden-1 (1).jpg" alt="" class="img-reponsive lazy ">
                                        </a>
                                        <button type="button" onclick="load_cart(136)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">33%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=136">Kem Giảm Quầng Thâm Mắt Kumargic</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">180,000₫</span>
                                            <span class="price ">226,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đầu sp -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=142" title="Bộ Dưỡng Da Innisfree Jeju Orchid Special Kit">
                                            <img src="images/products/20-08-2020/01(12).jpg" alt="" class="img-reponsive lazy ">
                                        </a>
                                        <button type="button" onclick="load_cart(142)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">33%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=142">Bộ Dưỡng Da Innisfree Jeju Orchid Special Kit</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">150,000₫</span>
                                            <span class="price ">165,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                        <!-- Bắt đầu sp -->
                            <div class="col-2-ct">
                                <div class="pd-box pd-box-category">
                                    <div class="box-images">
                                        <a href="?page=product&id=110" title="Mặt Nạ Sủi Bột Su:m 37 White Award Bubble">
                                            <img src="images/products/20-08-2020/mat-na-sum-trang.jpg" alt="" class="img-reponsive lazy ">
                                        </a>
                                        <button type="button" onclick="load_cart(110)" class="btn-addlike ">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                        <div class="sale-off hide">33%<br>OFF</div>
                                    </div>
                                    <div class="box-content">
                                        <h3>
                                            <a href="?page=product&id=110">Mặt Nạ Sủi Bột Su:m 37 White Award Bubble</a>
                                        </h3>
                                        <div>
                                            <span class="price-drop">12,000₫</span>
                                            <span class="price ">14,000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Kết thúc -->
                                                </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- thương hiệu nổi bật -->
<div class="pad-30">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="box-brand">
                    <h2>THƯƠNG HIỆU NỔI BẬT</h2>
                </div>
                <div class="body-box">
                    <div class="owl-carousel owl-theme">
                                                    <div class="item imgth">
                                <img src="images/products/30-07-2020/city-color.png">
                            </div>
                                                    <div class="item imgth">
                                <img src="images/products/30-07-2020/3wc.png">
                            </div>
                                                    <div class="item imgth">
                                <img src="images/products/30-07-2020/w7.png">
                            </div>
                                                    <div class="item imgth">
                                <img src="images/products/30-07-2020/lanopearl.png">
                            </div>
                                                    <div class="item imgth">
                                <img src="images/products/30-07-2020/benton.png">
                            </div>
                                                    <div class="item imgth">
                                <img src="images/products/30-07-2020/kose.png">
                            </div>
                                                    <div class="item imgth">
                                <img src="images/products/30-07-2020/ohui.png">
                            </div>
                                                    <div class="item imgth">
                                <img src="images/products/30-07-2020/Capture.png">
                            </div>
                                                    <div class="item imgth">
                                <img src="images/products/30-07-2020/3ce(1).png">
                            </div>
                                                    <div class="item imgth">
                                <img src="images/products/30-07-2020/la-girl.png">
                            </div>
                                                    <div class="item imgth">
                                <img src="images/products/30-07-2020/etude-house.jpg">
                            </div>
                                                    <div class="item imgth">
                                <img src="images/products/30-07-2020/evoluderm.png">
                            </div>
                                                
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</main>
</body>
<script>
    window.onscroll = function() {myFunction()};

    var header = document.getElementById("myHeader");
    var sticky = header.offsetTop;

    function myFunction() {
      if (window.pageYOffset > sticky) {
        header.classList.add("scrollshead");
    } else {
        header.classList.remove("scrollshead");
    }
}
</script>
<script type="text/javascript">
    $('.owl-carousel').owlCarousel({
        loop:false,
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
</script>
</html>