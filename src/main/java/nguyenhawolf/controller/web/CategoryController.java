package nguyenhawolf.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "categoryController")
public class CategoryController extends BaseController{
	@RequestMapping(value ={"/category/", "/category/{ma_dm}"})
	public ModelAndView Category(@PathVariable String ma_dm) {
		_mavShare.addObject("ma_dm", ma_dm);
		_mavShare.setViewName("web/main_danh_muc");
		return _mavShare;
	}

}
