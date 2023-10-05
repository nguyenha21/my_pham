package nguyenhawolf.controller.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import nguyenhawolf.dto.CategorysDto;
import nguyenhawolf.dto.PaginatesDto;
import nguyenhawolf.service.web.ClassifyServiceImpl;
import nguyenhawolf.service.web.HomeServiceImpl;
import nguyenhawolf.service.web.PaginateServiceImpl;

@Controller(value = "classifyController")
public class ClassifyController extends BaseController{
	@Autowired
	public ClassifyServiceImpl classifyServiceImpl;
	@Autowired
	public PaginateServiceImpl paginateServiceImpl;
	@Autowired
	public HomeServiceImpl homeServiceImpl;
	private int totalProductPage = 20;
	
	@RequestMapping(value ="/classify/{ma_pl}")
	public ModelAndView Category(@PathVariable String ma_pl) {
		List<CategorysDto> products = classifyServiceImpl.GetAllProductsByID(Integer.parseInt(ma_pl));
        if (products == null || products.isEmpty()) {   
            _mavShare.setViewName("redirect:/trang-chu");
        } else {
		_mavShare.setViewName("web/main_phan_loai");
		_mavShare.addObject("phanloai",classifyServiceImpl.GetPhanloaiByID(Integer.parseInt(ma_pl)));
		_mavShare.addObject("sanphammoive",homeServiceImpl.GetSanphamMoive());
		int totalData = classifyServiceImpl.GetAllProductsByID(Integer.parseInt(ma_pl)).size();
		PaginatesDto paginatesInfo = paginateServiceImpl.GetInfoPaginates(totalData, totalProductPage, 1);
		_mavShare.addObject("idClassify",ma_pl);
		_mavShare.addObject("paginatesInfo",paginatesInfo);
		_mavShare.addObject("productPaginate",classifyServiceImpl.GetDataProductsByPaginate(Integer.parseInt(ma_pl),paginatesInfo.getStart(), totalProductPage));
        }
		
		return _mavShare;
	}
	
	@RequestMapping(value ="/classify/{ma_pl}/{currentPage}")
	public ModelAndView Category(@PathVariable String ma_pl,@PathVariable String currentPage) {
		List<CategorysDto> products = classifyServiceImpl.GetAllProductsByID(Integer.parseInt(ma_pl));
        if (products == null || products.isEmpty()) {   
            _mavShare.setViewName("redirect:/trang-chu");
        } else {
		_mavShare.setViewName("web/main_phan_loai");
		_mavShare.addObject("phanloai",classifyServiceImpl.GetPhanloaiByID(Integer.parseInt(ma_pl)));
		_mavShare.addObject("sanphammoive",homeServiceImpl.GetSanphamMoive());
		int totalData = classifyServiceImpl.GetAllProductsByID(Integer.parseInt(ma_pl)).size();
		PaginatesDto paginatesInfo = paginateServiceImpl.GetInfoPaginates(totalData, totalProductPage, Integer.parseInt(currentPage));
		_mavShare.addObject("idClassify",ma_pl);
		_mavShare.addObject("paginatesInfo",paginatesInfo);
		_mavShare.addObject("productPaginate",classifyServiceImpl.GetDataProductsByPaginate(Integer.parseInt(ma_pl),paginatesInfo.getStart(), totalProductPage));
        }
		
		return _mavShare;
	}

}
