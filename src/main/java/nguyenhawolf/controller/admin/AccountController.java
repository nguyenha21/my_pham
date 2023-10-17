package nguyenhawolf.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import nguyenhawolf.entity.TKAdmin;
import nguyenhawolf.service.admin.AccountServiceImpl;

@Controller(value = "accountController")
public class AccountController extends BaseController {
	@Autowired
	public AccountServiceImpl accountServiceImpl;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView homePage(HttpSession session, HttpServletResponse response) throws IOException {
		_mavShare.addObject("login", new TKAdmin());
//		session.setAttribute("account", null);
//		session.removeAttribute("account");
		String account = (String) session.getAttribute("account");
		if (account == null || account.isEmpty()) {
			_mavShare.setViewName("admin/main_login");
		} else {
			_mavShare.addObject("user", session.getAttribute("account"));
			response.sendRedirect("admin-trangchu");
		}

		return _mavShare;
	}

	@RequestMapping(value = "/admin", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("login") TKAdmin tkAdmin,HttpSession session,Model model,HttpServletResponse response) throws IOException {
			boolean check = accountServiceImpl.CheckTK(tkAdmin);
			if (check) {
				String message = "ok!";
			    model.addAttribute("message", message);
			    session.setAttribute("account", tkAdmin.getHoVaTen());
//				_mavShare.setViewName("admin/trang_chu");
			    response.sendRedirect("admin-trangchu");
				_mavShare.addObject("user", tkAdmin.getTenTk());
			}else {
				String message = "Tên tài khoản hoặc mật khẩu không đúng!";
			    model.addAttribute("message", message);
			}
			
//			session.setAttribute("account", username);
//			_mavShare.setViewName("admin/trang_chu");
//			_mavShare.addObject("user", username);
//			_mavShare.setViewName("admin/main_login");
			
			
			  // Truyền thông báo cho trang JSP
		    
//			_mavShare.addObject("status", null);
			

		return _mavShare;

	}

	@RequestMapping(value = "/admin-register", method = RequestMethod.GET)
	public ModelAndView register(HttpSession session) {
		String account = (String) session.getAttribute("account");
		if (account == null || account.isEmpty()) {
			_mavShare.setViewName("admin/main_register");
			_mavShare.addObject("admin-register", new TKAdmin());
		} else {

			_mavShare.setViewName("admin/trang_chu");
		}

		return _mavShare;
	}

	@RequestMapping(value = "/admin-register", method = RequestMethod.POST)
	public ModelAndView createAcc(@ModelAttribute("admin-register") TKAdmin tkAdmin,Model model, HttpServletRequest request) {
		List<TKAdmin> checktk = accountServiceImpl.CheckTKTT(tkAdmin.getTenTk().toString());
		if (checktk==null || checktk.isEmpty()) {
			int count = accountServiceImpl.AddTK(tkAdmin);
			if (count >0) {
				 String message = "Đăng ký tài khoản thành công!";
				 model.addAttribute("message", message);
				_mavShare.addObject("status", "Đăng ký tài khoản thành công!");
				_mavShare.setViewName("admin/main_login");
			}else {
				_mavShare.addObject("status", "Đăng ký tài khoản thất bại!");
				_mavShare.setViewName("admin/main_register");
			}
			
		}else {
			_mavShare.setViewName("admin/main_register");
			  // Truyền thông báo cho trang JSP
		    String message = "Tên tài khoản đã tồn tại!";
		    model.addAttribute("message", message);
		}
		
		
		_mavShare.addObject("infor", tkAdmin);
		
		return _mavShare;
	}
	

}
