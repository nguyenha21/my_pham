package nguyenhawolf.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import nguyenhawolf.service.web.HomeServiceImpl;
@Controller(value = "webController")
public class WebController {
	@Autowired
	public HomeServiceImpl homeServiceImpl ;
	@RequestMapping(value = { "/", "/trang-chu" })
	
		public ModelAndView homePage() {
			ModelAndView mav = new ModelAndView("web/main_trang_chu");
			mav.addObject("sanphamrandom",homeServiceImpl.GetSanphamRandom());
			mav.addObject("thongtinweb",homeServiceImpl.GetThongtinweb());
			mav.addObject("imgshow",homeServiceImpl.GetImgshowSlide());
			return mav;
		}
	

}
