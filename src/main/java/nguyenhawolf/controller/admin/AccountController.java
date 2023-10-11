package nguyenhawolf.controller.admin;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import nguyenhawolf.dto.CategorysDto;
import nguyenhawolf.entity.TaiKhoan;
import nguyenhawolf.service.admin.AccountServiceImpl;
import nguyenhawolf.service.web.HomeServiceImpl;

@Controller(value = "accountController")
public class AccountController extends BaseController {
	@Autowired
	public AccountServiceImpl accountServiceImpl;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView homePage(HttpSession session) {
//		session.setAttribute("account", null);
		session.removeAttribute("account");
		String account = (String) session.getAttribute("account");
		if (account == null || account.isEmpty()) {
			_mavShare.setViewName("admin/main_login");
		} else {
			_mavShare.addObject("user", session.getAttribute("account"));
			_mavShare.setViewName("admin/trang_chu");
		}

		return _mavShare;
	}

	@RequestMapping(value = "/admin", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam("username") String username, @RequestParam("password") String password,
			HttpSession session) {
		String hashPass = BCrypt.hashpw(password, BCrypt.gensalt(10));
		List<TaiKhoan> tk = accountServiceImpl.CheckTK(username, hashPass);
		if (tk == null || tk.isEmpty()) {
			_mavShare.setViewName("admin/main_login");
			_mavShare.addObject("status", null);
		} else {
			session.setAttribute("account", username);
			_mavShare.setViewName("admin/trang_chu");
			_mavShare.addObject("user", username);
		}

		return _mavShare;
		
	}

	

}
