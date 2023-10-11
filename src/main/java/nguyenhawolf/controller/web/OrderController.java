package nguyenhawolf.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import nguyenhawolf.entity.DonHang;
import nguyenhawolf.service.web.HomeServiceImpl;
@Controller(value = "orderController")
public class OrderController extends BaseController{
	@Autowired
	public HomeServiceImpl homeServiceImpl ;
	
	
	
	@RequestMapping(value = { "/order"},method = RequestMethod.POST)
	
		public ModelAndView dathang(@ModelAttribute("donhang") DonHang donHang) {
		
		_mavShare.addObject("mdh", donHang.getHoVaTen());
			_mavShare.setViewName("web/main_dat_hang_ok");
			
			return _mavShare;
		}
	

}
