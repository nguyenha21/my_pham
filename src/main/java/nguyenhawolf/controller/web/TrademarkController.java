package nguyenhawolf.controller.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import nguyenhawolf.dto.PaginatesDto;
import nguyenhawolf.dto.TrademarksDto;
import nguyenhawolf.service.web.HomeServiceImpl;
import nguyenhawolf.service.web.PaginateServiceImpl;
import nguyenhawolf.service.web.TrademarkServiceImpl;

@Controller(value = "trademarkController")
public class TrademarkController extends BaseController{
	@Autowired
	public TrademarkServiceImpl trademarkServiceImpl;
	@Autowired
	public PaginateServiceImpl paginateServiceImpl;
	@Autowired
	public HomeServiceImpl homeServiceImpl;
	private int totalProductPage = 20;

	@RequestMapping(value ="/trademark/{ma_th}")
	public ModelAndView Category(@PathVariable String ma_th) {
		    // Lấy dữ liệu từ trademarkServiceImpl.GetAllProductsByID
		    List<TrademarksDto> products = trademarkServiceImpl.GetAllProductsByID(Integer.parseInt(ma_th));
		    if (products == null || products.isEmpty()) {
		        // Nếu dữ liệu rỗng, thực hiện chuyển hướng đến trang chủ 
		    	_mavShare.setViewName("redirect:/trang-chu"); 
		    } else {
		    	_mavShare.addObject("thuonghieu",trademarkServiceImpl.GetThuonghieuByID(Integer.parseInt(ma_th)));
		    	_mavShare.addObject("sanphammoive",homeServiceImpl.GetSanphamMoive());
				int totalData = trademarkServiceImpl.GetAllProductsByID(Integer.parseInt(ma_th)).size();
				PaginatesDto paginatesInfo = paginateServiceImpl.GetInfoPaginates(totalData, totalProductPage, 1);
				_mavShare.addObject("idTrademark",ma_th);
				_mavShare.addObject("paginatesInfo",paginatesInfo);
				_mavShare.addObject("productPaginate",trademarkServiceImpl.GetDataProductsByPaginate(Integer.parseInt(ma_th),paginatesInfo.getStart(), totalProductPage));
				_mavShare.setViewName("web/main_thuong_hieu");
				_mavShare.addObject("thuonghieu", trademarkServiceImpl.GetThuonghieuByID(Integer.parseInt(ma_th)));
		    }
		    
		    return _mavShare;
		
		
		
	}
	
	@RequestMapping(value ="/trademark/{ma_th}/{currentPage}")
	public ModelAndView Category(@PathVariable String ma_th,@PathVariable String currentPage) {
		List<TrademarksDto> products = trademarkServiceImpl.GetAllProductsByID(Integer.parseInt(ma_th));
	    if (products == null || products.isEmpty()) {	
	    	_mavShare.setViewName("redirect:/trang-chu");
	    } else {
		_mavShare.setViewName("web/main_thuong_hieu");
		_mavShare.addObject("thuonghieu",trademarkServiceImpl.GetThuonghieuByID(Integer.parseInt(ma_th)));
		_mavShare.addObject("sanphammoive",homeServiceImpl.GetSanphamMoive());
		int totalData = trademarkServiceImpl.GetAllProductsByID(Integer.parseInt(ma_th)).size();
		PaginatesDto paginatesInfo = paginateServiceImpl.GetInfoPaginates(totalData, totalProductPage, Integer.parseInt(currentPage));
		_mavShare.addObject("idTrademark",ma_th);
		_mavShare.addObject("paginatesInfo",paginatesInfo);
		_mavShare.addObject("productPaginate",trademarkServiceImpl.GetDataProductsByPaginate(Integer.parseInt(ma_th),paginatesInfo.getStart(), totalProductPage));
		
	    }
		return _mavShare;
	}

}
