package nguyenhawolf.controller.web;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	@Autowired
	HttpServletRequest request;
	@Autowired HttpServletResponse response;
	public ModelAndView _mavShare= new ModelAndView();
	@PostConstruct
	public ModelAndView Init() {
		_mavShare.addObject("thongtinweb",headerServiceImpl.GetThongtinweb());
		_mavShare.addObject("hethongcuahang",footerServiceImpl.GetHethongcuahang());
		
		return _mavShare;
	}
	

}
