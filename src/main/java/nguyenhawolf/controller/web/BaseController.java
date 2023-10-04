package nguyenhawolf.controller.web;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import nguyenhawolf.service.web.FooterServiceImpl;
import nguyenhawolf.service.web.HeaderServiceImpl;

@Controller
public class BaseController {
	
	@Autowired
	 HeaderServiceImpl headerServiceImpl;
	@Autowired
	 FooterServiceImpl footerServiceImpl;
	public ModelAndView _mavShare= new ModelAndView();
	@PostConstruct
	public ModelAndView Init() {
		_mavShare.addObject("thongtinweb",headerServiceImpl.GetThongtinweb());
		_mavShare.addObject("hethongcuahang",footerServiceImpl.GetHethongcuahang());
		return _mavShare;
	}

}
