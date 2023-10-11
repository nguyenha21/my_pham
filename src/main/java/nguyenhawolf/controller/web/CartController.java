package nguyenhawolf.controller.web;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import nguyenhawolf.dto.CartDto;
import nguyenhawolf.entity.DonHang;
import nguyenhawolf.service.web.CartServiceImpl;

@Controller(value = "cartController")
public class CartController extends BaseController{
	
	@Autowired
	private CartServiceImpl cartService = new CartServiceImpl();
	@RequestMapping(value = "gio-hang")
	public ModelAndView Index(HttpSession session) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
		if(cart == null || cart.isEmpty()) {
			_mavShare.setViewName("web/main_gio_hang_trong");
		}else {
			_mavShare.setViewName("web/main_gio_hang");
		}
		
		return _mavShare;
	}
	@RequestMapping(value = "dat-hang")
	public ModelAndView Dathang(HttpSession session) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
		if(cart == null || cart.isEmpty()) {
			_mavShare.setViewName("web/main_gio_hang_trong");
		}else {
			_mavShare.setViewName("web/main_dat_hang");
		}
		_mavShare.addObject("donhang", new DonHang());
		return _mavShare;
	}
	
	@RequestMapping(value = {"AddCart/{id}","category/AddCart/{id}","classify/AddCart/{id}","product/AddCart/{id}" }, method = RequestMethod.POST)
	@ResponseBody // Đánh dấu phương thức để trả về dữ liệu JSON
	public String AddCart(HttpServletRequest request ,HttpSession session, @PathVariable String id) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
		int intValue = Integer.parseInt(id);
		if(cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartService.AddCart(intValue, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		return String.valueOf(cart.size());
	}
	
	@RequestMapping(value = "EditCart/{id}/{quanty}")
	public String EditCart(HttpServletRequest request ,HttpSession session, @PathVariable long id,@PathVariable int quanty) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
		if(cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartService.EditCart(id, quanty, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		return "redirect:"+request.getHeader("Referer");
//		return "redirect:/gio-hang";
	}
	
	
	@RequestMapping(value = "DeleteCart/{id}")
	public String DeleteCart(HttpServletRequest request ,HttpSession session, @PathVariable long id) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
		if(cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartService.DeleteCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		return "redirect:"+request.getHeader("Referer");
	}
}