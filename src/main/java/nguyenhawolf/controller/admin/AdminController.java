package nguyenhawolf.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller(value = "adminController")
public class AdminController {
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	
		public ModelAndView homePage() {
			ModelAndView mav = new ModelAndView("admin/trang_chu");
			return mav;
		}
	

}
