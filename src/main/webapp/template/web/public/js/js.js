//js like
	// function load_like(query){
 //        get1 = getCookie('customer');

 //        // var data = document.cookie;
 //        // alert(get1);
 //        if (get1 == 0) {
 //         alert('Bạn phải đăng nhập để thêm vào yêu thích!');
 //        } else {
 //            get = getCookie('like');
 //            alert(get);
 //            for (var i = 0; i < 50; i++) {
 //                getT = get.split(',', i);
 //                if (getT===get) {
 //                    break;
 //                }
 //            }
 //            // alert(getT);
 //            if (get ==='') {
 //                var cartArray = new Array();
 //            } else {
 //                var cartArray = new Array(get);
 //            }
 //            var text1 = query.toString();
 //            kt = getT.includes(text1);
 //            if (kt==true) {
 //                alert('Sản phẩm đã có trong yêu thích!');
 //            } else {
 //                cartArray.push(query);
 //                var text = cartArray.toString();
 //                kq = Array.isArray(getT);
 //                leng = getT.length;
 //                // alert(leng);
 //                document.getElementById("numberLike").innerHTML = leng+1;
 //                setCookie('sl_like',leng+1,15);
 //                setCookie('like',text,15);
 //            	alert('Sản phẩm đã được thêm vào yêu thích!');
 //            }
 //        }
 //    }
// js giỏ hàng
/*function load_cart(query){
    get = getCookie('gio_hang');
    for (var i = 0; i < 50; i++) {
        getT = get.split(',', i);
        if (getT==get) {
            break;
        }
    }
    if (get ==='') {
        var cartArray = new Array();
    } else {
        var cartArray = new Array(get);
    }
    var text1 = query.toString();
    kt = getT.includes(text1);
    if (kt==true) {
    	alert('Sản phẩm đã có trong giỏ hàng!');
    } else {
    	cartArray.push(query);
    	var text = cartArray.toString();
	    kq = Array.isArray(getT);
	    leng = getT.length;
	    document.getElementById("result0").innerHTML = leng+1;
	    document.getElementById("result1").innerHTML = leng+1;
	    document.getElementById("result2").innerHTML = leng+1;
	    setCookie('sl',leng+1,15);
	    setCookie('gio_hang',text,15);
    }
}*/

// 
window.onscroll = function() {myFunction()};

var header = document.getElementById("myHeader");
// var sticky = header.offsetTop;

function myFunction() {
  if (window.pageYOffset > sticky) {
    header.classList.add("scrollshead");
  } else {
    header.classList.remove("scrollshead");
  }
}

// 
function addshow(){
	$(document).ready(function(){
		$('.btn-mn-mb').click(function(event){
			$('.show').addClass('addshow');
		});
		
	});
}
function closeshow(){
	$(document).ready(function(){
		$('.btn-remove').click(function(event){
			$('.show').removeClass('addshow');
		});
	});
}

// Kiểm tra form đăng ký tài khoản
function kiemtraFormdangky(){
	var hoten = document.getElementById('txtName').value;
	var sdt = document.getElementById('txtPhone').value;
	var adress = document.getElementById('txtAdress').value;
	var email = document.getElementById('txtEmail').value;
	var user = document.getElementById('user').value;
	var pass1 = document.getElementById('txtPass1').value;
	// check_hoten = /^[a-zA-Z_ -]{5,30}$/;
	check_sdt = /((09|03|07|08|05)+([0-9]{8})\b)/g;
	check_email = /[A-Z0-9._%+-]+@[A-Z0-9-]+.+.[A-Z]{2,4}/igm;
	// cehck email /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/
	check_user = /^[a-z0-9_-]{3,16}$/;
	check_pass1 =/^[a-z0-9_-]{5,18}$/;

	if( hoten =="" ){
			alert("Họ tên không để trống!");
			// document.getElementById('val-txtName').innerHTML = "<p style='color:red;'>Họ tên không để trống!</p>" ;
			return false;

	}
	// else{
	// 	if(check_hoten.test(hoten)){
	// 		// document.getElementById('val-txtName').innerHTML = "<p style='color:red;'>Hợp lệ!</p>" ;
	// 	}else{
	// 		alert("Họ tên không hợp lệ!(Viết không dấu, dài > 5 ký tự, không chứa ký tự đặc biệt,...)");
	// 		// document.getElementById('val-txtName').innerHTML = "<p style='color:red;'>Họ tên viết không dấu!</p>";
	// 		return false;
	// 	}
	// }


	if (sdt=="") {
		alert('Số điện thoại không được để trống!');
		// document.getElementById('val-txtPhone').innerHTML = "<p style='color:red;'>Số điện thoại không để trống!</p>" ;
		return false;
	}else{
		if(check_sdt.test(sdt)){
			// document.getElementById('val-txtPhone').innerHTML = "<p style='color:red;'>Hợp lệ!</p>" ;
		}else{
			alert('Số điện thoại không hợp lệ!')
			// document.getElementById('val-txtPhone').innerHTML = "<p style='color:red;'>Số điện thoại không hợp lệ!</p>" ;
			return false;
		}
	}
	if (adress=="") {
		alert('Địa chỉ không để trống!');
		// document.getElementById('val-txtAdress').innerHTML = "<p style='color:red;'>Địa chỉ không để trống!</p>" ;
		return false;
	}else{
		if(check_sdt.test(adress)){
			// document.getElementById('val-txtAdress').innerHTML = "<p style='color:red;'>Hợp lệ!</p>" ;
		}else{
			// document.getElementById('val-txtAdress').innerHTML = "<p style='color:red;'></p>" ;
		}
	}


	if( email =="" ){
		alert('Email không để trống!');
		// document.getElementById('val-txtEmail').innerHTML = "<p style='color:red;'>Email không để trống!</p>" ;
		return false;
	}else{
		if(check_email.test(email)){
			// document.getElementById('val-txtEmail').innerHTML = "<p style='color:red;'>Hợp lệ!</p>" ;
		}else{
			alert('Email không hợp lệ!');
			// document.getElementById('val-txtEmail').innerHTML = "<p style='color:red;'>Email không hợp lệ!</p>" ;
			return false;
		}
	}


	if( user =="" ){
		alert('Tên tài khoản không để trống!');
		// document.getElementById('val-txtUser').innerHTML = "<p style='color:red;'>Tên tài khoản không để trống!</p>" ;
		return false;
	}else{
		if (check_user.test(user)) {
			// document.getElementById('val-txtUser').innerHTML = "<p style='color:red;'>Hợp lệ!</p>" ;
				
		}else{
			alert('Tên tài khoản không hợp lệ!');
			// document.getElementById('val-txtUser').innerHTML = "<p style='color:red;'>Tên tài khoản không hợp lệ!</p>";
			return false;
		}
	}
	if( pass1 =="" ){
		alert('Mật khẩu không để trống!');
		// document.getElementById('val-txtPass1').innerHTML = "<p style='color:red;'>Mật khẩu không để trống!</p>" ;
		return false;
	}else{
		if (check_pass1.test(pass1)) {
			// document.getElementById('val-txtPass1').innerHTML = "<p style='color:red;'>Hợp lệ!</p>" ;
			return true;
		}else{
			alert('Mật khẩu không hợp lệ (mk từ 5 ký tự)')
			// document.getElementById('val-txtPass1').innerHTML = "<p style='color:red;'>Mật khẩu không hợp lệ!</p>";
			return false;
		}
	}
	

	


	
	return true;


}

// Kiểm tra form đăng nhập
function kiemtraFormdangnhap(){
	var user = document.getElementById('txtUser').value;
	var pass1 = document.getElementById('txtPass1').value;
	check_user = /^[a-z0-9_-]{3,16}$/;
	check_pass1 =/^[a-z0-9_-]{5,18}$/;
	if( user =="" ){
		alert('Tên tài khoản không để trống!');
		// document.getElementById('val-txtUser').innerHTML = "<p style='color:red;'>Tên tài khoản không để trống!</p>" ;
		return false;
	}else{
		if (check_user.test(user)) {
			// document.getElementById('val-txtUser').innerHTML = "<p style='color:red;'>Hợp lệ!</p>" ;
				
		}else{
			alert('Tên tài khoản không hợp lệ!');
			// document.getElementById('val-txtUser').innerHTML = "<p style='color:red;'>Tên tài khoản không hợp lệ!</p>";
			return false;
		}
	}
	if( pass1 =="" ){
		alert('Mật khẩu không để trống!');
		// document.getElementById('val-txtPass1').innerHTML = "<p style='color:red;'>Mật khẩu không để trống!</p>" ;
		return false;
	}else{
		if (check_pass1.test(pass1)) {
			// document.getElementById('val-txtPass1').innerHTML = "<p style='color:red;'>Hợp lệ!</p>" ;
			return true;
		}else{
			alert('Mật khẩu không hợp lệ (mk từ 5 ký tự)')
			// document.getElementById('val-txtPass1').innerHTML = "<p style='color:red;'>Mật khẩu không hợp lệ!</p>";
			return false;
		}
	}

}
// Kết thúc

//Kiểm tra form đặt hàng
function kiemtraFormdathang(){
	var hoten = document.getElementById('txtName').value;
	var sdt = document.getElementById('txtPhone').value;
	var adress = document.getElementById('txtAdress').value;
	var email = document.getElementById('txtEmail').value;
	// check_hoten = /^[a-zA-Z_ -]{5,30}$/;
	check_sdt = /((09|03|07|08|05)+([0-9]{8})\b)/g;
	check_email = /[A-Z0-9._%+-]+@[A-Z0-9-]+.+.[A-Z]{2,4}/igm;
	// cehck email /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/

	if( hoten =="" ){
			alert("Họ tên không để trống!");
			// document.getElementById('val-txtName').innerHTML = "<p style='color:red;'>Họ tên không để trống!</p>" ;
			return false;

	}
	// else{
	// 	if(check_hoten.test(hoten)){
	// 		// document.getElementById('val-txtName').innerHTML = "<p style='color:red;'>Hợp lệ!</p>" ;
	// 	}else{
	// 		alert("Họ tên không hợp lệ!(Viết không dấu, dài > 5 ký tự, không chứa ký tự đặc biệt,...)");
	// 		// document.getElementById('val-txtName').innerHTML = "<p style='color:red;'>Họ tên viết không dấu!</p>";
	// 		return false;
	// 	}
	// }


	if (sdt=="") {
		alert('Số điện thoại không được để trống!');
		// document.getElementById('val-txtPhone').innerHTML = "<p style='color:red;'>Số điện thoại không để trống!</p>" ;
		return false;
	}else{
		if(check_sdt.test(sdt)){
			// document.getElementById('val-txtPhone').innerHTML = "<p style='color:red;'>Hợp lệ!</p>" ;
		}else{
			alert('Số điện thoại không hợp lệ!')
			// document.getElementById('val-txtPhone').innerHTML = "<p style='color:red;'>Số điện thoại không hợp lệ!</p>" ;
			return false;
		}
	}
	if (adress=="") {
		alert('Địa chỉ không để trống!');
		// document.getElementById('val-txtAdress').innerHTML = "<p style='color:red;'>Địa chỉ không để trống!</p>" ;
		return false;
	}else{
		if(check_sdt.test(adress)){
			// document.getElementById('val-txtAdress').innerHTML = "<p style='color:red;'>Hợp lệ!</p>" ;
		}else{
			// document.getElementById('val-txtAdress').innerHTML = "<p style='color:red;'></p>" ;
		}
	}


	if( email =="" ){
		alert('Email không để trống!');
		// document.getElementById('val-txtEmail').innerHTML = "<p style='color:red;'>Email không để trống!</p>" ;
		return false;
	}else{
		if(check_email.test(email)){
			// document.getElementById('val-txtEmail').innerHTML = "<p style='color:red;'>Hợp lệ!</p>" ;
			return true;
		}else{
			alert('Email không hợp lệ!');
			// document.getElementById('val-txtEmail').innerHTML = "<p style='color:red;'>Email không hợp lệ!</p>" ;
			return false;
		}
	}
}

