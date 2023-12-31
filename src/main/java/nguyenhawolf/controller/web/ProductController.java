package nguyenhawolf.controller.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import nguyenhawolf.dto.ProductsDto;
import nguyenhawolf.service.web.HomeServiceImpl;
import nguyenhawolf.service.web.ProductServiceImpl;

@Controller(value = "productController")
public class ProductController extends BaseController {
	@Autowired
	public ProductServiceImpl productServiceImpl;
	@Autowired
	public HomeServiceImpl homeServiceImpl;
	@RequestMapping(value = {"product/{id}"})
	public ModelAndView Category(@PathVariable String id) {
		List<ProductsDto> products = productServiceImpl.GetSanphamChitiet(id.toString());
        if (products == null || products.isEmpty()) {   
            _mavShare.setViewName("redirect:/trang-chu");
        } else {
		_mavShare.addObject("imgspbs",productServiceImpl.GetImgBosung(id.toString()));
		_mavShare.addObject("sanphamdexuat",productServiceImpl.GetSanphamDexuat());
		_mavShare.addObject("sanphammoive",homeServiceImpl.GetSanphamMoive());
		_mavShare.addObject("chitietsanpham",productServiceImpl.GetSanphamChitiet(id.toString()));
		
		String ma_pl = "2";
		_mavShare.addObject("sanphamcungloai",productServiceImpl.GetSanphamCungloai(ma_pl.toString()));
		_mavShare.setViewName("web/main_san_pham");
		}	
       
		return _mavShare;
	}

}
