package nguyenhawolf.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import nguyenhawolf.dto.PaginatesDto;
import nguyenhawolf.service.web.CategoryServiceImpl;
import nguyenhawolf.service.web.PaginateServiceImpl;

@Controller(value = "categoryController")
public class CategoryController extends BaseController{
	@Autowired
	public CategoryServiceImpl categoryServiceImpl;
	@Autowired
	public PaginateServiceImpl paginateServiceImpl;
	
	private int totalProductPage = 20;
	
	@RequestMapping(value ={"/category/", "/category/{ma_dm}"})
	public ModelAndView Category(@PathVariable String ma_dm) {
		_mavShare.setViewName("web/main_danh_muc");
		
		int totalData = categoryServiceImpl.GetAllProductsByID(Integer.parseInt(ma_dm)).size();
		PaginatesDto paginatesInfo = paginateServiceImpl.GetInfoPaginates(totalData, totalProductPage, 1);
		_mavShare.addObject("idCategory",ma_dm);
		_mavShare.addObject("paginatesInfo",paginatesInfo);
		_mavShare.addObject("productPaginate",categoryServiceImpl.GetDataProductsByPaginate(Integer.parseInt(ma_dm),paginatesInfo.getStart(), totalProductPage));
		
		
		return _mavShare;
	}
	
	@RequestMapping(value ="/category/{ma_dm}/{currentPage}")
	public ModelAndView Category(@PathVariable String ma_dm,@PathVariable String currentPage) {
		_mavShare.setViewName("web/main_danh_muc");
		int totalData = categoryServiceImpl.GetAllProductsByID(Integer.parseInt(ma_dm)).size();
		PaginatesDto paginatesInfo = paginateServiceImpl.GetInfoPaginates(totalData, totalProductPage, Integer.parseInt(currentPage));
		_mavShare.addObject("idCategory",ma_dm);
		_mavShare.addObject("paginatesInfo",paginatesInfo);
		_mavShare.addObject("productPaginate",categoryServiceImpl.GetDataProductsByPaginate(Integer.parseInt(ma_dm),paginatesInfo.getStart(), totalProductPage));
		
		
		return _mavShare;
	}

}
