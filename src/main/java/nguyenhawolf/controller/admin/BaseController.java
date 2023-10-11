package nguyenhawolf.controller.admin;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;
@Controller(value = "adminController")
public class BaseController {
	
	
	public ModelAndView _mavShare= new ModelAndView();
	@PostConstruct
	public ModelAndView Init() {
		return _mavShare;
	}
	

}
