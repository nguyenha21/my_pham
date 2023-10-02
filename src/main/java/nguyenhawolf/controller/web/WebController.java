package nguyenhawolf.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import nguyenhawolf.service.web.FooterServiceImpl;
import nguyenhawolf.service.web.HeaderServiceImpl;
import nguyenhawolf.service.web.HomeServiceImpl;
@Controller(value = "webController")
public class WebController {
	@Autowired
	public HomeServiceImpl homeServiceImpl ;
	@Autowired
	public HeaderServiceImpl headerServiceImpl;
	@Autowired
	public FooterServiceImpl footerServiceImpl;
	
	
	@RequestMapping(value = { "/", "/trang-chu" })
	
		public ModelAndView homePage() {
			ModelAndView mav = new ModelAndView("web/main_trang_chu");
			mav.addObject("sanphamrandom",homeServiceImpl.GetSanphamRandom());
			mav.addObject("sanphambanchay",homeServiceImpl.GetSanphamBanchay());
			mav.addObject("thongtinweb",headerServiceImpl.GetThongtinweb());
			mav.addObject("imgshow",homeServiceImpl.GetImgshowSlide());
			mav.addObject("thuonghieu",homeServiceImpl.GetThuonghieu());
			mav.addObject("hethongcuahang",footerServiceImpl.GetHethongcuahang());
			return mav;
		}
	

}
