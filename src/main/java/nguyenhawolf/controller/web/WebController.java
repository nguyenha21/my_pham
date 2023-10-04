package nguyenhawolf.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import nguyenhawolf.service.web.HomeServiceImpl;
@Controller(value = "webController")
public class WebController extends BaseController{
	@Autowired
	public HomeServiceImpl homeServiceImpl ;
	
	
	
	@RequestMapping(value = { "/", "/trang-chu" })
	
		public ModelAndView homePage() {
			_mavShare.addObject("sanphammoive",homeServiceImpl.GetSanphamMoive());
			_mavShare.addObject("sanphambanchay",homeServiceImpl.GetSanphamBanchay());
			int ma_dm = 1;
			_mavShare.addObject("sanphamtrangdiem",homeServiceImpl.GetSanphamDanhmuc(ma_dm));
			int ma_dm2 = 2;
			_mavShare.addObject("sanphamchamsocda",homeServiceImpl.GetSanphamDanhmuc(ma_dm2));
			
			_mavShare.addObject("imgshow",homeServiceImpl.GetImgshowSlide());
			_mavShare.addObject("thuonghieu",homeServiceImpl.GetThuonghieu());
			_mavShare.setViewName("web/main_trang_chu");
			return _mavShare;
		}
	

}
